-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 03:44 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 1, NULL, '2021-06-01 02:42:39', '2021-06-01 02:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brands_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bangladeshi', 1, NULL, '2021-06-01 22:54:42', '2021-06-01 22:54:42'),
(2, 'Malaysian', 1, 1, '2021-06-01 23:03:59', '2021-06-01 23:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Refrigerator', 1, 1, '2021-06-01 08:07:24', '2021-06-05 00:03:57'),
(4, 'Mobile', 1, 1, '2021-06-01 10:02:40', '2021-06-05 00:04:08'),
(5, 'Fan', 1, NULL, '2021-06-05 00:04:43', '2021-06-05 00:04:43'),
(6, 'Air Conditioner', 1, NULL, '2021-06-05 00:05:01', '2021-06-05 00:05:01'),
(7, 'Washing Machine', 1, NULL, '2021-06-05 00:05:48', '2021-06-05 00:05:48'),
(8, 'Kitchen Appliances', 1, NULL, '2021-06-05 00:07:00', '2021-06-05 00:07:00'),
(9, 'LED Light', 1, NULL, '2021-06-05 00:07:27', '2021-06-05 00:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `colors_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Blue', 1, NULL, '2021-06-02 02:35:03', '2021-06-02 02:35:03'),
(2, 'Red', 1, NULL, '2021-06-02 02:35:32', '2021-06-02 02:35:32'),
(4, 'Green', 1, NULL, '2021-06-02 02:43:28', '2021-06-02 02:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `communicates`
--

CREATE TABLE IF NOT EXISTS `communicates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communicates`
--

INSERT INTO `communicates` (`id`, `name`, `email`, `mobile_no`, `address`, `msg`, `created_at`, `updated_at`) VALUES
(31, 'Jone Doe', 'sagarbd767@gmail.com', '01689174317', 'Dattapara, Ashulia, Savar, Dhaka', 'This is my message', '2021-04-20 07:10:21', '2021-04-20 07:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `mobile_no`, `email`, `facebook`, `twitter`, `youtube`, `google_plus`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Dattapara, Ashulia, Savar, Dhaka', '01689174317', 'shahriar@gmail.com', 'https://www.facebook.com/shahriar.islam.5', 'https://twitter.com/ShahriarIslam__', 'youtube.com', 'googleplus.com', 1, NULL, '2021-04-18 00:15:00', '2021-04-18 00:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE IF NOT EXISTS `logos` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, '202106141358logoEcommerce.jpg', 1, 1, '2021-04-18 22:03:29', '2021-06-14 07:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2014_10_12_000000_create_users_table', 2),
(5, '2021_04_15_034001_create_logos_table', 3),
(6, '2021_04_15_100336_create_sliders_table', 4),
(11, '2021_04_18_045715_create_contacts_table', 9),
(12, '2021_04_18_075951_create_abouts_table', 10),
(13, '2021_04_20_035249_create_communicates_table', 11),
(14, '2021_06_01_133139_create_categories_table', 12),
(15, '2021_06_02_043458_create_brands_table', 13),
(16, '2021_06_02_082441_create_colors_table', 14),
(17, '2021_06_02_103408_create_sizes_table', 15),
(18, '2021_06_03_024431_create_products_table', 16),
(19, '2021_06_03_024537_create_product_sizes_table', 16),
(20, '2021_06_03_024625_create_product_colors_table', 16),
(21, '2021_06_03_024720_create_product_sub_images_table', 16),
(22, '2021_06_11_163631_create_shippings_table', 17),
(23, '2021_06_11_164150_create_payments_table', 17),
(24, '2021_06_11_164339_create_orders_table', 18),
(25, '2021_06_11_165221_create_order_details_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'user_id=customer_id',
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `order_total` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending and 1=approaved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `shipping_id`, `payment_id`, `order_no`, `order_total`, `status`, `created_at`, `updated_at`) VALUES
(3, 37, 2, 3, 1, 172000, 1, '2021-06-12 05:31:28', '2021-06-12 05:31:28'),
(8, 40, 3, 9, 6, 100000, 1, '2021-06-12 11:05:49', '2021-06-13 22:06:54'),
(9, 37, 7, 10, 7, 80000, 1, '2021-06-13 01:42:53', '2021-06-13 01:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `color_id`, `size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 3, 14, 1, 9, 4, '2021-06-12 05:31:28', '2021-06-12 05:31:28'),
(2, 3, 16, 2, 10, 2, '2021-06-12 05:31:28', '2021-06-12 05:31:28'),
(3, 4, 19, 4, 9, 3, '2021-06-12 10:11:49', '2021-06-12 10:11:49'),
(4, 4, 14, 1, 9, 2, '2021-06-12 10:11:49', '2021-06-12 10:11:49'),
(5, 5, 15, 1, 10, 2, '2021-06-12 10:42:49', '2021-06-12 10:42:49'),
(6, 5, 17, 1, 11, 3, '2021-06-12 10:42:49', '2021-06-12 10:42:49'),
(7, 6, 18, 1, 9, 2, '2021-06-12 10:43:46', '2021-06-12 10:43:46'),
(8, 8, 19, 4, 9, 2, '2021-06-12 11:05:49', '2021-06-12 11:05:49'),
(9, 9, 10, 1, 11, 2, '2021-06-13 01:42:53', '2021-06-13 01:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_method`, `transaction_no`, `created_at`, `updated_at`) VALUES
(3, 'Hand Cash', NULL, '2021-06-12 05:31:28', '2021-06-12 05:31:28'),
(5, 'Hand Cash', NULL, '2021-06-12 10:11:49', '2021-06-12 10:11:49'),
(6, 'Bkash', NULL, '2021-06-12 10:42:49', '2021-06-12 10:42:49'),
(7, 'Bkash', NULL, '2021-06-12 10:43:46', '2021-06-12 10:43:46'),
(8, 'Bkash', NULL, '2021-06-12 10:43:57', '2021-06-12 10:43:57'),
(9, 'Hand Cash', NULL, '2021-06-12 11:05:49', '2021-06-12 11:05:49'),
(10, 'Hand Cash', NULL, '2021-06-13 01:42:53', '2021-06-13 01:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `short_desc`, `long_desc`, `image`, `created_at`, `updated_at`) VALUES
(10, 1, 1, 'WFC-3D8-GDEL-XX-ID-update-364x364', 'wfc-3d8-gdel-xx-id-update-364x364', 40000, 'Good Looking', 'It is a long established fact that a reader will be distracted.', '202106050611WFC-3D8-GDEL-XX-ID-update-364x364.jpg', '2021-06-03 11:06:41', '2021-06-05 00:11:40'),
(12, 1, 1, 'GLED-2A5', 'gled-2a5', 34700, 'Good Looking', 'Very nice to see.', '2021060506131-364x364.jpg', '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(13, 1, 1, '3A7', '3a7', 32500, 'Good', 'Looking nice', '2021060506151-364x3643.jpg', '2021-06-05 00:15:02', '2021-06-05 00:15:02'),
(14, 4, 1, 'CR7', 'cr7', 8000, 'Good', 'Looking nice', '202106050620smart-phone-half-block.jpg', '2021-06-05 00:20:20', '2021-06-05 00:20:20'),
(15, 4, 1, 'Promo', 'promo', 9900, 'Good', 'Nice looking', '202106050621smart-phone-half-block.jpg', '2021-06-05 00:21:48', '2021-06-05 00:21:48'),
(16, 6, 2, 'Air Conditioner Gray', 'air-conditioner-gray', 70000, 'Look', 'Nice to see and use.', '202106051017acnew-500x500.png', '2021-06-05 04:17:26', '2021-06-05 04:38:28'),
(17, 5, 2, 'Fan', 'fan', 40000, 'Selling Fan', 'This is long desc', '202106051042fan-500x500.png', '2021-06-05 04:42:21', '2021-06-05 04:42:21'),
(18, 9, 1, 'Motorcycle', 'motorcycle', 80000, 'Good look.', 'Very nice to see.', '202106051118e-bike-icon-500x500.png', '2021-06-05 05:18:09', '2021-06-05 05:18:09'),
(19, 7, 2, 'Electric Generator', 'electric-generator', 50000, 'Generator', 'This is a generator', '202106051120generator-500x500.png', '2021-06-05 05:20:10', '2021-06-05 05:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE IF NOT EXISTS `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(7, 10, 1, '2021-06-05 00:11:40', '2021-06-05 00:11:40'),
(8, 12, 1, '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(9, 12, 2, '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(10, 12, 4, '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(11, 13, 4, '2021-06-05 00:15:02', '2021-06-05 00:15:02'),
(12, 14, 1, '2021-06-05 00:20:20', '2021-06-05 00:20:20'),
(13, 15, 1, '2021-06-05 00:21:48', '2021-06-05 00:21:48'),
(14, 15, 2, '2021-06-05 00:21:48', '2021-06-05 00:21:48'),
(16, 16, 2, '2021-06-05 04:38:28', '2021-06-05 04:38:28'),
(17, 17, 1, '2021-06-05 04:42:21', '2021-06-05 04:42:21'),
(18, 18, 1, '2021-06-05 05:18:09', '2021-06-05 05:18:09'),
(19, 18, 2, '2021-06-05 05:18:09', '2021-06-05 05:18:09'),
(20, 19, 1, '2021-06-05 05:20:10', '2021-06-05 05:20:10'),
(21, 19, 4, '2021-06-05 05:20:10', '2021-06-05 05:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE IF NOT EXISTS `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(11, 10, 10, '2021-06-05 00:11:40', '2021-06-05 00:11:40'),
(12, 10, 11, '2021-06-05 00:11:40', '2021-06-05 00:11:40'),
(13, 12, 9, '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(14, 12, 10, '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(15, 13, 10, '2021-06-05 00:15:02', '2021-06-05 00:15:02'),
(16, 14, 9, '2021-06-05 00:20:20', '2021-06-05 00:20:20'),
(17, 15, 10, '2021-06-05 00:21:48', '2021-06-05 00:21:48'),
(19, 16, 10, '2021-06-05 04:38:28', '2021-06-05 04:38:28'),
(20, 17, 11, '2021-06-05 04:42:21', '2021-06-05 04:42:21'),
(21, 18, 9, '2021-06-05 05:18:09', '2021-06-05 05:18:09'),
(22, 19, 9, '2021-06-05 05:20:10', '2021-06-05 05:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_images`
--

CREATE TABLE IF NOT EXISTS `product_sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `sub_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_images`
--

INSERT INTO `product_sub_images` (`id`, `product_id`, `sub_image`, `created_at`, `updated_at`) VALUES
(36, 10, '202106050611WFC-3D8-GDEL-XX-ID-update-364x364.jpg', '2021-06-05 00:11:40', '2021-06-05 00:11:40'),
(37, 10, '202106050611WFC-3D8-gd-in-364x364.jpg', '2021-06-05 00:11:40', '2021-06-05 00:11:40'),
(38, 10, '202106050611WFC-3D8-GDXX-ID-Update-364x364.jpg', '2021-06-05 00:11:40', '2021-06-05 00:11:40'),
(39, 12, '2021060506131-364x364.jpg', '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(40, 12, '202106050613WFC-3F5-GDNE-XX-ID-1-364x364.jpg', '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(41, 12, '202106050613WFC-3F5-GDNE-XX-ID-inverter-364x364.jpg', '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(42, 12, '202106050613WFE-3E8-GDEL_ID_Edited-364x364.jpg', '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(43, 12, '202106050613WFE-3E8-GDXX-XX-364x364.jpg', '2021-06-05 00:13:40', '2021-06-05 00:13:40'),
(44, 13, '2021060506151-364x3643.jpg', '2021-06-05 00:15:02', '2021-06-05 00:15:02'),
(45, 14, '202106050620mob-thumb-500x500.png', '2021-06-05 00:20:20', '2021-06-05 00:20:20'),
(46, 14, '202106050620smart-phone-half-block.jpg', '2021-06-05 00:20:20', '2021-06-05 00:20:20'),
(47, 15, '202106050621smart-phone-half-block.jpg', '2021-06-05 00:21:48', '2021-06-05 00:21:48'),
(48, 16, '202106051017acnew-500x500.png', '2021-06-05 04:17:26', '2021-06-05 04:17:26'),
(49, 17, '202106051042fan-500x500.png', '2021-06-05 04:42:21', '2021-06-05 04:42:21'),
(50, 18, '202106051118e-bike-icon-500x500.png', '2021-06-05 05:18:09', '2021-06-05 05:18:09'),
(51, 19, '202106051120generator-500x500.png', '2021-06-05 05:20:10', '2021-06-05 05:20:10'),
(52, 19, '202106051120hardware-500x500.png', '2021-06-05 05:20:10', '2021-06-05 05:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE IF NOT EXISTS `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT 'user_id=customer_id',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `name`, `email`, `mobile_no`, `address`, `created_at`, `updated_at`) VALUES
(1, 37, 'Shahriar', 'abc@gmail.com', '01300674153', 'Dhaka', '2021-06-12 02:10:56', '2021-06-12 02:10:56'),
(2, 37, 'Shahriar', 'shahriarbrine201@gmail.com', '01689174317', 'Dhaka', '2021-06-12 04:25:10', '2021-06-12 04:25:10'),
(3, 37, 'Mohammad', 'mohammad@gmail.com', '01689174317', 'Dhaka', '2021-06-12 10:11:41', '2021-06-12 10:11:41'),
(4, 1, 'Shahriar', 'shahriarbrine201@gmail.com', '01689174317', 'Dhaka', '2021-06-13 00:27:36', '2021-06-13 00:27:36'),
(5, 1, 'Shahriar', 'shahriarbrine201@gmail.com', '01689174317', 'Dhaka', '2021-06-13 00:28:42', '2021-06-13 00:28:42'),
(6, 1, 'Shahriar', 'shahriarbrine201@gmail.com', '01689174311', 'Dhaka', '2021-06-13 00:29:19', '2021-06-13 00:29:19'),
(7, 37, 'Sagar', 'abc@gmail.com', '01300674153', 'Dhaka', '2021-06-13 01:42:47', '2021-06-13 01:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE IF NOT EXISTS `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sizes_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, 'S', 1, NULL, '2021-06-03 11:04:34', '2021-06-03 11:04:34'),
(8, 'M', 1, NULL, '2021-06-03 11:04:40', '2021-06-03 11:04:40'),
(9, 'L', 1, NULL, '2021-06-03 11:04:45', '2021-06-03 11:04:45'),
(10, 'XL', 1, NULL, '2021-06-03 11:04:51', '2021-06-03 11:04:51'),
(11, 'XXL', 1, NULL, '2021-06-03 11:04:57', '2021-06-03 11:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `short_title`, `long_title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, '202106050602direct-slider-h-d.jpg', 'First Slide', 'This is a description for the first slide.', 1, 1, '2021-04-18 22:18:50', '2021-06-05 00:02:25'),
(13, '202106050602Direct-Cool20Landing20Page.jpg', 'Second Slider', 'This is a description for the second slide.', 1, 1, '2021-06-04 20:19:51', '2021-06-05 00:02:37'),
(14, '202106050617rx8-slider.jpg', 'Third Slider', 'This is a description for the third slider.', 1, 1, '2021-06-04 20:20:09', '2021-06-05 00:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `name`, `email`, `role`, `email_verified_at`, `password`, `mobile`, `code`, `address`, `gender`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Shahriar Islam', 'shahriar@gmail.com', 'admin', NULL, '$2y$10$Dc2y2AKDHCk1KqlEQKNmX.YR7Kh/1GKNhX7lYV0VsINZn1HQWJ2Ta', '01689174317', NULL, 'Dattapara, Ashulia, Savar, Dhaka, Bangladesh', 'Male', '202104131400Photo.jpg', 1, NULL, NULL, '2021-04-14 07:14:33'),
(27, 'admin', 'Sagar', 'sagar@gmail.com', 'admin', NULL, '$2y$10$Sbvr0IJZ0gGheB8YRCC2eetQXnyW.ZuVXtFXwCktfyaCdOX2.x7Oe', '2343545245', NULL, 'Shadullapur, Kaliakair, Gazipur, Dhaka', 'Male', '202104141620Capture.PNG', 1, NULL, '2021-04-14 04:43:15', '2021-04-14 10:30:41'),
(33, 'user', 'Shawon', 'shawon@gmail.com', NULL, NULL, '$2y$10$xAa6WcvGPbYdxnpVY.BfQuCDIlt3zPd3rKa224D6vEhlZSZo7N12a', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-04-14 10:32:10', '2021-04-14 10:32:10'),
(37, 'customer', 'Shahriar', 'shahriarbrine201@gmail.com', NULL, NULL, '$2y$10$JlahMqoktXeK9R8OJLtjMevBgpRld3R4zLwP0XiAOusbUpi6tbFWK', '01300674153', '6215', 'Mohammadpur, Dhaka', 'Male', '202106101442browser.png', 1, NULL, '2021-06-08 09:22:04', '2021-06-10 09:26:17'),
(40, 'customer', 'Rahul', 'rahul@gmail.com', 'user', NULL, '$2y$10$VEKPdiwn9FIJ4gkiSF5Oe..uWJe3UmJNOVTWlYI3vJw5YG/A6fIJO', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-10 04:33:00', '2021-06-10 04:33:00'),
(41, 'admin', 'Karim', 'karim@gmail.com', 'user', NULL, '$2y$10$vahDCjQzoYKgizV0IbWqxOlcKMsikZoNWZ2UhoGymQPWxH.Eq2q0e', NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-06-14 07:59:52', '2021-06-14 07:59:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
