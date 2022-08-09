-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220607.1684aa8b89
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 03:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `back-end`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `name`, `address`, `phone`, `city`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'youssef', '2 street, street', '01202732552', 'cairo', 0, 4, '2022-06-02 00:03:43', '2022-06-02 00:03:43'),
(2, 'mohamed', 'aertthhh bhhh hhh', '011122255565', 'cairo', 0, 1, '2022-06-02 00:53:34', '2022-06-02 00:53:34'),
(3, 'Gcc news', '2 streetsfjksfksklslskjsfjkflsfkl', '01202732552', 'cairo', 0, 1, '2022-06-02 00:58:17', '2022-06-02 00:58:17'),
(4, 'ahmed', '2 street gvhyughubhjb jbb', '465464554545', 'cairo', 0, 2, '2022-06-02 01:00:06', '2022-06-02 01:00:06'),
(5, 'youssef', '2 street hghubhj hvhbjk hyg', '4562696265', 'cairo', 0, 3, '2022-06-02 01:01:31', '2022-06-02 01:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categeries`
--

CREATE TABLE `categeries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categeries`
--

INSERT INTO `categeries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'mobiles &tablets', NULL, NULL),
(2, 'laptops', NULL, NULL),
(3, 'accessories', NULL, NULL),
(4, 'headphones', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2012_05_02_000_create_users_table', 1),
(2, '2012_05_19_205232_create_products_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2022_05_19_183652_create_sessions_table', 1),
(8, '2022_05_19_190750_create_contact_form_controllers_table', 1),
(9, '2022_05_19_205622_create_categeries_table', 1),
(10, '2022_05_19_205759_add_category_id_to_products_table', 1),
(11, '2022_05_19_210538_create_carts_table', 1),
(12, '2022_05_19_211212_create_favourites_table', 1),
(13, '2022_05_19_211431_create_addresses_table', 1),
(14, '2022_05_19_211452_create_orders_table', 1),
(15, '2022_05_19_211716_create_sales_returns_table', 1),
(16, '2022_05_19_212416_create_bills_table', 1),
(17, '2022_05_19_212736_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`products`)),
  `total_price` decimal(13,4) NOT NULL DEFAULT 0.0000,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_type` tinyint(1) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `products`, `total_price`, `status`, `delivery_type`, `user_id`, `address_id`, `created_at`, `updated_at`) VALUES
