-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2025 at 02:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gepco_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HT', '2025-03-08 08:47:43', '2025-03-08 08:47:43'),
(2, 'LT', '2025-03-08 08:47:49', '2025-03-08 08:47:49');

-- --------------------------------------------------------

--
-- Table structure for table `circles`
--

CREATE TABLE `circles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `circles`
--

INSERT INTO `circles` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'CITY', 1, '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(2, 'CANTT', 1, '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(3, 'SIALKOT', 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(4, 'GUJRAT', 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(5, 'MIR PUR', 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(6, 'MANDI BAHAUDIN', 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(7, 'NAROWAL', 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Gujranwala Electric Supply Company (GEPCO)', '2025-03-08 07:02:19', '2025-03-08 07:02:19'),
(2, 'Lahore Electric Supply Company (LESCO)', '2025-03-08 07:02:41', '2025-03-08 07:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `circle_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `circle_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'DIVISION-III', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(2, 1, 'CIVIL LINES GRW', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(3, 1, 'DIVISION-I', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(4, 2, 'GUJRANWALA CANTT', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(5, 2, 'WAZIR ABAD', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(6, 1, 'NOWSHERA VIRKAN', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(7, 1, 'KAMOKE', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(8, 2, 'DASKA', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(9, 3, 'PASRUR', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(10, 2, 'HAFIZ ABAD', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(11, 2, 'JALAL PUR BHATT', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(12, 4, 'GUJRAT-1', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(13, 4, 'GUJRAT-2', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(14, 4, 'JALALPUR JATTAN', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(15, 4, 'KHARIAN', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(16, 5, 'Bhimber', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(17, 6, 'PHALIA DIVISION', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(18, 6, 'MANDI BAHAUDIN', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(19, 3, 'CITY-3,SIALKOT', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(20, 3, 'CITY-1,SIALKOT', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(21, 3, 'CITY-2,SIALKOT', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(22, 3, 'CANTT,SIALKOT', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(23, 7, 'ZAFARWAL', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(24, 7, 'NAROWAL', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(25, 7, 'SHKARGHAR', '2025-03-30 04:31:05', '2025-03-30 04:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `earthing_details`
--

CREATE TABLE `earthing_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feeder_name` varchar(191) NOT NULL,
  `location` varchar(191) DEFAULT NULL,
  `latitude` decimal(12,9) NOT NULL,
  `longitude` decimal(12,9) NOT NULL,
  `tage_no` varchar(191) NOT NULL,
  `chemical` varchar(191) NOT NULL,
  `Rod` int(11) NOT NULL,
  `earth_wire` decimal(4,2) NOT NULL,
  `earthing_before` decimal(3,2) DEFAULT NULL,
  `earthing_after` decimal(3,2) NOT NULL,
  `sub_division_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `tower_structure_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `feeders`
--

CREATE TABLE `feeders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grid_station_id` bigint(20) UNSIGNED NOT NULL,
  `circle_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `sub_division_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `feeder_code` varchar(191) DEFAULT NULL,
  `category` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feeders`
--