(1, '[{\"id\":4,\"quantity\":2},{\"id\":5,\"quantity\":2},{\"id\":6,\"quantity\":1}]', '19450.0000', 1, 1, 4, 1, '2022-06-01 00:45:53', '2022-06-02 00:46:56'),
(2, '[{\"id\":11,\"quantity\":1},{\"id\":9,\"quantity\":3},{\"id\":12,\"quantity\":2}]', '14700.0000', 0, 0, 1, 2, '2022-06-02 00:53:57', '2022-06-02 00:53:57'),
(3, '[{\"id\":7,\"quantity\":2},{\"id\":6,\"quantity\":1},{\"id\":5,\"quantity\":1}]', '15650.0000', 1, 1, 2, 4, '2022-06-03 01:00:23', '2022-06-02 01:03:29'),
(4, '[{\"id\":7,\"quantity\":1},{\"id\":11,\"quantity\":1},{\"id\":10,\"quantity\":1},{\"id\":4,\"quantity\":1}]', '3084.0000', 0, 0, 3, 5, '2022-06-04 01:02:18', '2022-06-02 01:02:18'),
(5, '[{\"id\":5,\"quantity\":2},{\"id\":7,\"quantity\":2},{\"id\":9,\"quantity\":1},{\"id\":10,\"quantity\":1}]', '12634.2000', 1, 1, 4, 1, '2022-06-07 15:02:08', '2022-06-07 15:02:50'),
(6, '[{\"id\":5,\"quantity\":1},{\"id\":7,\"quantity\":1},{\"id\":9,\"quantity\":1}]', '6750.0000', 0, 1, 1, 3, '2022-06-07 15:04:19', '2022-06-07 15:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'yousse_Token', '0822c6205d855386824a080a507bb1108331377a661d5eb5806bc046681305af', '[\"*\"]', NULL, '2022-06-02 00:03:05', '2022-06-02 00:03:05'),
(2, 'App\\Models\\User', 4, 'yousse_Token', '88080e0dc46a741e0afcb8e2e7f470813556f258f16e70e55ea85acec8d80c43', '[\"*\"]', NULL, '2022-06-02 00:13:30', '2022-06-02 00:13:30'),
(3, 'App\\Models\\User', 4, 'yousse_Token', 'acb961c365ba350247dfdc32ee39051096b3564feb4b914451b6e808ef00ff37', '[\"*\"]', NULL, '2022-06-02 00:20:18', '2022-06-02 00:20:18'),
(4, 'App\\Models\\User', 1, 'mohamed_Token', '2f3c179a394051cb0daab12042710c22be9ed3510155ce0f80161db12f6bbfef', '[\"*\"]', NULL, '2022-06-02 00:51:13', '2022-06-02 00:51:13'),
(5, 'App\\Models\\User', 1, 'mohamed_Token', '2eeba0899192a1dab02e0d667faca30a1b2e3c2f445176165f965dbc8cd94042', '[\"*\"]', NULL, '2022-06-02 00:56:56', '2022-06-02 00:56:56'),
(6, 'App\\Models\\User', 2, 'ahmed_Token', '1e64ffe34f79e0babee8dce8122864721bdedca0fd3d454e6c92ae9c9666e190', '[\"*\"]', NULL, '2022-06-02 00:59:18', '2022-06-02 00:59:18'),
(7, 'App\\Models\\User', 3, 'youssef_Token', '5742fbe93a870a9dfb9a18c8635dcb76655a20952d762fbd3333e69e5e9d254f', '[\"*\"]', NULL, '2022-06-02 01:01:01', '2022-06-02 01:01:01'),
(8, 'App\\Models\\User', 4, 'yousse_Token', '25369900941523f570f496307e538e0756c4a70e40d44674859fa80965653fb7', '[\"*\"]', NULL, '2022-06-02 01:02:34', '2022-06-02 01:02:34'),
(9, 'App\\Models\\User', 4, 'yousse_Token', 'a28bac3d5f0992a5fce83689b333d62a49abd4d9d22651ca0bda5ea26185e6ea', '[\"*\"]', NULL, '2022-06-02 01:14:26', '2022-06-02 01:14:26'),
(10, 'App\\Models\\User', 4, 'yousse_Token', '0d616080d3645f4a5eb07462f7f7fbc6b6536c816016bdd7bc997e6b7170a216', '[\"*\"]', NULL, '2022-06-02 01:56:52', '2022-06-02 01:56:52'),
(11, 'App\\Models\\User', 4, 'yousse_Token', 'cc7e575df1b6ac930d6cd649dc6f592f41b148d90bdda6de3c0aa4706f842980', '[\"*\"]', NULL, '2022-06-02 09:53:12', '2022-06-02 09:53:12'),
(12, 'App\\Models\\User', 4, 'yousse_Token', 'ab25b6d106689e4d6af1a88553e3e4eae1c29bba6dcdbde59193ebbf38a0a35d', '[\"*\"]', NULL, '2022-06-02 11:41:44', '2022-06-02 11:41:44'),
(13, 'App\\Models\\User', 4, 'yousse_Token', '975b5d9a0140123d0b053432342d637b8bd56c242229bdea611c0b06d58eb0c9', '[\"*\"]', NULL, '2022-06-04 18:46:50', '2022-06-04 18:46:50'),
(14, 'App\\Models\\User', 4, 'yousse_Token', 'b540a9c7f7cb8bfcea0fdad54a738b3c5f525050d5f2bfb5aff600ee60d5c1de', '[\"*\"]', NULL, '2022-06-04 19:59:08', '2022-06-04 19:59:08'),
(15, 'App\\Models\\User', 5, 'mezoooooooooo_Token', '5ec1efaf52a584d3161f916d8c4f13f7dabffb7423ddd31a1abdf584538e206e', '[\"*\"]', NULL, '2022-06-04 20:00:12', '2022-06-04 20:00:12'),
(16, 'App\\Models\\User', 4, 'yousse_Token', '09d81b337d1a721bd931bacae39bd79028a33571862ab5e31f090e68ecd6f60a', '[\"*\"]', NULL, '2022-06-04 20:00:23', '2022-06-04 20:00:23'),
(17, 'App\\Models\\User', 4, 'yousse_Token', '01614161740ae44a904f2bbcb7c065ccaf34ed894fb50ee025271177ad62b939', '[\"*\"]', NULL, '2022-06-04 20:11:18', '2022-06-04 20:11:18'),
(18, 'App\\Models\\User', 4, 'yousse_Token', '717f2a5284ca2a74aaa83df6095bd88bca1f31b9b88ad1ac6fd9bdb134c13145', '[\"*\"]', NULL, '2022-06-04 20:27:29', '2022-06-04 20:27:29'),
(19, 'App\\Models\\User', 4, 'yousse_Token', 'f003833dd29667afb8e26f8ee8ee17f0b6d9873a9080065bc63c6a4d6cf57e0f', '[\"*\"]', NULL, '2022-06-06 22:37:26', '2022-06-06 22:37:26'),
(20, 'App\\Models\\User', 4, 'yousse_Token', '7650a670557d4bb5af6fe39f1a9134a988ad34ed455b983489ed39b4bf64347d', '[\"*\"]', NULL, '2022-06-06 22:37:27', '2022-06-06 22:37:27'),
(21, 'App\\Models\\User', 4, 'yousse_Token', '3d24ce620b1746ee2a1858142541d23a8b7cc4a0cf7f30b00635ef2bbce9c28d', '[\"*\"]', NULL, '2022-06-07 13:03:21', '2022-06-07 13:03:21'),
(22, 'App\\Models\\User', 4, 'yousse_Token', 'e764a40ab3565207c084a2564be7aea4c4a8f594bf3227d2c0e0e07935165940', '[\"*\"]', NULL, '2022-06-07 13:05:54', '2022-06-07 13:05:54'),
(23, 'App\\Models\\User', 4, 'yousse_Token', '15fa31e6d791422c5ffb896ae66bf5fb5460117c0ed86edfef982dd83c45e6eb', '[\"*\"]', NULL, '2022-06-07 13:07:44', '2022-06-07 13:07:44'),
(24, 'App\\Models\\User', 4, 'yousse_Token', '67d220df0351bf53aa6e690a36d0a7872059aa2fd54b831d4452799a9690fa4a', '[\"*\"]', NULL, '2022-06-07 13:19:53', '2022-06-07 13:19:53'),
(25, 'App\\Models\\User', 4, 'yousse_Token', 'fdeb668ef2179df70143a702088e284c116d779e33694672e01e4033d128d550', '[\"*\"]', NULL, '2022-06-07 13:25:28', '2022-06-07 13:25:28'),
(26, 'App\\Models\\User', 10, 'mazen_Token', '3fd81c28701a47cf6d035f581cdd34efc50149db8aa0aa4f4e0070fafb1acb6b', '[\"*\"]', NULL, '2022-06-07 14:55:34', '2022-06-07 14:55:34'),
(27, 'App\\Models\\User', 10, 'mazen_Token', 'ff2993a06130ebdbb381ca479ce3304f2804897cc42a269e595f50624b7762b6', '[\"*\"]', NULL, '2022-06-07 14:56:22', '2022-06-07 14:56:22'),
(28, 'App\\Models\\User', 4, 'yousse_Token', 'fd36954427fe96ae111c8162dcdc3b9a7fad96590e585b9dd5f8aeb4c318626e', '[\"*\"]', NULL, '2022-06-07 15:00:59', '2022-06-07 15:00:59'),
(29, 'App\\Models\\User', 1, 'mohamed_Token', 'fd515259fe109e3f41f6a4e3c7e127028a1b48dbc4ddb3b3f7a3047742b2925f', '[\"*\"]', NULL, '2022-06-07 15:03:58', '2022-06-07 15:03:58'),
(30, 'App\\Models\\User', 4, 'yousse_Token', 'c874f10abcbcdefbae8b8a35adc855970ba2422f223f5a10241c6a0196407a78', '[\"*\"]', NULL, '2022-06-07 15:04:43', '2022-06-07 15:04:43'),
(31, 'App\\Models\\User', 4, 'yousse_Token', '98a4497fa3cfabad900f3d311c23b924ffcaaaab0a6ef24ebc63202872024289', '[\"*\"]', NULL, '2022-06-07 16:43:31', '2022-06-07 16:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(13,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `Quantity`, `details`, `photo`, `price`, `created_at`, `updated_at`, `category_id`) VALUES
(7, 'airpods nokiaع', '94', 'airpods nokia  medical for grandmothers', 'uploads/product_images/1654136619.jpg', '800.0000', '2022-06-02 00:23:39', '2022-06-07 16:44:24', 4),
(9, 'soundcore', '739', 'soundcore not throw it in recycle bin', 'uploads/product_images/1654136900.jpg', '900.0000', '2022-06-02 00:28:20', '2022-06-07 15:04:19', 4),
(10, 'handfree', '198', 'handfree for hard use', 'uploads/product_images/1654136975.jpg', '84.2000', '2022-06-02 00:29:35', '2022-06-07 15:02:08', 4),
(11, 'table lenovoo', '48', 'tablet cover lenovo for kids', 'uploads/product_images/1654137030.jpg', '2000.0000', '2022-06-02 00:30:30', '2022-06-02 01:58:52', 3),
(12, 'mobile realme note21', '1998', 'mobile realme note21 4G 64Gega', 'uploads/product_images/1654137092.jpg', '5000.0000', '2022-06-02 00:31:32', '2022-06-02 00:53:57', 1),
(13, 'headphone iphone', '20000', 'headphone iphone old but gold', 'uploads/product_images/1654137151.jpg', '2000.0000', '2022-06-02 00:32:31', '2022-06-02 00:32:31', 4),
(14, 'mobile cover', '45', 'mobile cover for iphone', 'uploads/product_images/1654137207.jpg', '500.0000', '2022-06-02 00:33:28', '2022-06-02 00:33:28', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales_returns`
--

CREATE TABLE `sales_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('QoxQ0q093Ee3KkLumQmuFStMoHO0JLRfxp5CCvCL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNjd4c1RlUEZyZ1FpM0YzS1g1ck55U0NtYmllcnE1eGEyVDJ3OEdkaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1654375593),
('RFh4ve3uPagh4ZY8mJjPndu7g2zSYNuFrv14or1R', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2dqYTRBUFFXQWVOZm5YbWxpRWp0T1BRVklDcUxUMDNjUThUNHZtRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1654134726);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Is_Admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_of_birth` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `token`, `Is_Admin`, `status`, `date_of_birth`, `created_at`, `updated_at`) VALUES
(1, 'mohamed', 'mo@gmail.com', NULL, '$2y$10$jBYg8V8wU4otKArJ8Ra4geDPCRpSUtVRFmbUJPpcLFQaA6GWKZut.', NULL, NULL, NULL, NULL, NULL, 'uploads/users_images/1654138293.jpg', NULL, 0, 1, '2000-10-20', NULL, '2022-06-07 15:04:37'),
(2, 'ahmed', 'a@gmail.com', NULL, '$2y$10$tM4h.7cf9kpJYzZrpR2Lu.uA41pX7WkNyZW09NH.0ZjdH49VdBU7C', NULL, NULL, NULL, NULL, NULL, 'uploads/users_images/1654138769.png', NULL, 0, 1, '2000-10-20', NULL, '2022-06-02 01:00:33'),
(3, 'youssef', 'y@gmail.com', NULL, '$2y$10$oSvwRyWZ/uA.x1pc0mpz1.mKeyDttrfifylNwXGh60M9/S2G3roDy', NULL, NULL, NULL, NULL, NULL, 'uploads/users_images/1654138869.jpg', NULL, 0, 1, '2000-10-20', NULL, '2022-06-02 01:02:25'),
(4, 'yousse', 'youssefsalahcs@gmail.com', '2022-06-02 00:02:55', '$2y$10$HRCT7r94aEBdYn.Aennt7e2agNnoqHnD.197OJ0/WKnOw705weUQ6', NULL, NULL, NULL, NULL, NULL, 'uploads/users_images/1654138965.png', '31|bQCVGsCXVjkowgd33xwq9AHWnCcufKZcOtdULmkd', 1, 1, '2001-03-01', '2022-06-02 00:01:47', '2022-06-07 16:43:31'),
(9, 'kariam', 'kariam@gmail.com', NULL, '$2y$10$j8Rd0FwiMnBC6QX92d8e8e6sRci1sDhTeplsvt1blBewg.o1e9/nm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2000-12-03', '2022-06-07 13:25:20', '2022-06-07 13:25:20'),
(10, 'mazen', 'mazenshref1239@gmail.com', '2022-06-07 14:55:27', '$2y$10$EdNSq73u9yl.Sryi66GK4uX3kT/UPF7tMagXBo.jxiTbdjAgf42Hm', NULL, NULL, NULL, NULL, NULL, 'uploads/users_images/1654621058.jpg', NULL, 0, 1, '2000-12-03', '2022-06-07 14:54:52', '2022-06-07 14:58:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categeries`
--
ALTER TABLE `categeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourites_user_id_foreign` (`user_id`),
  ADD KEY `favourites_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_address_id_foreign` (`address_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales_returns`
--
ALTER TABLE `sales_returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_returns_order_id_foreign` (`order_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categeries`
--
ALTER TABLE `categeries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sales_returns`
--
ALTER TABLE `sales_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categeries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_returns`
--
ALTER TABLE `sales_returns`
  ADD CONSTRAINT `sales_returns_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