INSERT INTO `feeders` (`id`, `grid_station_id`, `circle_id`, `division_id`, `sub_division_id`, `name`, `feeder_code`, `category`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'Faisal Colony (U.I)', '21404', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(2, 1, 1, 2, 2, 'Bukhari Colony (ID)', '21415', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(3, 1, 1, 2, 2, 'Allama Iqbal Road (ID)', '21424', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(4, 1, 1, 2, 2, 'Gala Three Star Wala (ID)', '21416', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(5, 1, 1, 2, 2, 'Sanat Road (ID)', '21418', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(6, 1, 1, 2, 2, 'Bajwa Road -2 (ID)', '21420', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(7, 1, 1, 1, 1, 'Industrial (U)', '21409', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(8, 1, 1, 1, 1, 'G-Magnolia Park (U)', NULL, 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(9, 1, 1, 2, 2, 'G.T.Raod-1 (ID)', '21403', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(10, 1, 1, 2, 2, 'Gala Kosar Fan Wala (ID)', '21423', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(11, 1, 1, 2, 3, 'Camping Ground (U.I)', '21410', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(12, 1, 1, 2, 2, 'Sheikupura Road (PD)', '21407', 'Power Loom Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(13, 1, 1, 2, 4, 'Kacha Eminabad Road (ID)', '21419', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(14, 1, 1, 2, 2, 'Jamia Muhammadia (ID)', '21408', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(15, 1, 1, 1, 5, 'Khurshid Alam (ID)', '21421', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(16, 1, 1, 2, 4, 'Kashmir Road.(CD)', '21417', 'Commercial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(17, 1, 1, 2, 2, 'Citizan (B-3)', '21422', 'Independent Industry (B-3)', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(18, 1, 1, 2, 2, 'Furnace (F)', '21412', 'Independent Furnace', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(19, 2, 1, 2, 3, 'Muslim Road (U.I)', '111902', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(20, 2, 1, 2, 3, 'Gala Mehar Noor Wala (U.I)', '111912', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(21, 2, 1, 2, 3, 'Bakhtey Wala (U)', '111904', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(22, 2, 1, 2, 4, 'Siddique Colony (U)', '111916', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(23, 2, 1, 2, 2, 'Industrial East (ID)', '111907', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(24, 2, 1, 2, 2, 'Mian Sansi Road (ID)', '111905', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(25, 2, 1, 2, 2, 'Bajwa Road (ID)', '111906', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(26, 2, 1, 2, 2, 'Highway Colony (ID)', '111908', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(27, 2, 1, 2, 3, 'Baker Mandi (ID)', '111903', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(28, 2, 1, 2, 3, 'Umer-E-Farooq Road (ID)', '111910', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(29, 2, 1, 2, 6, 'Pondanwala (PD)', '111915', 'Power Loom Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(30, 2, 1, 3, 7, 'Noor Bawa (U.I)', '111911', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(31, 2, 1, 2, 4, 'Mujahid Pura (U)', '111913', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(32, 2, 1, 2, 8, 'Sialkoti Gate (CD)', '111909', 'Commercial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(33, 2, 1, 2, 9, 'Tehsil Road (CD)', '111914', 'Commercial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(34, 2, 1, 2, 3, 'Sheranwala Bagh (CD)', '111901', 'Commercial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(35, 3, 1, 2, 4, 'Madni Road (U)', '15723', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(36, 3, 1, 2, 4, 'Takbeer Road (U)', '15735', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(37, 3, 1, 2, 6, 'Master City-I (U)', '15737', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(38, 3, 1, 2, 6, 'Master City-II (U)', '15736', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(39, 3, 2, 4, 10, 'Professar Town (U.I)', '15720', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(40, 3, 1, 2, 11, 'Talwandi Musa Khan (UR)', '15718', 'Domestic Urban / Rural', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(41, 3, 1, 2, 6, 'Tour (UR)', '15732', 'Domestic Urban / Rural', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(42, 3, 1, 2, 11, 'Chak Nizam (UR)', '15709', 'Domestic Urban / Rural', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(43, 3, 2, 4, 10, 'Saleem Colony (PD)', '15710', 'Power Loom Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(44, 3, 1, 2, 4, 'Colony (ID)', '15725', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(45, 3, 1, 2, 4, 'Ferozwala Road (U)', '15716', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(46, 3, 1, 2, 6, 'Chamman Shah (PD)', '15707', 'Power Loom Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(47, 3, 1, 2, 6, 'Wahdat Colony (U.P)', '15704', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(48, 3, 1, 2, 6, 'Chamra Mandi (PD)', '15730', 'Power Loom Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(49, 3, 2, 4, 12, 'Qabrastan Road (PD)', '15712', 'Power Loom Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(50, 3, 2, 4, 12, 'Fareed Town (PD)', '15705', 'Power Loom Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(51, 4, 2, 4, 12, 'Race Cours Road (PD)', '15731', 'Power Loom Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(52, 3, 1, 2, 6, 'Jandiala Bagh Wala (PD)', '15703', 'Power Loom Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(53, 3, 1, 2, 6, 'Upper Chanab (U)', '15734', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(54, 3, 1, 2, 4, 'Canal (U)', '15719', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(55, 4, 2, 4, 10, 'Sialkot Road (U.I)', '15711', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(56, 3, 2, 4, 10, 'Bheko Pur (U)', '15726', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(57, 3, 1, 2, 9, 'Popular Nursery (U.I)', '15727', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(58, 3, 1, 2, 9, 'New Settelite Town (CD)', '15717', 'Commercial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(59, 3, 2, 4, 10, 'Wania ( TD)', '15722', 'Rural / Tubewell Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(60, 3, 1, 2, 9, 'Dena Nager Road (CD)', '15701', 'Commercial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(61, 3, 2, 4, 10, 'Gulzar Colony (U)', '15733', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(62, 3, 2, 4, 12, 'Khokherki (U.I)', '15728', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(63, 5, 1, 3, 7, 'Kashmir Road (ID)', '5033', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(64, 5, 1, 3, 7, 'Shama Colony (U.I)', '5032', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(65, 5, 1, 3, 13, 'Dhullay (ID)', '5036', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(66, 5, 1, 3, 7, 'Model Town (U)', '5011', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(67, 5, 1, 3, 7, 'Ahmad Pura (U.I)', '5035', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(68, 5, 1, 2, 8, 'Mohallah Faisalabad (CD)', '5007', 'Commercial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(69, 5, 1, 3, 7, 'Civic Centre (CD)', '5045', 'Commercial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(70, 5, 1, 2, 8, 'Service Road (CD)', '5008', 'Commercial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(71, 5, 1, 2, 8, 'Dall Bazar (CD)', '5034', 'Commercial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(72, 5, 2, 4, 14, 'Shaheen Abad (U.I)', '5017', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(73, 5, 2, 4, 14, 'Gulashin iqbal (ID)', '5023', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(74, 5, 2, 4, 14, 'Climaxabad (ID)', '5027', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(75, 5, 2, 4, 14, 'Samanabad (ID)', '5044', 'Industrial Dominated', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(76, 5, 1, 3, 7, 'Gondlan Wala Road (U.I)', '5019', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(77, 5, 2, 4, 12, 'Madina Colony (U.I)', '5039', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(78, 5, 2, 4, 12, 'Sui Gas Road (U.I)', '5010', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(79, 5, 2, 4, 12, 'Bilal Town', '5046', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(80, 5, 1, 2, 9, 'Hospital Road (U.I)', '5016', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(81, 5, 1, 2, 9, 'Civil Line (U)', '5012', 'Domestic Urban', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(82, 5, 1, 2, 9, 'D.C.Road (U)', '5018', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(83, 5, 1, 2, 9, 'Session Court Road (U)', '5040', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(84, 5, 1, 3, 7, 'GEPCO  (ID)', '5041', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(85, 5, 1, 3, 7, 'S.I.E-1  (ID)', '5014', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(86, 5, 1, 3, 7, 'Arsal Colony  (ID)', '5013', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(87, 5, 1, 3, 7, 'Pepsi Cola (B-3)', '5028', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(88, 5, 1, 3, 7, 'Boss (B-3)', '5043', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(89, 5, 1, 3, 7, 'Furance-1 (F)', '5021', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(90, 5, 2, 4, 14, 'Bismillah Furnace (F)', '5042', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(91, 5, 2, 4, 14, 'Supra Steel (F)', '5038', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(92, 5, 2, 4, 14, 'Furnace-4 (F)', '5026', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(93, 5, 2, 4, 14, 'Industrial (F)', '5002', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(94, 5, 2, 4, 14, 'LD Steel (F)', '5030', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(95, 5, 2, 4, 14, 'Furnace-3 (F)', '5025', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(96, 6, 1, 1, 15, 'Kot Kazi (UR)', '3206', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(97, 6, 1, 1, 15, 'New Ladhey Wala (UR)', '3236', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(98, 6, 1, 1, 15, 'Mohallah Islamabad (U)', '3238', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(99, 6, 1, 1, 15, 'Alam Chowk (U.P)', '3231', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(100, 6, 1, 3, 13, 'Syed Pak Bazar (U.I)', '3221', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(101, 6, 1, 3, 13, 'Iron Sheet Steel Market (CD)', '3233', 'Commercial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(102, 6, 2, 4, 14, 'Shalimar Town (U)', '3219', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(103, 6, 2, 4, 14, 'Fazaya-I (U)', '3241', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(104, 6, 2, 4, 14, 'Fazaya-II (U)', '3242', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(105, 6, 1, 3, 16, 'Bilal Road (ID)', '3217', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(106, 6, 1, 3, 17, 'Gulshan Abad (U.I)', '3220', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(107, 6, 1, 3, 16, 'Hafizabad Road (PD)', '3204', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(108, 6, 1, 3, 13, 'NewJinnah Road (U.I)', '3227', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(109, 6, 1, 3, 13, 'Islamia College (U)', '3239', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(110, 6, 1, 3, 16, 'Lahore Road (U.I)', '3228', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(111, 6, 1, 3, 17, 'Farooq Gunj (ID)', '3203', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(112, 6, 1, 3, 17, 'Haider Colony (ID)', '3240', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(113, 6, 1, 3, 17, 'Qazafi Road (U.I)', '3230', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(114, 6, 1, 3, 17, 'Rehman Pura (U.I)', '3209', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(115, 6, 2, 4, 14, 'ByPass (ID)', '3202', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(116, 6, 2, 4, 14, 'Raj Kot (ID)', '3235', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(117, 6, 1, 3, 17, 'Baghban Pura (U.I)', '3201', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(118, 6, 1, 3, 13, 'Prince Road (PD)', '3223', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(119, 6, 1, 3, 13, 'Makkah Road (PD)', '3237', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(120, 6, 1, 3, 17, 'Jamia Ashrafia (PD)', '3224', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(121, 6, 1, 3, 13, 'Clock Tower (U.P)', '3212', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(122, 6, 1, 3, 13, 'Muslim Town (PD)', '3207', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(123, 6, 2, 4, 14, 'Gondlanwala (UR)', '3205', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(124, 6, 1, 3, 13, 'KMPSR (B-3)', '3234', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(125, 6, 1, 3, 16, 'Shaheen Ghatta (B-3)', '3232', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(126, 6, 1, 3, 13, 'GMC (F)', '3226', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(127, 6, 1, 3, 13, 'Ishaq Steel (F)', '3222', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(128, 6, 1, 1, 15, 'M.S Steel (F)', '3216', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(129, 6, 2, 4, 14, 'AL -Rauf Steel (F)', '3225', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(130, 6, 2, 4, 14, 'Ghazi (F)', '3218', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(131, 7, 2, 4, 14, 'Forest Colony (ID)', '95406', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(132, 7, 2, 4, 14, 'Aziz Cross Gujranwala (ID)', '95429', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(133, 7, 2, 4, 18, 'A/Iqbal town (U)', '95412', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(134, 7, 2, 4, 18, 'Rahwali (U)', '95403', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(135, 7, 2, 4, 18, 'Al-Mansoora (U)', '95432', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(136, 7, 2, 4, 18, 'DC Ravi (U)', '95402', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(137, 7, 2, 4, 18, 'D.C Neelam (U)', '95409', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(138, 7, 2, 4, 18, 'D.C Rachna (U)', '95410', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(139, 7, 2, 4, 18, 'D.C Kabul (U)', '95411', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(140, 7, 2, 4, 18, 'D.C Colony-4 (U)', '95428', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(141, 7, 2, 4, 18, 'D.C Colony-5 (U)', '95427', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(142, 7, 2, 4, 18, 'Sharif Form (U)', '95401', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(143, 7, 2, 4, 18, 'New Defence (U)', '95416', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(144, 7, 2, 4, 10, 'Gardon town (U)', '95414', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(145, 7, 2, 4, 18, 'MLRS (E)', '95418', 'Exempted Feeder', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(146, 7, 2, 4, 14, 'IncomeTax Colony (ID)', '95404', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(147, 7, 2, 4, 14, 'Mandiala Warriach (UR)', '95405', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(148, 7, 2, 4, 14, 'Medical College (E)', '95423', 'Exempted Feeder', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(149, 7, 2, 4, 14, 'DHQ (E)', '95431', 'Exempted Feeder', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(150, 7, 2, 4, 14, 'Dogranwala (TD)', '95422', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(151, 7, 2, 4, 18, 'Fazal Center (CD)', '95424', 'Commercial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(152, 7, 2, 4, 10, 'New Lohianwala (U.I)', '95426', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(153, 7, 2, 4, 14, 'Sonica (CPI)', '95421', 'Continous Process Industry (CPI)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(154, 7, 2, 4, 14, 'Furnace-2 (F)', '95407', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(155, 7, 2, 4, 14, 'Irfan Steel (F)', '95420', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(156, 7, 2, 4, 14, 'Furnace-8 (F)', '95408', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(157, 7, 2, 4, 14, 'Rawa Steel (F)', '95425', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(158, 7, 2, 4, 14, 'Ashraf Steel (F)', '95415', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(159, 7, 2, 4, 14, 'Khalid Ashraf Steel (F)', '95419', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(160, 7, 2, 4, 14, 'Shahzad Steel (F)', '95417', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(161, 8, 1, 1, 19, 'Jalil Town (ID)', '72509', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(162, 8, 1, 1, 1, 'Mukhtar Colony (ID)', '72510', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(163, 8, 1, 1, 19, 'Kashmir Colony (ID)', '72504', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(164, 8, 1, 1, 1, 'Canal View-I  (U)', '72515', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(165, 8, 1, 1, 5, 'East Wapda Town (U)', '72501', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(166, 8, 1, 1, 5, 'Sahi Town (U)', '72502', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(167, 8, 1, 1, 1, 'Oujla Town (U)', '72516', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(168, 8, 1, 1, 5, 'Kholowala (UR)', '72506', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(169, 8, 1, 1, 5, 'Maraliwala (UR)', '72520', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(170, 8, 1, 1, 19, 'E.P.Z-1', '72517', 'Independent Industry E.P.Z', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(171, 8, 1, 1, 19, 'Sonex', '72518', 'Independent Industry E.P.Z', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(172, 8, 1, 1, 19, 'Ceramic-2 (Ind.Cluster)', '72522', 'Industrial Cluster', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(173, 8, 1, 1, 5, 'Khiali-2  (Ind.Cluster)', '72508', 'Industrial Cluster', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(174, 8, 1, 1, 5, 'Industrial-2 (Ind.Cluster)', '72507', 'Industrial Cluster', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(175, 8, 1, 1, 5, 'SultanEstate (Ind.Cluster)', '72524', 'Industrial Cluster', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(176, 8, 1, 1, 5, 'Nangra Estate (ID)', '72519', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(177, 8, 1, 1, 19, 'Regal China  (Ind.Cluster)', '72503', 'Industrial Cluster', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(178, 8, 1, 1, 19, 'PEPSI (B-3)', '72514', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(179, 8, 1, 1, 1, 'Super Asia (B-3)', '72521', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(180, 8, 1, 1, 5, 'Gujranwala Food Industry (B-3)', '72528', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(181, 8, 1, 1, 1, 'Naffeh Tower (CD)', '72525', 'Commercial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(182, 8, 1, 1, 5, 'S.I.E-2 (F)', '72505', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(183, 8, 1, 1, 5, 'Khalid Illyas Steel(F)', '72512', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(184, 8, 1, 1, 5, 'Islamabad Steel (F)', '72511', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(185, 8, 1, 1, 5, 'Islamabad Re-Rolling Mill (F)', '72527', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(186, 8, 1, 1, 5, 'AL-Karam Steel (F)', '72513', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(187, 8, 1, 1, 19, 'Nazir Industry (F)', '72530', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(188, 8, 1, 1, 5, 'Hafiz Steel Furnace (F)', '72526', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(189, 9, 1, 1, 19, 'Phase II-D (U)', '130202', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(190, 9, 1, 1, 19, 'Waffy City FF (U)', '130201', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(191, 9, 1, 1, 19, 'Waffy City EE (U)', '130203', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(192, 9, 1, 1, 19, 'Phase I-BB (U)', '130204', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(193, 9, 1, 1, 19, 'Link Road (ID)', NULL, 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(194, 9, 1, 1, 19, 'Megma Ceramics (ID)', NULL, 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(195, 9, 1, 1, 19, 'Rescue (ID)', NULL, 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(196, 9, 1, 1, 5, 'Gujjar Town (UR)', NULL, 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(197, 9, 1, 1, 19, 'Khurram Ceramics (ID)', NULL, 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(198, 10, 2, 4, 18, 'Cantt-1 (U)', '4417', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(199, 10, 2, 4, 18, 'Chaoni (U)', '4404', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(200, 10, 2, 4, 18, 'Sughar Mill (ID)', '4420', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(201, 10, 2, 5, 20, 'New Fateh Garh (TD)', '4415', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(202, 10, 2, 5, 20, 'Kot Noora (TD)', '4405', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(203, 10, 2, 5, 21, 'Ahmad Nagar (TD)', '4418', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(204, 10, 2, 4, 18, 'Talwandi Khajore Wali (TD)', '4411', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(205, 10, 2, 5, 21, 'Gillwala (TD)', '4403', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(206, 10, 2, 4, 18, 'Badoke (TD)', '4401', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(207, 10, 2, 5, 20, 'Nat Kalan (UR)', '4407', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(208, 10, 2, 4, 18, 'S.S.Board (U)', '4409', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(209, 10, 2, 5, 20, 'Ghakhar (U)', '4414', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(210, 10, 2, 5, 20, 'Ojla (ID)', '4421', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(211, 10, 2, 5, 20, 'Railway Station (U)', '4402', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(212, 10, 2, 5, 20, 'Jalal (TD)', '4412', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(213, 10, 2, 4, 18, 'Askari (U)', '4419', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(214, 10, 2, 4, 18, 'NLC (B-3)', '4406', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(215, 10, 2, 4, 18, 'Maiz (CPI)', '4413', 'Continous Process Industry (CPI)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(216, 11, 2, 4, 10, 'Sardar Town (ID)', '97405', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(217, 11, 2, 4, 10, 'Nagri Ahmed Shah (ID)', '97420', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(218, 11, 2, 4, 10, 'Aroop (UR)', '97402', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(219, 11, 2, 4, 10, 'Power House (E)', '97410', 'Exempted Feeder', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(220, 11, 2, 4, 10, 'Prime City (U)', '97412', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(221, 11, 2, 4, 10, 'Joher Town (U)', '97413', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(222, 11, 2, 4, 10, 'NMC (E)', '97403', 'Exempted Feeder', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(223, 11, 2, 4, 10, 'NDP-5 (UR)', '97401', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(224, 11, 2, 4, 10, 'Nizam Pur (UR)', '97418', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(225, 11, 1, 2, 11, 'Bhatti Bhango ( R)', '97416', 'Domestic Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(226, 11, 2, 4, 18, 'Trigri (R )', '97419', 'Domestic Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(227, 11, 2, 4, 10, 'Waqar Younas Re Rolling Mill (F)', '97421', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(228, 11, 2, 4, 10, 'Usman Steel (F)', '97417', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(229, 11, 2, 4, 10, 'Ayub Haroon (F)', '97404', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(230, 11, 2, 4, 10, 'Malik Furnaces (F)', '97407', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(231, 11, 2, 4, 10, 'Zahoor Sangam (F)', '97406', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(232, 11, 2, 4, 10, 'Waqas Steel (F)', '97415', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(233, 11, 2, 4, 10, 'Nadeem Steel (F)', '97414', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(234, 11, 2, 4, 10, 'Farooq Steel (F)', '97408', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(235, 11, 2, 4, 10, 'Taj Steel (F)', '97409', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(236, 11, 2, 4, 10, 'Asif Steel (F)', '97411', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(237, 12, 1, 1, 5, 'Warraich (U.I)', '81407', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(238, 12, 1, 3, 16, 'Darbar Qaderia (ID)', '81404', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(239, 12, 1, 2, 2, 'Mubarak Shah Road (ID)', '81412', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(240, 12, 1, 3, 16, 'Noshehra Road. (ID)', '81415', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(241, 12, 1, 3, 16, 'Usman-e-Ghani Colony (ID)', '81414', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(242, 12, 1, 1, 5, 'Fruit Mandi (CD)', '81401', 'Commercial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(243, 12, 1, 3, 16, 'Gulbark Colony (ID)', '81424', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(244, 12, 1, 3, 16, 'Abadi Mehar Wazir (ID)', '81419', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(245, 12, 1, 3, 16, 'Awan Chowk (U.I)', '81402', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(246, 12, 1, 3, 17, 'Chah Chohana Wala (U.I)', '81420', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(247, 12, 1, 3, 16, 'Muhammad Nager (ID)', '81403', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(248, 12, 1, 1, 15, 'Kot Shera (UR)', '81405', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(249, 12, 1, 1, 15, 'Qilla Mian Singh (TD)', '81406', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(250, 12, 1, 1, 5, 'Friends (B-3)', '81421', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(251, 12, 1, 1, 15, 'Amir Mehboob Metal Casting', '81426', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(252, 12, 1, 1, 15, 'IMS (F)', '81422', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(253, 12, 1, 1, 15, 'Madina Steel (F)', '81410', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(254, 12, 1, 1, 15, 'Makkah Steel (F)', '81411', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(255, 12, 1, 1, 15, 'Haq Bahoo Steel (F)', '81417', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(256, 12, 1, 1, 15, 'Umair Steel (F)', '81425', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(257, 12, 1, 1, 15, 'Hameed Steel (F)', '81418', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(258, 13, 1, 3, 16, 'Sialvi Town (U.I)', '112205', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(259, 13, 1, 2, 2, 'Kacha Khiali Road (U)', '112212', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(260, 13, 1, 1, 5, 'Mandiala Meer Shikaran (UR)', '112211', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(261, 13, 1, 3, 16, 'Nowshera Sansi (U.I)', '112208', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(262, 13, 1, 1, 5, 'New Fruit Mandi (CD)', '112203', 'Commercial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(263, 13, 1, 1, 5, 'Iftikhar Colony (CD)', '112202', 'Commercial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(264, 13, 1, 1, 5, 'Gulshan-e-Rehman (ID)', '112210', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(265, 13, 1, 3, 16, 'Data Gunj Bux (ID)', '112204', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(266, 13, 1, 1, 1, 'New Faisal Colony (U.I)', '112209', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(267, 13, 1, 1, 5, 'Gulzar Colony (U.I)', '112201', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(268, 13, 1, 1, 1, 'Coca Cola (B-3)', '112207', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(269, 13, 1, 1, 5, 'Eagle Paper Board (B-3)', NULL, 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(270, 13, 1, 1, 5, 'Adil Steel (F)', '112206', 'Independent Furnace', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(271, 14, 2, 5, 22, 'Kolar (TD)', '22212', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(272, 14, 2, 5, 22, 'Jandiala (TD)', '22222', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(273, 14, 2, 5, 23, 'PNP (ID)', '22206', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(274, 14, 2, 5, 23, 'Phaloke ( R)', '22207', 'Domestic Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(275, 14, 2, 5, 23, 'Wazirabad City (CD)', '22210', 'Commercial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(276, 14, 2, 5, 24, 'Haji pura (U.I)', '22216', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(277, 14, 2, 5, 24, 'College Road (U.I)', '22205', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(278, 14, 2, 5, 24, 'Dhonkal (U)', '22215', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(279, 14, 2, 5, 22, 'Head Khanki (TD)', '22203', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(280, 14, 2, 5, 22, 'Fateh Garh (TD)', '22201', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(281, 14, 2, 5, 23, 'Murdekey (TD)', '22204', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(282, 14, 2, 5, 23, 'Kakka Kolo (UR)', '22223', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(283, 14, 2, 5, 24, 'M.Zafar Ali Khan (UR)', '22213', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(284, 14, 2, 5, 24, 'Pipliwala (TD)', '22214', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(285, 14, 2, 5, 22, 'Sandanwala (TD)', '22208', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(286, 14, 2, 5, 23, 'Illah Abad (U.I)', '22218', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(287, 14, 2, 5, 23, 'Muhammad Nagar (ID)', '22224', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(288, 14, 2, 5, 23, 'Darson (CPI)', '22220', 'Continous Process Industry (CPI)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(289, 14, 2, 5, 22, 'Barrage (E)', '22221', 'Exempted Feeder', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(290, 14, 2, 5, 23, 'Cardialogy (E)', '22219', 'Exempted Feeder', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(291, 15, 1, 6, 25, 'Sago Bago (TD)', '28004', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(292, 15, 1, 6, 25, 'Kot Shera (TD)', '28001', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(293, 15, 1, 6, 26, 'Mangoki (TD)', '28008', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(294, 15, 1, 6, 26, 'Matta Virkan (TD)', '28011', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(295, 15, 1, 6, 26, 'Mari (TD)', '28007', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(296, 15, 1, 6, 27, 'Boprra (TD)', '28010', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(297, 15, 1, 6, 27, 'Tatley Aali (TD)', '28005', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(298, 15, 1, 6, 26, 'Masanda Virkan (TD)', '28013', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(299, 15, 1, 6, 26, 'Karyal Kalan (TD)', '28006', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(300, 15, 1, 6, 25, 'Babbar (TD)', '28009', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(301, 15, 1, 6, 25, 'Thana Road (CD)', '28012', 'Commercial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(302, 15, 1, 6, 25, 'Noshehra Virkan (CD)', '28002', 'Commercial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(303, 16, 1, 7, 28, 'Wakeel Khan Road (ID)', '9412', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(304, 16, 1, 7, 29, 'Salar (ID)', '9415', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(305, 16, 1, 7, 29, 'GT Road (ID)', '9427', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(306, 16, 1, 7, 29, 'Sadhoke (U)', '9408', 'Domestic Urban', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(307, 16, 1, 7, 29, 'Tanboli (TD)', '9425', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(308, 16, 1, 7, 28, 'Salamat Pura (PD)', '9416', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(309, 16, 1, 7, 30, 'Kamoki City-1 (PD)', '9404', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(310, 16, 1, 7, 30, 'Muslim Gunj (PD)', '9429', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(311, 16, 1, 7, 30, 'Khan Town (PD)', '9409', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(312, 16, 1, 7, 28, 'Main Bazar (PD)', '9402', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(313, 16, 1, 7, 30, 'Chowk Ghosia (PD)', '9422', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(314, 16, 1, 7, 30, 'Habib Pura (PD)', '9423', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(315, 16, 1, 7, 30, 'Darga Pur (TD)', '9401', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(316, 16, 1, 7, 29, 'Kassoke (UR)', '9406', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(317, 16, 1, 7, 29, 'Peelo (UR)', '9407', 'Domestic Urban / Rural', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(318, 16, 1, 7, 29, 'Sher Garh (TD)', '9417', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(319, 16, 1, 7, 29, 'A.P.L (B-3)', '9420', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(320, 16, 1, 7, 29, 'H.H.P Mills (B-3)', '9426', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(321, 16, 1, 7, 30, 'K.P.M (B-3)', '9421', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(322, 16, 1, 7, 29, 'Master Poly Plastic (B-3)', '9428', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(323, 16, 1, 7, 28, 'AMS Plastic Industry (B-3)', '9430', 'Independent Industry (B-3)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(324, 16, 1, 7, 28, 'Model Town (Ind.Cluster)', '9411', 'Industrial Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(325, 16, 1, 7, 28, 'Raza Abad (PD)', '9418', 'Power Loom Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(326, 16, 1, 7, 29, 'Sonix Tiles (CPI)', '9419', 'Continous Process Industry (CPI)', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(327, 16, 1, 7, 30, 'Khalid Nazir (TEX)', '9414', 'Independent Textile Industry', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(328, 17, 1, 2, 11, 'Wadala (TD)', '37702', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(329, 17, 1, 2, 11, 'Talhara (TD)', '37704', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(330, 17, 2, 8, 31, 'Marhana (TD)', '37708', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(331, 17, 1, 2, 11, 'Bassi Wala (TD)', '37706', 'Rural / Tubewell Dominated', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(332, 17, 1, 7, 32, 'Mohan Pur (TD)', '37703', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(333, 17, 1, 2, 11, 'Machikay (TD)', '37707', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(334, 17, 3, 9, 33, 'Baigay Wali (TD)', '37705', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(335, 17, 3, 9, 33, 'Satrah  (UR)', '37701', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(336, 18, 1, 1, 19, 'Industrial East (Ind.Estate)', '108201', 'Industrial Estate', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(337, 18, 1, 1, 19, 'Toll Plaza (ID)', '108202', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(338, 18, 1, 1, 19, 'Upper Chenab (R)', '108203', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(339, 18, 1, 1, 19, 'Ceramics-5 (U )', '108211', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(340, 18, 1, 6, 27, 'Chidyala ( R)', '108213', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(341, 18, 1, 6, 27, 'Shabir Ahmad Shaheed ( R)', '108216', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(342, 18, 1, 1, 19, 'Beinazir Road (ID)', '108204', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(343, 18, 1, 7, 28, 'East Chianwali (ID)', '108218', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(344, 18, 1, 7, 28, 'Deewan Road  (Ind.Cluster)', '108209', 'Industrial Cluster', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(345, 18, 1, 7, 28, 'Tiles Industry(CPI)', '108208', 'Continous Process Industry (CPI)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(346, 18, 1, 7, 28, 'Master Tile Ceramic Unit-3 (CPI)', '108215', 'Continous Process Industry (CPI)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(347, 18, 1, 7, 28, 'Tariq Spinning (TEX)', '108217', 'Independent Textile Industry', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(348, 18, 1, 1, 19, 'AL-Haram Textile (TEX)', '108207', 'Independent Textile Industry', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(349, 18, 1, 1, 19, 'S.K Steel (F)', '108212', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(350, 18, 1, 1, 19, 'Meerab Enterprises Steel (F)', '108219', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(351, 18, 1, 1, 19, 'Asim Steel (F)', '108220', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(352, 18, 1, 1, 19, 'H.K.S Furnace (F)', '108210', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(353, 18, 1, 1, 19, 'A.K Furnace (F)', '108206', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(354, 18, 1, 1, 19, 'A.R Steel (F)', '108214', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(355, 18, 1, 1, 19, 'Power Steel (F)', '108205', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(356, 19, 1, 1, 19, 'G.T.Raod (UR)', '50910', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(357, 19, 1, 1, 1, 'Royal Palm City (U)', '50935', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(358, 19, 1, 2, 11, 'Mandiala Tega (TD)', '50904', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(359, 19, 1, 7, 32, 'Rajay Wala (UR)', '50902', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(360, 19, 1, 7, 32, 'Sohawa (UR)', '50929', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(361, 19, 1, 1, 1, 'Attawa (TD)', '50903', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(362, 19, 1, 1, 19, 'Khan Piara (TD)', '50908', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(363, 19, 1, 1, 1, 'Sansra (TD)', '50907', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(364, 19, 1, 7, 29, 'Lalu Pur (TD)', '50925', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(365, 19, 1, 7, 32, 'Hameed Pur (TD)', '50911', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(366, 19, 1, 1, 19, 'Eminabad (UR)', '50901', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(367, 19, 1, 1, 19, 'Ceramics (UR)', '50905', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(368, 19, 1, 1, 19, 'KH. Spinning Mills (TEX) (P)', '50912', 'Independent Textile Industry', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(369, 19, 1, 1, 19, 'Al Marwa Feed (B-3)', '50926', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(370, 19, 1, 1, 1, 'Five Star (B-3)', '50924', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(371, 19, 1, 1, 19, 'Pak Gulf Rice Mill (B-3)', '50933', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(372, 19, 1, 1, 19, 'MD Rice Mills (B-3)', '50937', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(373, 19, 1, 1, 19, 'Millennium Steel (F)', '50938', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(374, 19, 1, 1, 19, 'ZB Steel (F)', '50936', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(375, 19, 1, 1, 1, 'Toheed Steel Mill (F)', '50934', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(376, 19, 1, 1, 1, 'Ikram Steel (F)', '50927', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(377, 19, 1, 1, 1, 'Bismillah Steel (F)', '50928', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(378, 19, 1, 1, 19, 'Aslam Steel (F)', '50939', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(379, 19, 1, 1, 19, 'Rajpoot Steel (F)', '50917', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(380, 19, 1, 1, 19, 'Khawaja Steel (F)', '50913', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(381, 19, 1, 1, 19, 'Madina Steel (F)', '50916', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(382, 19, 1, 1, 19, 'Mighty Steel (F)', '50915', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(383, 19, 1, 1, 1, 'Ibrahim Steel (F)', '50914', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(384, 19, 1, 1, 19, 'Ijaz Steel (F)', '50919', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(385, 19, 1, 1, 1, 'New Hafiz Steel (F)', '50921', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(386, 19, 1, 1, 1, 'MR Steel (F)', '50923', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(387, 19, 1, 1, 1, 'Prime Steel (F)', '50922', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(388, 19, 1, 1, 1, 'AL-Hamad Steel (F)', '50920', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(389, 19, 1, 1, 1, 'AL-Barqah Steel (F)', '50930', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(390, 19, 1, 1, 1, 'SS Steel (F)', '50932', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(391, 19, 1, 1, 1, 'GM Steel (F)', '50931', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(392, 20, 1, 1, 15, 'New Kot Qazi (TD)', '16309', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(393, 20, 1, 1, 34, 'Philoki (TD)', '16313', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(394, 20, 1, 1, 34, 'Qilla Dedar Singh (UR)', '16304', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(395, 20, 1, 1, 34, 'Islam Pura (U)', '16312', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(396, 20, 1, 6, 35, 'Nokhar (Chehel kalan) (TD)', '16301', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(397, 20, 1, 6, 35, 'Bakshish Pura (R )', '16317', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(398, 20, 1, 1, 34, 'Kamo Mali (TD)', '16308', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(399, 20, 1, 1, 34, 'Khabbaki (TD)', '16318', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(400, 20, 1, 1, 15, 'Ladhey Wala (TD)', '16302', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(401, 20, 1, 6, 35, 'Thabil Duccha (Noor Pur) (TD)', '16305', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(402, 20, 1, 6, 35, 'Alaukh Bhaiky (R )', '16320', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(403, 20, 1, 1, 15, 'Batala Jhanda Singh (TD)', '16306', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(404, 20, 1, 1, 15, 'Baig Chak (TD)', '16303', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(405, 20, 1, 1, 15, 'Kot Shah Muhammad (TD)', '16316', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(406, 20, 1, 1, 34, 'Main Bazar (CD)', '16310', 'Commercial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(407, 20, 1, 1, 34, 'Al Hamad Board Mill (B-3)', '16315', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(408, 20, 1, 1, 34, 'Ajwa Steel (F)', '16319', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(409, 20, 1, 1, 34, 'Yasin Steel (F)', '16314', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(410, 20, 1, 1, 34, 'Gujrat Steel (F)', '16311', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(411, 21, 2, 5, 21, 'Dilawar Cheema (TD)', '27317', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(412, 21, 2, 5, 21, 'Chanawan (TD)', '27303', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(413, 21, 2, 5, 21, 'Ladhay Wala (TD)', '27309', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(414, 21, 2, 5, 21, 'Jham Wala (TD)', '27318', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(415, 21, 2, 5, 21, 'Verpal (TD)', '27305', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(416, 21, 2, 5, 21, 'Bhooma Bath (TD)', '27316', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(417, 21, 2, 5, 21, 'Saharan (TD)', '27312', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(418, 21, 2, 5, 21, 'Kot Rasool Puriyan (TD)', '27319', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(419, 21, 2, 5, 36, 'Manchar (TD)', '27310', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(420, 21, 2, 5, 36, 'Bucha Chattha (TD)', '27321', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(421, 21, 2, 5, 36, 'Rasool Nagar (UR)', '27315', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(422, 21, 2, 5, 36, 'City Ali Pur Chatha (U)', '27308', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(423, 21, 2, 5, 36, 'Canal View (U)', NULL, 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(424, 21, 2, 5, 36, 'Ali Pur (U.I)', '27301', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(425, 21, 2, 5, 36, 'Kailianwala (TD)', '27313', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03');
INSERT INTO `feeders` (`id`, `grid_station_id`, `circle_id`, `division_id`, `sub_division_id`, `name`, `feeder_code`, `category`, `created_at`, `updated_at`) VALUES
(426, 21, 2, 5, 36, 'Kot Hara (TD)', '27320', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(427, 21, 2, 10, 37, 'Madan Chak (TD)', '27314', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(428, 21, 2, 5, 21, 'Chenab Board (CPI)', '27311', 'Continous Process Industry (CPI)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(429, 22, 2, 8, 38, 'Stadium Road (ID)', '110201', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(430, 22, 2, 8, 38, 'Bank Road (ID)', '110208', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(431, 22, 2, 8, 39, 'Ghani Pura (U.I)', '110204', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(432, 22, 2, 8, 39, 'Tajokay ( R)', '110213', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(433, 22, 2, 8, 40, 'Model Town (U.I)', '110210', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(434, 22, 2, 8, 38, 'College Road (U.I)', '110209', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(435, 22, 2, 8, 40, 'Gulstan Colony (U)', '110211', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(436, 22, 2, 8, 40, 'Civil Court (U)', '110212', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(437, 22, 2, 8, 39, 'AdamKe (TD)', '110205', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(438, 22, 2, 8, 40, 'Wazirabad Road (TD)', '110203', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(439, 22, 2, 8, 40, 'Sokher Nehar (TD)', '110206', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(440, 22, 2, 8, 40, 'Gojra (TD)', '110202', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(441, 22, 2, 8, 41, 'Malian Wala (TD)', '110207', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(442, 23, 2, 8, 38, 'Sohawa (U.I)', '26303', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(443, 23, 2, 8, 38, 'Sambrial Road (U.I)', '26304', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(444, 23, 2, 8, 38, 'Haji pura (U.I)', '26314', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(445, 23, 2, 8, 31, 'Malo Mahay (TD)', '26306', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(446, 23, 2, 8, 31, 'Dheidowali (TD)', '26307', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(447, 23, 2, 8, 38, 'Civil Hospital (E)', '26318', 'Exempted Feeder', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(448, 23, 2, 8, 38, 'Refine Surgical Steel (F)', '26317', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(449, 23, 2, 8, 38, 'Jameel Steel (F)', '26316', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(450, 23, 2, 8, 38, 'Younas Sergical (F)', '26315', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(451, 24, 2, 8, 41, 'Ranjhai(ID)', '60004', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(452, 24, 2, 8, 38, 'Jandu Road (ID)', '60003', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(453, 24, 2, 8, 41, 'Bahro key (U.I)', '60022', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(454, 24, 2, 8, 31, 'Sian (TD)', '60007', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(455, 24, 2, 8, 31, 'Asghar Shaheed (R )', '60006', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(456, 24, 2, 8, 41, 'Glotian (TD)', '60001', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(457, 24, 2, 8, 41, 'Burj Arian (TD)', '60005', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(458, 24, 2, 8, 41, 'S.I.E  (Ind.Estate)', '60002', 'Industrial Estate', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(459, 24, 2, 8, 39, 'Supreme Steel Industry (F)', '60029', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(460, 24, 2, 8, 39, 'FS Steel', '60028', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(461, 24, 2, 8, 38, 'Taj Din Steel Re-Rolling Mills (F)', '60027', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(462, 24, 2, 8, 38, 'Taj Din Steel Industry (F)', '60026', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(463, 24, 2, 8, 40, 'Malik Bashir Steel (F)', '60024', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(464, 24, 2, 8, 41, 'Islam Steel (F)', '60017', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(465, 24, 2, 8, 40, 'Sardar Steel (F)', '60018', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(466, 24, 2, 8, 41, 'Royal Steel (F)', '60008', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(467, 24, 2, 8, 41, 'M.M Steel (F)', '60009', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(468, 24, 2, 8, 40, 'M.N (Nawaz)Steel (F)', '60016', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(469, 24, 2, 8, 40, 'N.A (Nazir)Steel (F)', '60014', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(470, 24, 2, 8, 38, 'Allah Din Steel (F)', '60015', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(471, 24, 2, 8, 38, 'Daska Steel (F)', '60012', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(472, 24, 2, 8, 41, 'Supper White Gold Steel (F)', '60031', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(473, 24, 2, 8, 38, 'Hameed Foundary (F)', '60021', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(474, 24, 2, 8, 31, 'Majid Steel (F)', '60020', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(475, 24, 2, 8, 31, 'Jeway Madina Steel', '60023', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(476, 24, 2, 8, 41, 'AL-Madina Steel (F)', '60019', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(477, 24, 2, 8, 39, 'MBS Steel (F)', '60025', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(478, 24, 2, 8, 31, 'Roots Steel Mill (F)', '60030', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(479, 24, 2, 8, 41, 'Usman Steel (F)', '60011', 'Independent Furnace', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(480, 25, 1, 6, 27, 'Baig Pur (TD)', '90203', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(481, 25, 1, 6, 27, 'Shamsha (TD)', '90208', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(482, 25, 1, 6, 27, 'Mallah Virkan (TD)', '90206', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(483, 25, 1, 6, 27, 'Deepay Pur (TD)', '90204', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(484, 26, 2, 10, 42, 'Hussain Pura (CD)', '5516', 'Commercial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(485, 26, 2, 10, 43, 'Ghari Awan (U.P)', '5504', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(486, 26, 2, 10, 44, 'Gujranwala Road (U.P)', '5505', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(487, 26, 2, 10, 44, 'Ali Pur Road (U.P)', '5519', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(488, 26, 2, 10, 44, 'Makkah Town (CD)', '5520', 'Commercial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(489, 26, 2, 10, 43, 'District Complexe (U)', '5522', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(490, 26, 2, 10, 43, 'Khan Pura (U)', '5517', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(491, 26, 2, 10, 44, 'Sagar (TD)', '5512', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(492, 26, 2, 10, 43, 'Bhoon (TD)', '5503', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(493, 26, 2, 10, 45, 'Dharanwali (TD)', '5507', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(494, 26, 2, 10, 45, 'Jalhan (R )', '5527', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(495, 26, 2, 10, 45, 'Chabba Sindhu (TD)', '5521', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(496, 26, 2, 10, 43, 'Boeki (TD)', '5506', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(497, 26, 2, 10, 42, 'Kot Hassan Khan (TD)', '5511', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(498, 26, 2, 10, 45, 'Chak Ghazi (TD)', '5514', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(499, 26, 2, 10, 45, 'Soiyan Wala', '5526', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(500, 26, 2, 10, 45, 'Ahmad Pur (TD)', '5501', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(501, 26, 2, 10, 42, 'Shah Jamal (TD)', '5510', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(502, 26, 2, 10, 43, 'Peer Kot (TD)', '5513', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(503, 26, 2, 10, 43, 'Kassoki (TD)', '5525', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(504, 26, 2, 10, 45, 'Jaidkay (TD)', '5523', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(505, 26, 2, 10, 45, 'Lawary (TD)', '5515', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(506, 26, 2, 10, 44, 'Mujahid (E)', '5524', 'Exempted Feeder', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(507, 26, 2, 10, 45, 'Air Force (E)', '5502', 'Exempted Feeder', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(508, 27, 2, 10, 42, 'Kot Mubarik (TD)', '108602', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(509, 27, 2, 10, 44, 'Raja Chowk (PD)', '108608', 'Power Loom Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(510, 27, 2, 10, 44, 'Jaggan Wala (TD)', '108604', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(511, 27, 2, 10, 42, 'Kot Mian (TD)', '108605', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(512, 27, 2, 10, 42, 'Sakhi (TD)', '108606', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(513, 27, 2, 10, 44, 'Farooq-e-Azam Road (CD)', '108607', 'Commercial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(514, 27, 2, 10, 42, 'Mughal Pura (CD)', '108603', 'Commercial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(515, 27, 2, 10, 42, 'Hasan Town (U.P)', '108601', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(516, 27, 2, 10, 44, 'Distt. Jail (E)', '108609', 'Exempted Feeder', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(517, 27, 2, 10, 44, 'DHQ (E)', '108610', 'Exempted Feeder', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(518, 28, 2, 11, 46, 'Rakh Branch.(Mochiwala) (UR)', '37910', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(519, 28, 2, 11, 47, 'Nanowana (Nothay) (UR)', '37909', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(520, 28, 2, 11, 46, 'H-106 (Sabitshah) (TD)', '37904', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(521, 28, 2, 11, 47, 'Uddoke (TD)', '37911', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(522, 28, 2, 11, 47, 'Kot Sarwer (TD) HL', '37914', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(523, 28, 2, 11, 47, 'G. Area (Miana rehima) (TD)', '37903', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(524, 28, 2, 11, 47, 'L-106 (Kasisay) (TD)', '37907', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(525, 28, 2, 11, 46, 'K-106 (Jandokey) (TD)', '37906', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(526, 28, 2, 11, 46, 'Jhang Branch.(Sulheki) (UR)', '37905', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(527, 28, 2, 11, 46, 'Buraq Maize Product (B-3)', '37915', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(528, 28, 2, 11, 46, 'Nishat Dairy (B-3)', '37913', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(529, 28, 2, 11, 46, 'Cresent Baho Maan (TEX)', '37912', 'Independent Textile Industry', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(530, 29, 2, 11, 48, 'Kot Nizam (TD)', '44602', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(531, 29, 2, 11, 48, 'Behlol Pur (TD)', '44610', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(532, 29, 2, 11, 48, 'Mustafa Abad (R)', '44605', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(533, 29, 2, 11, 48, 'Mirza Bhattian (R)', '44609', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(534, 29, 2, 11, 48, 'Old Jalal Pur (TD)', '44604', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(535, 29, 2, 11, 48, 'Kot Nakka (TD)', '44603', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(536, 29, 2, 11, 48, 'Shory Manika (TD)', '44606', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(537, 29, 2, 11, 48, 'Lahore Road (U)', '44608', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(538, 29, 2, 11, 48, 'Pindi Bhattian (U)', '44601', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(539, 30, 2, 11, 49, 'Jalal Pur (ID)', '73803', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(540, 30, 2, 11, 49, 'Chak Bhatti (TD)', '73801', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(541, 30, 2, 11, 49, 'Mehmood Pur (TD)', '73809', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(542, 30, 2, 11, 49, 'Khan Pur (TD)', '73802', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(543, 30, 2, 11, 49, 'Khana Bhattian (TD)', '73814', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(544, 30, 2, 11, 49, 'Kassesay (TD)', '73811', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(545, 30, 2, 11, 49, 'Hazari (R )', NULL, 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(546, 30, 2, 11, 49, 'Kot Muhabbat (TD)', '73805', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(547, 30, 2, 11, 49, 'Sadokey (TD)', '73812', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(548, 30, 2, 11, 49, 'Khuram Cherrah (TD)', '73808', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(549, 30, 2, 11, 49, 'Gharri Gondal (TD)', '73813', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(550, 30, 2, 11, 49, 'Rasool Pur (TD)', '73806', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(551, 30, 2, 11, 49, 'Khiday (R )', '73816', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(552, 30, 2, 11, 49, 'Pindi Bhattian Road (U.I)', '73807', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(553, 30, 2, 11, 49, 'Industrial  (Ind.Estate)', '73804', 'Industrial Estate', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(554, 30, 2, 11, 49, 'Hasan Corporation (B-3)', '73815', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(555, 30, 2, 11, 49, 'Mazco (B-3)', '73810', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(556, 31, 2, 11, 50, 'Kolo Tarrar (TD)', '29901', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(557, 31, 2, 11, 50, 'Alaoddinkay Chattha (TD)', '29907', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(558, 31, 2, 11, 50, 'Ragho Sayedan (TD)', '29905', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(559, 31, 2, 11, 50, 'Behk Ahmad Yaar (TD)', '29908', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(560, 31, 2, 11, 50, 'Vanike Tarrar (TD)', '29903', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(561, 31, 2, 11, 50, 'Beri Wala (TD)', '29906', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(562, 31, 2, 11, 50, 'Balu Nau (TD)', '29904', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(563, 31, 2, 11, 50, 'Kot Chian (TD)', '29902', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(564, 32, 4, 12, 51, 'Shah Doula (U.I)', '5112', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(565, 32, 4, 12, 52, 'Sheikh Pur (ID)', '5109', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(566, 32, 4, 12, 52, 'Kathala (UR)', '5104', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(567, 32, 4, 12, 53, 'Furniture Market (CD)', '5116', 'Commercial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(568, 32, 4, 12, 53, 'Eid Ghah (U.I)', '5117', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(569, 32, 4, 13, 54, 'Dhool (U.I)', '5102', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(570, 32, 4, 12, 53, 'Chenab (UR)', '5115', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(571, 32, 4, 13, 55, 'Shadiwal (TD)', '5114', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(572, 32, 4, 13, 55, 'Tarikha (U)', '5119', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(573, 32, 4, 13, 56, 'Nangrian Wala (ID)', '5107', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(574, 32, 4, 12, 53, 'Sargodha Road (U.I)', '5101', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(575, 32, 4, 12, 53, 'Railway Road (U.I)', '5113', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(576, 32, 4, 13, 54, 'Sabowal (U.I)', '5110', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(577, 32, 4, 12, 57, 'GEPCO Complex (U.I)', '5118', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(578, 32, 4, 12, 52, 'Hayat Pura  (ID)', '5108', 'Industrial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(579, 32, 4, 12, 52, 'Plasco Industry (B-3)', '5120', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(580, 32, 4, 13, 54, 'Old Service (B-3)', '5111', 'Independent Industry (B-3)', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(581, 33, 4, 12, 51, 'Muslim Bazar (CD)', '46903', 'Commercial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(582, 33, 4, 12, 57, 'Jinnah Road (CD)', '46904', 'Commercial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(583, 33, 4, 12, 57, 'Marghzar (CD)', '46906', 'Commercial Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(584, 33, 4, 12, 51, 'Jhangir (UR)', '46910', 'Domestic Urban / Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(585, 33, 4, 13, 54, 'Shadmaan (U)', '46920', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(586, 33, 4, 14, 58, 'Chak Kala (TD)', '46918', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(587, 33, 4, 12, 51, 'Fizan-e-Madina (U.I)', '46919', 'Domestic Urban', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(588, 33, 4, 12, 59, 'Daulat Nagar ( R )', '46909', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(589, 33, 4, 12, 59, 'Buken Sharif ( R )', '46917', 'Domestic Rural', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(590, 33, 4, 14, 58, 'Jinnah Public (TD)', '46908', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(591, 33, 4, 14, 58, 'Beo Wali (TD)', '46901', 'Rural / Tubewell Dominated', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(592, 33, 4, 12, 57, 'Court Road (CD)', '46905', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(593, 33, 4, 12, 51, 'Circular Road (U.I)', '46915', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(594, 33, 4, 14, 58, 'University (E)', '46913', 'Exempted Feeder', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(595, 33, 4, 13, 54, 'Jail Road (U)', '46914', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(596, 33, 4, 12, 59, 'Madina  (U)', '46916', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(597, 33, 4, 12, 59, 'Gagian (UR)', '46902', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(598, 33, 4, 13, 54, 'New service (CPI)', '46907', 'Continous Process Industry (CPI)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(599, 33, 4, 13, 54, 'State Life (B-3)', '46911', 'Independent Industry (B-3)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(600, 34, 4, 12, 52, 'Kalra (U.I)', '108101', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(601, 34, 4, 12, 52, 'Noor ud Din (ID)', '108113', 'Industrial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(602, 34, 4, 12, 51, 'Ahmadabad (U.I)', '108104', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(603, 34, 4, 12, 52, 'Ghauri (ID)', '108102', 'Industrial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(604, 34, 4, 12, 52, 'Mian Muhammad Panah (TD)', '108103', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(605, 34, 4, 14, 58, 'Dawood Pur (TD)', '108112', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(606, 34, 4, 12, 52, 'G.T Road (Ind.Estate)', '108105', 'Industrial Estate', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(607, 34, 4, 12, 52, 'Shaheen (ID)', '108107', 'Industrial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(608, 34, 4, 12, 52, 'S.I.E  (Ind.Estate)', '108106', 'Industrial Estate', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(609, 34, 4, 12, 52, 'Wahid Industries (Pak Fan) (B-3)', '108110', 'Independent Industry (B-3)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(610, 34, 4, 12, 52, 'GFC Fan (B-3)', '108111', 'Independent Industry (B-3)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(611, 34, 4, 12, 52, 'Nayyer Industry (B-3)', '108109', 'Independent Industry (B-3)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(612, 34, 4, 12, 51, 'Golzar-E-Madina (U.I)', '108108', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(613, 35, 4, 15, 60, 'Guliana  ( R )', '11602', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(614, 35, 4, 15, 60, 'Bhagwal ( R )', '11616', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(615, 35, 4, 13, 61, 'Basco (U)', '11601', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(616, 35, 4, 13, 61, 'Machiwal ( R )', '11612', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(617, 35, 4, 13, 61, 'Khawas Pur ( R )', '11617', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(618, 35, 4, 13, 62, 'Kaka Sahib (U)', '11606', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(619, 35, 4, 13, 62, 'Committee Road (U)', '11618', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(620, 35, 4, 15, 60, 'Bhadar (UR)', '11619', 'Domestic Urban/Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(621, 35, 4, 13, 62, 'Pak Pur (U.I)', '11604', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(622, 35, 4, 13, 62, 'Dhama Road (U)', '11614', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(623, 35, 4, 15, 60, 'Ali Chak ( R)', '11607', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(624, 35, 4, 13, 61, 'Dina Chak (TD)', '11610', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(625, 35, 4, 13, 61, 'Umar Chack ( R)', '11615', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(626, 35, 4, 13, 61, 'Paswal (TD)', '11605', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(627, 35, 4, 13, 54, 'Rehmani ( TD )', '11609', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(628, 35, 4, 13, 63, 'Chakori Sharif ( R)', '11620', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(629, 35, 4, 13, 62, 'Lalamusa (CD)', '11603', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(630, 35, 4, 13, 62, 'Main Bazar (CD)', '11613', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(631, 36, 4, 15, 64, 'Banian (UR)', '127505', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(632, 36, 4, 15, 65, 'Kakrali (UR)', '127507', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(633, 36, 4, 15, 60, 'Lambhra (R )', '127504', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(634, 36, 4, 13, 61, 'Sher Garh (R )', '127503', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(635, 36, 4, 12, 59, 'Doga (R )', '127501', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(636, 36, 4, 12, 59, 'Umer Wal (R )', '127502', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(637, 36, 4, 14, 66, 'Lahoriyan (R )', '127506', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(638, 37, 4, 14, 58, 'Shahbaz Pur (TD)', '6705', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(639, 37, 4, 14, 67, 'Main Bazar (PD)', '6704', 'Power Loom Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(640, 37, 4, 14, 67, 'New Noshehran (U)', '6718', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(641, 37, 4, 14, 67, 'Islam Garh (PD)', '6702', 'Power Loom Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(642, 37, 4, 14, 67, 'Abdul Sattar Edhi (PD)', '6714', 'Power Loom Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(643, 37, 4, 14, 67, 'S.S.S (PD)', '6710', 'Power Loom Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(644, 37, 4, 14, 66, 'Fateh Pur ( UR )', '6701', 'Domestic Urban/Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(645, 37, 4, 14, 66, 'Khanowal ( R )', '6717', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(646, 37, 4, 14, 68, 'Karrian Wala (R)', '6703', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(647, 37, 4, 14, 69, 'Kuri  ( R )', '6707', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(648, 37, 4, 14, 66, 'Pero Shah  ( R )', '6709', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(649, 37, 4, 14, 69, 'Tanda (R)', '6706', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(650, 37, 4, 14, 69, 'Surakh Pur (R)', '6716', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(651, 37, 4, 14, 69, 'Barila Sharif ( R )', '6712', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(652, 37, 4, 14, 69, 'Bhagowal (TD)', '6713', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(653, 37, 4, 14, 69, 'Ramkay (TD)', '6715', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(654, 37, 5, 16, 70, 'Barnala AJK ( R )', '6711', 'Domestic Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(655, 37, 4, 14, 68, 'Sagar (R)', '6708', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(656, 38, 4, 14, 68, 'Peer Naseeb Ali Shah ( R )', '108801', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(657, 38, 4, 15, 71, 'Butter ( R )', '108803', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(658, 38, 4, 14, 69, 'Najan ( R )', '108810', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(659, 38, 4, 15, 71, 'Marjan ( R )', '108804', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(660, 38, 4, 14, 66, 'Qazi Sultan Mehmood ( R )', '108802', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(661, 38, 4, 14, 66, 'Jalal Pur Sobatian ( R )', '108806', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(662, 38, 4, 14, 68, 'Peer Goharud Din ( R )', '108808', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(663, 38, 5, 16, 72, 'Barnala-1 AJK ( R)', '108805', 'Domestic Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(664, 38, 5, 16, 70, 'Kot Jamel AJK ( R)', '108809', 'Domestic Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(665, 38, 5, 16, 73, 'Barnala-2 AJK (U)', '108807', 'Domestic Urban (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(666, 39, 4, 15, 74, 'Thana Road (U)', '64405', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(667, 39, 4, 15, 74, 'Dinga (U)', '64401', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(668, 39, 4, 15, 74, 'Joura  (TD)', '64402', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(669, 39, 4, 15, 74, 'Chanan ( R )', '64406', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(670, 39, 4, 15, 75, 'New Sagar ( R )', '64407', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(671, 39, 4, 15, 75, 'Jinnah  (R )', '64408', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(672, 39, 4, 15, 75, 'Noor Jamal ( TD )', '64403', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(673, 39, 4, 15, 75, 'Aamra  ( TD )', '64404', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(674, 40, 4, 13, 56, 'Mangowal (TD)', '62302', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(675, 40, 4, 13, 56, 'Kang (R)', '62311', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(676, 40, 6, 17, 76, 'Jokalian  ( TD )', '62305', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(677, 40, 6, 17, 76, 'Nosho Pak ( R )', '62312', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(678, 40, 4, 13, 55, 'Langay  ( TD )', '62301', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(679, 40, 4, 13, 55, 'Jassoki (R )', '62314', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(680, 40, 6, 17, 76, 'Ranfeekay (TD)', '62307', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(681, 40, 4, 13, 56, 'Jheuranwala ( TD )', '62308', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(682, 40, 4, 13, 56, 'Machiana  ( TD )', '62304', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(683, 40, 4, 13, 56, 'Pak Wigha ( TD)', '62309', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(684, 40, 4, 13, 56, 'Kunjah (U)', '62306', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(685, 40, 4, 13, 56, 'Ghazi (U)', '62313', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(686, 40, 4, 13, 56, 'Farooqi Pulpe Mills (B-3)', '62310', 'Independent Industry (B-3)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(687, 40, 4, 13, 56, 'KTM (TEX)', '62303', 'Independent Textile Industry', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(688, 41, 5, 16, 77, 'Industrial-1 AJK ( R)', '46709', 'Domestic Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(689, 41, 5, 16, 78, 'R-1 (Ifthikarabad) AJK ( R)', '46703', 'Domestic Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(690, 41, 5, 16, 78, 'Bandala AJK ( R)', '46716', 'Domestic Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(691, 41, 5, 16, 77, 'Industrial-2 AJK (R )', '46710', 'Domestic Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(692, 41, 5, 16, 77, 'R-2 AJK  (ID)', '46704', 'Industrial Dominated (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(693, 41, 5, 16, 78, 'R-3 AJK (U) DHQ', '46705', 'Domestic Urban (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(694, 41, 4, 15, 71, 'Kotla-1  ( UR)', '46701', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(695, 41, 4, 15, 71, 'Sadwal  ( R )', '46712', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(696, 41, 5, 16, 77, 'Samani-2 AJK (R )', '46711', 'Domestic Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(697, 41, 4, 15, 64, 'Mararian (UR)', '46708', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(698, 41, 5, 16, 77, 'Barnala AJK ( UR )', '46706', 'Domestic Urban Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(699, 41, 4, 15, 64, 'Langral ( UR )', '46714', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(700, 41, 5, 16, 78, 'Samani Express AJK ( R )', '46713', 'Domestic Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(701, 41, 5, 16, 78, 'Bhimber-1 AJK (CD)', '46702', 'Commercial Dominated (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(702, 41, 5, 16, 78, 'Kaschantar AJK (CD)', '46717', 'Commercial Dominated (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(703, 41, 5, 16, 78, 'Bhimber-2 AJK (R)', '46707', 'Domestic Rural (AJK)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(704, 41, 4, 15, 64, 'Sabour ( UR )', '46715', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(705, 42, 6, 18, 79, 'Phalia Road. (CD)', '63208', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(706, 42, 6, 18, 80, 'Complex (CD)', '63215', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(707, 42, 6, 18, 80, 'Crystel (CD)', '63214', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(708, 42, 6, 18, 80, 'Wasu (U)', '63209', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(709, 42, 6, 18, 81, 'Mong (R)', '63205', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(710, 42, 6, 18, 82, 'Gulshan Iqbal (R)', '63202', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(711, 42, 6, 18, 81, 'Kheewa (TD)', '63212', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(712, 42, 6, 18, 81, 'Shah Taj (UR)', '63207', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(713, 42, 6, 18, 81, 'Kot Baloch ( TD )', '63201', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(714, 42, 6, 18, 79, 'Jolana (UR)', '63210', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(715, 42, 6, 18, 79, 'Sohawa (R )', '63216', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(716, 42, 6, 18, 79, 'Canal (U)', '63206', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(717, 42, 6, 18, 80, 'Mandi Bahaudin (CD)', '63203', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(718, 42, 6, 18, 80, 'Katchery Road (CD)', '63211', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(719, 42, 6, 18, 79, 'Sufi City (U)', '63213', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(720, 42, 6, 18, 79, 'Gurrah (U)', '63204', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(721, 43, 4, 15, 83, 'New Cantt: (U)', '10705', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(722, 43, 4, 15, 83, 'MES (U)', '10703', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(723, 43, 4, 15, 83, 'Janda Wala ( R)', '10702', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(724, 43, 4, 15, 83, 'Saeed Shaheed ( R)', '10713', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(725, 43, 4, 15, 84, 'Dhunni ( R)', '10710', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(726, 43, 4, 15, 84, 'Anwar Rasheed Shaheed ( R)', '10715', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(727, 43, 4, 15, 84, 'Old Dhoria  ( UR )', '10707', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(728, 43, 4, 15, 60, 'Malka ( R )', '10708', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(729, 43, 4, 15, 84, 'Randheer  ( R )', '10712', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(730, 43, 4, 15, 84, 'Nona Wali  ( R )', '10704', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(731, 43, 4, 15, 83, 'Karyala  (R )', '10706', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(732, 43, 4, 15, 83, 'Kharian City (CD)', '10701', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(733, 43, 4, 15, 83, 'Main Bazar (CD)', '10711', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(734, 43, 4, 15, 83, 'I.J.Colony (U)', '10709', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(735, 43, 4, 15, 83, 'T.H.Q Kharian (E)', '10716', 'Exempted Feeder', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(736, 43, 4, 15, 83, 'Central Command (E)', '10714', 'Exempted Feeder', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(737, 44, 4, 15, 75, 'Dinga ( R)', '6208', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(738, 44, 6, 17, 85, 'Jano Chak (TD)', '6214', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(739, 44, 6, 17, 85, 'Pindi Kalu (TD)', '6215', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(740, 44, 6, 17, 85, 'Hellan (TD)', '6211', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(741, 44, 6, 18, 82, 'Marala  ( TD )', '6212', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(742, 44, 6, 17, 76, 'Pahrianwali  (TD)', '6210', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(743, 44, 6, 17, 76, 'Chimmon  ( TD )', '6209', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(744, 44, 6, 18, 82, 'R.S Challianwala  (R)', '6213', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(745, 45, 6, 18, 86, 'Aala  ( R )', '32101', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(746, 45, 6, 18, 86, 'Shumari  ( R )', '32106', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(747, 45, 6, 18, 87, 'Dhop Sarri (TD)', '32105', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(748, 45, 6, 18, 87, 'Chot (TD)', '32102', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(749, 45, 6, 18, 86, 'Malakwal (CD)', '32103', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(750, 45, 6, 18, 86, 'lslam Pura (CD)', '32107', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(751, 45, 6, 18, 86, 'Miani  (U)', '32104', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(752, 46, 6, 17, 88, 'Sahna  ( TD )', '8502', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(753, 46, 6, 17, 89, 'Mangat  (TD)', '8503', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(754, 46, 6, 17, 89, 'Saida  (TD)', '8506', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(755, 46, 6, 17, 90, 'Gohar ( TD )', '8510', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(756, 46, 6, 17, 90, 'Rukkan (R )', '8501', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(757, 46, 6, 17, 90, 'Gojra ( TD)', '8514', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(758, 46, 6, 17, 88, 'Nain (TD)', '8505', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(759, 46, 6, 17, 88, 'Qadirabad (TD)', '8513', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(760, 46, 6, 17, 88, 'Dhakhay Wal (TD)', '8516', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(761, 46, 6, 17, 88, 'Farrukh Pur (TD)', '8515', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(762, 46, 6, 17, 88, 'Mianwal (TD)', '8507', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(763, 46, 6, 17, 89, 'Makewal (U)', '8504', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(764, 46, 6, 17, 89, 'Dera Mian Sahib (CD)', '8509', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(765, 46, 6, 17, 88, 'Khutiala Sheikhan (UR)', '8511', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(766, 46, 6, 17, 89, 'College Road (CD)', '8512', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(767, 46, 6, 17, 88, 'MTM (TEX) P', '8508', 'Independent Textile Industry', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(768, 47, 6, 17, 89, 'Phalia City (U)', '108001', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(769, 47, 6, 17, 89, 'Gujrat Road (U)', '108008', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(770, 47, 6, 17, 89, 'Main Bazar (CD)', '108004', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(771, 47, 6, 17, 89, 'Mandi Road (R)', '108002', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(772, 47, 6, 17, 89, 'Iqbal Town (R )', '108009', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(773, 47, 6, 17, 89, 'Dhal Dhola ( R )', '108005', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(774, 47, 6, 17, 85, 'Dhareikan (TD)', '108007', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(775, 47, 6, 17, 85, 'Luk (TD)', '108006', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(776, 47, 6, 18, 82, 'Bohat (R)', '108003', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(777, 48, 6, 18, 87, 'Duffer ( R )', '58510', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(778, 48, 6, 17, 91, 'Miana Gondal ( R )', '58504', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(779, 48, 6, 17, 91, 'Barmusa (R )', '58515', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(780, 48, 6, 18, 87, 'Mona ( R )', '58511', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(781, 48, 6, 17, 90, 'Sanda ( R )', '58512', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(782, 49, 6, 17, 91, 'Jassowal (TD)', '24202', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(783, 49, 6, 17, 91, 'Kot Hast Khan (TD)', '24210', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(784, 49, 6, 17, 91, 'Humber (TD)', '24207', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(785, 49, 6, 17, 91, 'Bherowal (TD)', '24205', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(786, 50, 2, 4, 10, 'NDP-4 (Colony) ( R)', '44504', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(787, 51, 6, 18, 81, 'Dara Pur ( R )', '115501', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(788, 51, 6, 18, 81, 'New Rasool ( R)', '115502', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(789, 51, 6, 18, 82, 'Gulzar ( R)', '115503', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(790, 52, 6, 18, 81, 'Subsidry (Colony) ( R)', '59102', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(791, 53, 4, 13, 55, 'F-1 (Colony) ( R)', '67002', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(792, 54, 3, 19, 92, 'Qazi Chak (UR)', '81304', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(793, 54, 3, 19, 92, 'H.M.Z  (ID)', '81303', 'Industrial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(794, 54, 3, 19, 93, 'Sahowala (UR)', '81301', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(795, 54, 3, 19, 94, 'Bhopal Wala  (U)', '81302', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(796, 54, 3, 19, 92, 'Jourian (ID)', '81306', 'Industrial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(797, 54, 3, 19, 92, 'Uggoke (UR)', '81305', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(798, 54, 3, 19, 92, 'Forwards Sports (B-3)', '81308', 'Independent Industry (B-3)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(799, 54, 3, 19, 93, 'Air Port (E)', '81307', 'Exempted Feeder', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(800, 55, 3, 20, 95, 'Abbot Road (CD)', '44402', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(801, 55, 3, 19, 92, 'Imtiaz Supper Store (CD)', '44424', 'Commercial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(802, 55, 3, 20, 96, 'Iqbal Town (U.I)', '44415', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(803, 55, 3, 19, 92, 'Muzafarpur (U.I)', '44410', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(804, 55, 3, 19, 92, 'Adalat Garha (ID)', '44417', 'Industrial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(805, 55, 3, 19, 92, 'Roras Road (U)', '44425', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(806, 55, 3, 19, 97, 'Muradpur (U.I)', '44413', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(807, 55, 3, 20, 96, 'Model Town (U)', '44423', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(808, 55, 3, 20, 95, 'Kashmir Rd. (U.I)', '44419', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(809, 55, 3, 20, 96, 'Mianapura (U.I)', '44416', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(810, 55, 3, 21, 98, 'Butter (U.I)', '44405', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(811, 55, 3, 19, 92, 'Malkay Kalan (U.I)', '44412', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(812, 55, 3, 19, 92, 'City Villas (U)', NULL, 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(813, 55, 3, 20, 95, 'Muslim Town (U.I)', '44420', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(814, 55, 3, 19, 97, 'Marala Road (U.I)', '44406', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(815, 55, 3, 21, 98, 'Khokhar Town (U.I)', '44422', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(816, 55, 3, 19, 92, 'Rajco Industry (B-3)', '44426', 'Independent Industry (B-3)', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(817, 56, 3, 19, 97, 'Kapoor Wali (U.I)', '115902', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(818, 56, 3, 19, 97, 'Nangal (U.I)', '115905', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(819, 56, 3, 19, 97, 'Machi Khokhar (U.I)', '115904', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(820, 56, 3, 19, 97, 'Gohadpur (U.I)', '115903', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(821, 56, 3, 19, 97, 'Mughal Pura (U)', '115907', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(822, 56, 3, 19, 97, 'Bounkan (U)', '115908', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(823, 56, 3, 19, 97, 'Chitti Sheikhan (U.I)', '115901', 'Domestic Urban', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(824, 56, 3, 22, 99, 'Khambanwala  ( R )', '115906', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(825, 56, 3, 19, 92, 'Baghwal Awan  (UR )', '115910', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(826, 56, 3, 22, 99, 'Tanry Zone (ID)', '115909', 'Industrial Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(827, 57, 3, 21, 100, 'Bhadal (UR)', '20104', 'Domestic Urban / Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(828, 57, 3, 21, 100, 'Eimanabad Road (R)', '20120', 'Domestic Rural', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(829, 57, 3, 21, 101, 'Ghunna  (TD)', '20107', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(830, 57, 3, 21, 101, 'Ghopaal Pur (TD)', '20118', 'Rural / Tubewell Dominated', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(831, 57, 3, 21, 101, 'Vario  (TD)', '20116', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(832, 57, 3, 20, 102, 'Islamabad (U)', '20117', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(833, 57, 3, 21, 103, 'Rasool pur  ( R)', '20110', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(834, 57, 3, 22, 104, 'Rangpura (U)', '20109', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(835, 57, 3, 21, 103, 'Langray Wali ( U)', '20112', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(836, 57, 3, 21, 103, 'Oorah ( U)', '20119', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(837, 57, 3, 21, 100, 'Hundal  (U.I)', '20103', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(838, 57, 3, 22, 104, 'Pura Hira (U)', '20114', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(839, 57, 3, 20, 102, 'Habibpura (U.I)', '20105', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(840, 57, 3, 20, 102, 'Nizamabad (U.I)', '20108', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(841, 57, 3, 20, 102, 'Circular Road. (CD)', '20101', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(842, 57, 3, 21, 98, 'Paki Kotli (UR)', '20106', 'Domestic Urban / Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(843, 57, 3, 20, 102, 'Neika Pura (U.I)', '20115', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(844, 57, 3, 21, 101, 'Badiana Express (ID)', '20111', 'Industrial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(845, 57, 3, 21, 101, 'Vision Technologies Industry (B-3)', '20122', 'Independent Industry (B-3)', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(846, 57, 3, 21, 98, 'Anwar Khawaja (B-3)', '20121', 'Independent Industry (B-3)', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(847, 58, 3, 20, 105, 'Fateh Garh (U.I)', '37530', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05');
INSERT INTO `feeders` (`id`, `grid_station_id`, `circle_id`, `division_id`, `sub_division_id`, `name`, `feeder_code`, `category`, `created_at`, `updated_at`) VALUES
(848, 58, 3, 20, 105, 'Jinnah Town (U)', '37520', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(849, 58, 3, 21, 98, 'Rovial Grah (U)', '37531', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(850, 58, 3, 20, 105, 'Chand Chowk (U.I)', '37527', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(851, 58, 3, 20, 105, 'Main Bazar (CD)', '37516', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(852, 58, 3, 20, 96, 'Mubarik Pura (U.I)', '37503', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(853, 58, 3, 20, 96, 'Shahab Road. (U)', '37518', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(854, 58, 3, 20, 105, 'Ghouspura (U.I)', '37525', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(855, 58, 3, 19, 92, 'Mulk Shah Wali (U.I)', '37529', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(856, 58, 3, 21, 98, 'Industrial-1 (ID)', '37524', 'Industrial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(857, 58, 3, 20, 105, 'S.I.E-1  (Ind.Cluster)', '37523', 'Industrial Cluster', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(858, 58, 3, 20, 105, 'Factory Area (Ind.Cluster)', '37519', 'Industrial Cluster', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(859, 59, 3, 20, 106, 'Fort (CD)', '109402', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(860, 59, 3, 20, 105, 'Haji pura (ID)', '109404', 'Industrial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(861, 59, 3, 20, 105, 'Boghra (U.I)', '109405', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(862, 59, 3, 20, 102, 'Jandar Bazar (U.I)', '109407', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(863, 59, 3, 20, 102, 'Imam Sahib (U.I)', '109406', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(864, 59, 3, 20, 96, 'Islam Pura (U)', '109408', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(865, 59, 3, 20, 105, 'Tehsil Bazar (CD)', '109401', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(866, 59, 3, 20, 106, 'Green Wood Street (CD)', '109403', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(867, 60, 3, 22, 107, 'Kotli Loharan East (UR)', '51003', 'Domestic Urban / Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(868, 60, 3, 22, 107, 'Ashraf Pura (UR)', '51001', 'Domestic Urban / Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(869, 60, 3, 22, 107, 'Kharota-1  ( R)', '51002', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(870, 60, 3, 22, 99, 'Kullowal  ( R )', '51004', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(871, 61, 3, 20, 95, 'Christian Town (U.I)', '51115', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(872, 61, 3, 19, 97, 'Balan Wala (U.I)', '51108', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(873, 61, 3, 22, 108, 'Dalo Wali ( UR)', '51109', 'Domestic Urban / Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(874, 61, 3, 22, 108, 'Gul Bahar (U)', '51120', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(875, 61, 3, 22, 109, 'Markiwal (U)', '51111', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(876, 61, 3, 22, 109, 'Jinnah Road (U)', '51122', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(877, 61, 3, 22, 108, 'Kamman Wala ( UR)', '51104', 'Domestic Urban / Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(878, 61, 3, 22, 108, 'Berth (U.I)', '51119', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(879, 61, 3, 22, 108, 'Kalma Chowk (U)', '51123', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(880, 61, 3, 22, 109, 'Sadar Bazar (U)', '51106', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(881, 61, 3, 22, 109, 'Ghazi Pur ( CD)', '51117', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(882, 61, 3, 22, 109, 'Brand village Sialkot ( CD)', '51121', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(883, 61, 3, 22, 104, 'Muhammad Pura (CD)', '51102', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(884, 61, 3, 22, 110, 'Saidpur  ( R )', '51114', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(885, 61, 3, 22, 110, 'Shadiwal  (TD)', '51110', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(886, 61, 3, 22, 108, 'Kundanpur ( R )', '51107', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(887, 61, 3, 20, 106, 'Railway Road (CD)', '51101', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(888, 61, 3, 20, 95, 'Paris Road (U)', '51103', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(889, 61, 3, 22, 109, 'Clock Tower (U)', '51112', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(890, 61, 3, 22, 109, 'M.E.S. (U)', '51105', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(891, 61, 3, 22, 109, 'Garsion (U)', '51116', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(892, 61, 3, 22, 109, 'Askary Colony (U)', '51113', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(893, 61, 3, 20, 95, 'Court Road (U)', '51118', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(894, 62, 3, 21, 100, 'Peero Chak (UR)', '96910', 'Domestic Urban / Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(895, 62, 3, 21, 100, 'Ladhar (TD)', '96902', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(896, 62, 2, 8, 39, 'Imam Bukhari (ID)', '96908', 'Industrial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(897, 62, 2, 8, 39, 'Triggerry (R )', '96907', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(898, 62, 2, 8, 39, 'Faiz ul Hassan (R )', '96901', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(899, 62, 2, 8, 39, 'Jamkey Cheema (R )', '96912', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(900, 62, 3, 21, 98, 'Ghuinke  (ID)', '96903', 'Industrial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(901, 62, 2, 8, 39, 'Ballo Wali (R)', '96909', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(902, 62, 3, 21, 98, 'Addah (U)', '96904', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(903, 62, 3, 21, 98, 'City Housing (U)', '96911', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(904, 62, 3, 21, 98, 'Kot Mana ( R)', '96905', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(905, 62, 3, 21, 98, 'Industrial-3 (ID)', '96906', 'Industrial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(906, 62, 2, 8, 39, 'Silver Star (B-3)', '96914', 'Independent Industry (B-3)', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(907, 62, 3, 21, 98, 'Awan Sports (B-3)', '96913', 'Independent Industry (B-3)', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(908, 63, 3, 9, 111, 'Muslim Colony (CD)', '34303', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(909, 63, 3, 9, 111, 'Pasrur City (CD)', '34307', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(910, 63, 3, 9, 111, 'Noor Pura (CD)', '34314', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(911, 63, 3, 9, 112, 'Musapur ( R )', '34306', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(912, 63, 3, 9, 112, 'Chichar Wali (R )', '34316', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(913, 63, 3, 9, 112, 'Kalaswala ( R )', '34302', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(914, 63, 3, 9, 113, 'Godha (TD)', '34308', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(915, 63, 3, 9, 111, 'Ahmadabad ( UR)', '34310', 'Domestic Urban / Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(916, 63, 3, 9, 113, 'Rachara ( TD )', '34312', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(917, 63, 3, 9, 113, 'Badiana (TD)', '34301', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(918, 63, 3, 9, 111, 'Qila Soba Sing ( UR)', '34304', 'Domestic Urban / Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(919, 63, 3, 9, 114, 'Chawinda (TD)', '34305', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(920, 63, 3, 9, 113, 'Bun Bajwa (TD)', '34311', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(921, 63, 3, 9, 113, 'Judhala ( R)', '34315', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(922, 63, 3, 9, 112, 'Cantt (U)', '34313', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(923, 64, 3, 9, 115, 'Chobara ( R )', '82304', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(924, 64, 3, 9, 115, 'Sabaz Peer (R )', '82310', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(925, 64, 3, 9, 115, 'Pindi Bhago ( R )', '82305', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(926, 64, 3, 9, 114, 'Marajke ( R )', '82302', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(927, 64, 3, 9, 114, 'Khokhar Haider ( R )', '82311', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(928, 64, 3, 9, 114, 'Khana Wali (TD)', '82301', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(929, 64, 3, 9, 114, 'New Khana Wali (TD)', '82306', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(930, 64, 3, 9, 114, 'Chawinda City (U)', '82303', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(931, 64, 3, 9, 114, 'Maniala (U)', '82309', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(932, 64, 3, 21, 101, 'Bhagowal (TD)', '82307', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(933, 64, 3, 21, 103, 'Bajra Garhi ( R )', '82308', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(934, 65, 3, 9, 115, 'Kingra ( R )', '40508', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(935, 65, 7, 23, 116, 'Throumandi ( R )', '40502', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(936, 65, 7, 23, 116, 'Nonar ( R)', '40505', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(937, 65, 7, 23, 116, 'Feroz Pur ( R)', '40512', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(938, 65, 7, 23, 117, 'Singial ( R )', '40509', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(939, 65, 7, 23, 118, 'Darman ( R)', '40513', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(940, 65, 7, 23, 118, 'Fakhar-U-Din ( R)', '40501', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(941, 65, 7, 23, 116, 'Zafarwal (CD)', '40503', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(942, 65, 7, 23, 116, 'Jammu Gate (U)', '40516', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(943, 65, 7, 23, 118, 'Jabal (R)', '40504', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(944, 65, 7, 23, 118, 'Gagian (R)', '40514', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(945, 65, 7, 23, 117, 'Dhamthal (R )', '40506', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(946, 65, 7, 23, 117, 'Sankhatra ( R )', '40511', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(947, 65, 7, 23, 117, 'Raheemabad ( R )', '40515', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(948, 65, 7, 23, 118, 'Sadwal (R )', '40510', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(949, 66, 7, 24, 119, 'Manga ( R)', '69801', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(950, 66, 7, 24, 119, 'Talwandi pindran ( R )', '69806', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(951, 66, 3, 9, 112, 'Sokanwand ( R )', '69802', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(952, 66, 3, 9, 33, 'Changa ( R )', '69804', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(953, 66, 3, 9, 112, 'Jio Wali ( R )', '69803', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(954, 67, 7, 24, 120, 'Pajo Wali (TD)', '14207', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(955, 67, 7, 24, 120, 'Ghaziwal (TD)', '14211', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(956, 67, 7, 24, 120, 'Kandhala (R )', '14225', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(957, 67, 7, 24, 120, 'Phata (Housing Scheme) ( U )', '14219', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(958, 67, 7, 24, 121, 'Narowal (CD)', '14204', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(959, 67, 7, 24, 121, 'Ghousia (U)', '14210', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(960, 67, 7, 24, 122, 'Sadiqabad (TD)', '14206', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(961, 67, 7, 24, 122, 'Bola Bajwa ( R)', '14226', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(962, 67, 7, 24, 121, 'Civil Line (CD)', '14209', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(963, 67, 7, 24, 121, 'Chandowal (CD)', '14221', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(964, 67, 7, 24, 120, 'Jassar (TD)', '14202', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(965, 67, 7, 24, 120, 'Chander Key (R)', '14217', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(966, 67, 7, 24, 122, 'Mangian (TD)', '14203', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(967, 67, 7, 24, 122, 'Khan Khasaa (TD)', '14216', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(968, 67, 7, 24, 122, 'Budha Dhola (TD)', '14222', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(969, 67, 7, 24, 122, 'Domala (TD)', '14212', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(970, 67, 7, 24, 122, 'Chahal (TD)', '14224', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(971, 67, 7, 24, 121, 'Industrial (ID)', '14208', 'Industrial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(972, 67, 7, 24, 122, 'Sports Complex (B-3)', '14220', 'Independent Industry (B-3)', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(973, 67, 7, 24, 122, 'University of Engineering (UET) (E)', NULL, 'Exempted Feeder', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(974, 67, 7, 24, 121, 'Distt. Jail (E)', '14218', 'Exempted Feeder', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(975, 67, 7, 24, 121, 'Ginum-II (E)', '14223', 'Exempted Feeder', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(976, 68, 7, 25, 123, 'City (CD)', '80204', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(977, 68, 7, 25, 123, 'Amaryal (CD)', '80217', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(978, 68, 7, 25, 123, 'Antowali (CD)', '80201', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(979, 68, 7, 25, 123, 'Din Pur (CD)', '80216', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(980, 68, 7, 25, 123, 'Phalwair (U)', '80213', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(981, 68, 7, 25, 124, 'Ikhlaspur ( R )', '80210', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(982, 68, 7, 25, 124, 'Bhara Bhai ( R )', '80218', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(983, 68, 7, 25, 125, 'Qasim pur ( R )', '80203', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(984, 68, 7, 25, 126, 'Gumtala ( R )', '80202', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(985, 68, 7, 25, 126, 'Khan Pur (R )', '80214', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(986, 68, 7, 25, 123, 'Bara Managa (R)', '80207', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(987, 68, 7, 25, 125, 'Faiz Ahmad Faiz ( R )', '80209', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(988, 68, 7, 25, 124, 'Nangal ( R )', '80208', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(989, 68, 7, 25, 126, 'Bostan ( R )', '80205', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(990, 68, 7, 25, 126, 'Kartar Pur (R )', '80215', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(991, 68, 7, 25, 125, 'Chak Amro ( R )', '80206', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(992, 68, 7, 25, 126, 'Noor Kot ( R )', '80211', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(993, 68, 7, 25, 124, 'Mir Pur ( R)', '80212', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(994, 69, 7, 24, 127, 'Halowal ( R )', '91703', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(995, 69, 7, 24, 127, 'Burj ( R )', '91702', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(996, 69, 7, 24, 127, 'Rayya ( R )', '91701', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(997, 69, 7, 24, 127, 'Badomali city (UR)', '91705', 'Domestic Urban / Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(998, 69, 7, 24, 127, 'Belo Wali (R)', '91704', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(999, 70, 3, 19, 94, 'Malkhanwala (TD)', '18702', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1000, 70, 3, 19, 94, 'Baddokey ( R )', '18713', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1001, 70, 3, 19, 94, 'Baigo Wala (UR)', '18701', 'Domestic Urban / Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1002, 70, 3, 19, 94, 'Kopra (R )', '18716', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1003, 70, 3, 19, 94, 'Kot Dina (TD)', '18703', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1004, 70, 3, 19, 94, 'Randheer Bagrian (R )', '18715', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1005, 70, 3, 19, 93, 'Majrah (TD)', '18704', 'Rural / Tubewell Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1006, 70, 3, 19, 93, 'Dhana Wali ( R )', '18714', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1007, 70, 3, 19, 93, 'Sambrial (CD)', '18705', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1008, 70, 3, 19, 93, 'Mandi (CD)', '18707', 'Commercial Dominated', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1009, 70, 3, 19, 93, 'Dar ul Islam (U)', '18712', 'Domestic Urban', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1010, 70, 3, 19, 94, 'Trango Tek Idustry (B-3)', '18717', 'Independent Industry (B-3)', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1011, 70, 3, 19, 93, 'Air Port (E)', '18711', 'Exempted Feeder', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1012, 70, 3, 19, 94, 'E.P.Z-3', '18710', 'Independent Industry E.P.Z', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1013, 71, 3, 22, 99, 'Up Stream ( R )', '32305', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1014, 71, 3, 22, 110, 'Chaprar( R )', '32307', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1015, 71, 3, 22, 110, 'Seerh (R)', '32306', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1016, 71, 3, 22, 110, 'Bajwat-1 (R)', '32308', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1017, 71, 3, 22, 99, 'Down Stream  ( R )', '32303', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1018, 71, 3, 22, 99, 'Colony ( R)', '32302', 'Domestic Rural', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(1019, 71, 3, 22, 99, 'Barrage ( E)', '32301', 'Exempted Feeder', '2025-03-30 04:31:05', '2025-03-30 04:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `grid_stations`
--

CREATE TABLE `grid_stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `voltage` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grid_stations`
--

INSERT INTO `grid_stations` (`id`, `name`, `voltage`, `location`, `company_id`, `created_at`, `updated_at`) VALUES
(1, '132KV Therisansi Gujranwala', '132', NULL, 1, '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(2, '132KV Sheranwala Bhagh', '132', NULL, 1, '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(3, 'ad Gujranwala', NULL, NULL, 1, '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(4, '132 KV Pasrur Road Gujranwala', '132', NULL, 1, '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(5, '132KV SHAHEENABAD Gujranwala', '132', NULL, 1, '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(6, '132kv College Road Gujranwala', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(7, '132KV Cantt: Gujranwala', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(8, '132KV  Lahore Road Gujranwala', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(9, '132KV  Citi Housing GRW', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(10, '220KV Ghakhar', '220', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(11, '132KV Aroop', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(12, '132KV Hafizabad Road Gujranwala', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(13, '132KV Khiali GRW', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(14, '132KV Wazirabad', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(15, '132KV Nowshera Virkan', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(16, '132KV kamonki', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(17, '132KV Siranwali', '132', NULL, 1, '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(18, '132KV Chianwali', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(19, '132KV Eminabad Gujranwala', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(20, '132KV Qila Dedar Singh', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(21, '132KV Fateh Pur', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(22, '132 KV NEW DASKA', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(23, '132 KV Daska City', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(24, '132KV Daska Industrial', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(25, '132 KV SKP.Ind', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(26, '132KV Hafizabad', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(27, '132KV Hafizabad-2', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(28, '132KV Sukheke', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(29, '132KV Pindi Bhattian', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(30, '132KV Jalal Pur Bhattian', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(31, '132KV Kolo Tarrar', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(32, '132KV Gujrat-1', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(33, '132KV Gujrat-2', '132', NULL, 1, '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(34, '132KV Ratti Gujrat', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(35, '132 KV Lalamusa', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(36, '132 KV Daulat Nagar', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(37, '132-KV Jalal Pur Jattan', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(38, '132-KV Awan Shrif', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(39, '132-KV Dinga', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(40, '132-KV Mangowal', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(41, '132KV Bhimber', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(42, '132-KV Mandi Bahaudin', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(43, '132-KV Kharian', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(44, '132KV Hellan', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(45, '132KV Malakwal', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(46, '132KV Khutiala Sheikhan', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(47, '132KV Phalia', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(48, '132KV Head Faqirian', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(49, '66KV Bhabra', '66', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(50, 'Nandi Pur', NULL, NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(51, '66KV Rasul', '66', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(52, 'Rasul P/H', NULL, NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(53, 'Shadiwal P/H', NULL, NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(54, '220KV Sahowala', '220', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(55, '132KV New Sialkot', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(56, '132 KV Gohad Pur Sialkot', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(57, '132KV Pasrur Road Sialkot', '132', NULL, 1, '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(58, '132 KV City Sialkot', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(59, '132KV Old Power House Sialkot', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(60, '132KV  Kotli Loharan', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(61, '132KV Cantt Sialkot', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(62, '132KV Ghuinke', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(63, '132KV Pasrur', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(64, '132KV Lalapur', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(65, '132KV Zafarwal', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(66, '132KV Kot Agha', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(67, '132KV Narowal', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(68, '132KV Shakar Garh', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(69, '132KV Baddomali', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(70, '132KV Sambrial', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(71, '132KV New Headmarla', '132', NULL, 1, '2025-03-30 04:31:05', '2025-03-30 04:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(191) NOT NULL,
  `earthing_detail_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_08_075501_create_personal_access_tokens_table', 1),
(26, '2025_03_08_085239_companies_table', 2),
(29, '2025_03_08_085257_categories_table', 2),
(33, '2025_03_09_084423_add_picture_to_users_table', 4),
(101, '2025_03_30_062608_create_circles_table', 5),
(102, '2025_03_30_062620_create_grid_stations_table', 5),
(103, '2025_03_30_062635_create_divisions_table', 5),
(104, '2025_03_30_062646_create_sub_divisions_table', 5),
(105, '2025_03_30_062658_create_feeders_table', 5),
(106, '2025_03_30_062660_tower_structures_table', 5),
(107, '2025_03_30_062661_earthing_details_table', 5),
(108, '2025_03_30_062662_images_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(11, 'App\\Models\\User', 2, 'kamran.afzal@barqaab.com_token', 'a71b6bfc136d1cf42955845ebc38fa9b2827dad0290024901f502e53b23bf255', '[\"*\"]', NULL, NULL, '2025-03-09 03:42:07', '2025-03-09 03:42:07'),
(36, 'App\\Models\\User', 3, 'rehan.afzal@barqaab.com_token', '6f19774a4aba9eed0831d77e7b8f0ed4836fd60e0786d9a04a24a4833ace5479', '[\"*\"]', NULL, NULL, '2025-03-15 02:13:30', '2025-03-15 02:13:30'),
(138, 'App\\Models\\User', 1, 'sohail.afzal@barqaab.com_token', '69910f5d01238b9e3bb3d5a92ad19eb28cb7af34019fb650f96953ae1e35310a', '[\"*\"]', NULL, NULL, '2025-03-30 07:22:31', '2025-03-30 07:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('j7uvri6RPQxEW90Hti0Nm0J2oxbtaOOZ389pNhb7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoibW1zNFJ2c3pGcDdtNlh6dVlReDdKbnQ3T0tmZXNGMm9mZjFjdWtXVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJDRxODAydXRvbHRrZXhxOTRqL1dqUGUzQklBcGxVV3VCMGp3VFhYLjBmVXVqUE1Od01FcGVPIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2ZlZWRlcnMvY3JlYXRlIjt9czo2OiJ0YWJsZXMiO2E6Mjp7czoyNToiTGlzdEdyaWRTdGF0aW9uc19wZXJfcGFnZSI7czozOiJhbGwiO3M6MjI6Ikxpc3REaXZpc2lvbnNfcGVyX3BhZ2UiO3M6MzoiYWxsIjt9czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1743328714);

-- --------------------------------------------------------

--
-- Table structure for table `sub_divisions`
--

CREATE TABLE `sub_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_divisions`
--

INSERT INTO `sub_divisions` (`id`, `division_id`, `company_id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'CHAND-DA-QILA', '12136', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(2, 2, 1, 'G.T ROAD', '12125', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(3, 2, 1, 'SHERAN WALA', '12122', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(4, 2, 1, 'PEOPLE\'S COLONY', '12124', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(5, 1, 1, 'KHIALI', '12133', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(6, 2, 1, 'CHAMAN SHAH', '12126', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(7, 3, 1, 'GRW MODEL TOWN', '12111', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(8, 2, 1, 'GUJRANWALA CITY', '12127', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(9, 2, 1, 'GRW CIVIL LINES', '12121', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(10, 4, 1, 'AROOP', '12212', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(11, 2, 1, 'TALWANDI MUSA KHAN', '12123', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(12, 4, 1, 'FREED TOWN', '12213', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(13, 3, 1, 'GARJAKHI GATE', '12112', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(14, 4, 1, 'SHAHEEN ABAD', '12214', '2025-03-30 04:31:01', '2025-03-30 04:31:01'),
(15, 1, 1, 'LADHE WALA', '12132', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(16, 3, 1, 'BAGHBAN PURA', '12113', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(17, 3, 1, 'FAROOQ GUNJ', '12115', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(18, 4, 1, 'GUJRANWALA CANTT.', '12211', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(19, 1, 1, 'EMIN ABAD', '12134', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(20, 5, 1, 'GHAKHAR', '12233', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(21, 5, 1, 'AHMAD NAGAR', '12234', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(22, 5, 1, 'WAZIR ABAD-II', '12232', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(23, 5, 1, 'WAZIR ABAD-I', '12231', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(24, 5, 1, 'NIZAM ABAD', '12235', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(25, 6, 1, 'NOSHERA VIRKAN-1', '12151', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(26, 6, 1, 'NOSHERA VIRKAN-2', '12152', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(27, 6, 1, 'TATLEY AALI', '12153', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(28, 7, 1, 'KAMOKE-II', '12142', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(29, 7, 1, 'KAMOKE-III', '12143', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(30, 7, 1, 'KAMOKE-I', '12141', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(31, 8, 1, 'DASKA-III', '12223', '2025-03-30 04:31:02', '2025-03-30 04:31:02'),
(32, 7, 1, 'WAHANDO', '12146', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(33, 9, 1, 'SATRAH', '12446', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(34, 1, 1, 'QILA DIDAR SINGH', '12131', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(35, 6, 1, 'NOKHAR', '12154', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(36, 5, 1, 'ALI PUR CHATHHA', '12236', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(37, 10, 1, 'ALI PUR CHATHHA', '12236', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(38, 8, 1, 'DASKA-I', '12221', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(39, 8, 1, 'DASKA-NO.4', '12224', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(40, 8, 1, 'DASKA-II', '12222', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(41, 8, 1, 'GUJRANWALA ROAD', '12227', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(42, 10, 1, 'HAFIZ ABAD-4', '12247', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(43, 10, 1, 'HAFIZ ABAD-3', '12246', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(44, 10, 1, 'HAFIZ ABAD-2', '12245', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(45, 10, 1, 'HAFIZ ABAD-1', '12241', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(46, 11, 1, 'SUKHE KE', '12253', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(47, 11, 1, 'KALEKI MANDI', '12255', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(48, 11, 1, 'PINDI BHATIAN', '12252', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(49, 11, 1, 'JALALPUR BHATTIAN', '12251', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(50, 11, 1, 'VANIKEY TARAR', '12254', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(51, 12, 1, 'AKRAM SHAHEED', '12314', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(52, 12, 1, 'GUJRAT S.I ESTATE', '12312', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(53, 12, 1, 'GUJRAT P/HOUSE', '12311', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(54, 13, 1, 'GUJRAT RURAL', '12323', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(55, 13, 1, 'SHADIWAL', '12325', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(56, 13, 1, 'KUNJAH', '12324', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(57, 12, 1, 'MARGHAZAR', '12315', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(58, 14, 1, 'JALAPUR RURAL', '12342', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(59, 12, 1, 'AZIZ BHATTI SHAHID', '12313', '2025-03-30 04:31:03', '2025-03-30 04:31:03'),
(60, 15, 1, 'GULIANA', '12363', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(61, 13, 1, 'LALAMUSA RURAL', '12322', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(62, 13, 1, 'LALAMUSA CITY', '12321', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(63, 13, 1, 'GUJRAT RURAL', '12322', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(64, 15, 1, 'KOTLA-II', '12367', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(65, 15, 1, 'KOTLA-2', '12364', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(66, 14, 1, 'FATEHPUR', '12343', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(67, 14, 1, 'JALALPUR CITY', '12341', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(68, 14, 1, 'KARIANWALA', '12344', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(69, 14, 1, 'TANDA', '12345', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(70, 16, 1, 'KARIANWALA', '12344', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(71, 15, 1, 'KOTLA', '12364', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(72, 16, 1, 'TANDA', '12345', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(73, 16, 1, 'FATEHPUR', '12343', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(74, 15, 1, 'DINGA-I', '12365', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(75, 15, 1, 'DINGA-II', '12366', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(76, 17, 1, 'PAHRIANWALI', '12622', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(77, 16, 1, 'KOTLA-II', '12367', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(78, 16, 1, 'KOTLA', '12364', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(79, 18, 1, 'LALA ZAR', '12613', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(80, 18, 1, 'M.BAHAUDIN URBAN', '12611', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(81, 18, 1, 'SHAHANA LOKE', '12614', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(82, 18, 1, 'M.BAHAUDIN RURAL', '12612', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(83, 15, 1, 'KHARIAN-I', '12361', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(84, 15, 1, 'KHARIAN-II', '12362', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(85, 17, 1, 'MANO CHAK', '12624', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(86, 18, 1, 'MALIKWAL URBAN', '12631', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(87, 18, 1, 'MALIKWAL RURAL', '12632', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(88, 17, 1, 'KUTHIALA SHEIKHAN', '12623', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(89, 17, 1, 'PHALIA', '12621', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(90, 17, 1, 'GOJRA', '12633', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(91, 17, 1, 'RERKA BALA', '12634', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(92, 19, 1, 'DEFENCE ROAD', '12472', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(93, 19, 1, 'SAMBRIAL', '12473', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(94, 19, 1, 'BHOPAL WALA', '12474', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(95, 20, 1, 'CIVIL LINES', '12414', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(96, 20, 1, 'MODEL TOWN', '12413', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(97, 19, 1, 'GOHAD PUR', '12471', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(98, 21, 1, 'GHUINKI', '12422', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(99, 22, 1, 'HEAD MARALA', '12437', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(100, 21, 1, 'AKBARABAD', '12423', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(101, 21, 1, 'PASRUR ROAD', '12424', '2025-03-30 04:31:04', '2025-03-30 04:31:04'),
(102, 20, 1, 'NEIKA PURA', '12415', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(103, 21, 1, 'ZAFARWAL ROAD', '12425', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(104, 22, 1, 'RANGPURA', '12432', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(105, 20, 1, 'POWER HOUSE', '12411', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(106, 20, 1, 'FORT', '12412', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(107, 22, 1, 'KOTLI LOHARAN', '12436', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(108, 22, 1, 'DALOWALI SIALKOT.', '12434', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(109, 22, 1, 'CANTT.', '12433', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(110, 22, 1, 'SAID PUR', '12435', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(111, 9, 1, 'PASRUR-1', '12441', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(112, 9, 1, 'PASRUR-3', '12443', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(113, 9, 1, 'PASRUR-2', '12442', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(114, 9, 1, 'CHAWINDA', '12444', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(115, 9, 1, 'CHOBARA', '12445', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(116, 23, 1, 'ZAFARWAL N0-01', '12521', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(117, 23, 1, 'ZAFARWAL-3', '12523', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(118, 23, 1, 'ZAFARWAL-2', '12522', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(119, 24, 1, 'QILA KALAR WALA', '12515', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(120, 24, 1, 'NAROWAL-2', '12512', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(121, 24, 1, 'NAROWAL-1', '12511', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(122, 24, 1, 'NAROWAL-3', '12513', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(123, 25, 1, 'SHAKARGRAH-1', '12531', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(124, 25, 1, 'SHAKARGRAH-4', '12534', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(125, 25, 1, 'SHAKARGRAH-3', '12533', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(126, 25, 1, 'SHAKARGRAH-2', '12532', '2025-03-30 04:31:05', '2025-03-30 04:31:05'),
(127, 24, 1, 'BADDO MALHI', '12514', '2025-03-30 04:31:05', '2025-03-30 04:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `tower_structures`
--

CREATE TABLE `tower_structures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `picture`) VALUES
(1, 'Sohail Afzal', 'sohail.afzal@barqaab.com', NULL, '$2y$12$4q802utoltkexq94j/WjPe3BIAplUWuB0jwTXX.0fUujPMNwMEpeO', NULL, '2025-03-08 03:14:24', '2025-03-26 00:43:18', 'users/01JQ8FKYE4Z191R128R1HGJHZS.jpg'),
(2, 'Kamran Afzal', 'kamran.afzal@barqaab.com', NULL, '$2y$12$dz34ZSAbYSe8pC1ak86BOuW08aghr2q3l4yUkHCCl2bfXGKDKzClC', NULL, '2025-03-09 03:41:41', '2025-03-09 03:41:41', NULL),
(3, 'Rehan Afzal', 'rehan.afzal@barqaab.com', NULL, '$2y$12$wrL9lLQ1/EaylEY5LZRZ.uH3OYMbl3mn3i/Td0IsYqzYpqzfFxDV2', NULL, '2025-03-09 03:48:01', '2025-03-09 04:11:02', 'users/01JNX1FXB7VG43MK7GJYMQJH63.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circles`
--
ALTER TABLE `circles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `circles_company_id_index` (`company_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `divisions_circle_id_index` (`circle_id`);

--
-- Indexes for table `earthing_details`
--
ALTER TABLE `earthing_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `earthing_details_sub_division_id_foreign` (`sub_division_id`),
  ADD KEY `earthing_details_category_id_foreign` (`category_id`),
  ADD KEY `earthing_details_tower_structure_id_foreign` (`tower_structure_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feeders`
--
ALTER TABLE `feeders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feeders_grid_station_id_foreign` (`grid_station_id`),
  ADD KEY `feeders_circle_id_foreign` (`circle_id`),
  ADD KEY `feeders_division_id_foreign` (`division_id`),
  ADD KEY `feeders_sub_division_id_foreign` (`sub_division_id`),
  ADD KEY `feeders_feeder_code_index` (`feeder_code`),
  ADD KEY `feeders_name_index` (`name`);

--
-- Indexes for table `grid_stations`
--
ALTER TABLE `grid_stations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grid_stations_company_id_foreign` (`company_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_earthing_detail_id_foreign` (`earthing_detail_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sub_divisions`
--
ALTER TABLE `sub_divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_divisions_company_id_foreign` (`company_id`),
  ADD KEY `sub_divisions_division_id_index` (`division_id`);

--
-- Indexes for table `tower_structures`
--
ALTER TABLE `tower_structures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `circles`
--
ALTER TABLE `circles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `earthing_details`
--
ALTER TABLE `earthing_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeders`
--
ALTER TABLE `feeders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- AUTO_INCREMENT for table `grid_stations`
--
ALTER TABLE `grid_stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `sub_divisions`
--
ALTER TABLE `sub_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tower_structures`
--
ALTER TABLE `tower_structures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `circles`
--
ALTER TABLE `circles`
  ADD CONSTRAINT `circles_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `divisions`
--
ALTER TABLE `divisions`
  ADD CONSTRAINT `divisions_circle_id_foreign` FOREIGN KEY (`circle_id`) REFERENCES `circles` (`id`);

--
-- Constraints for table `earthing_details`
--
ALTER TABLE `earthing_details`
  ADD CONSTRAINT `earthing_details_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `earthing_details_sub_division_id_foreign` FOREIGN KEY (`sub_division_id`) REFERENCES `sub_divisions` (`id`),
  ADD CONSTRAINT `earthing_details_tower_structure_id_foreign` FOREIGN KEY (`tower_structure_id`) REFERENCES `tower_structures` (`id`);

--
-- Constraints for table `feeders`
--
ALTER TABLE `feeders`
  ADD CONSTRAINT `feeders_circle_id_foreign` FOREIGN KEY (`circle_id`) REFERENCES `circles` (`id`),
  ADD CONSTRAINT `feeders_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`),
  ADD CONSTRAINT `feeders_grid_station_id_foreign` FOREIGN KEY (`grid_station_id`) REFERENCES `grid_stations` (`id`),
  ADD CONSTRAINT `feeders_sub_division_id_foreign` FOREIGN KEY (`sub_division_id`) REFERENCES `sub_divisions` (`id`);

--
-- Constraints for table `grid_stations`
--
ALTER TABLE `grid_stations`
  ADD CONSTRAINT `grid_stations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_earthing_detail_id_foreign` FOREIGN KEY (`earthing_detail_id`) REFERENCES `earthing_details` (`id`);

--
-- Constraints for table `sub_divisions`
--
ALTER TABLE `sub_divisions`
  ADD CONSTRAINT `sub_divisions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `sub_divisions_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
