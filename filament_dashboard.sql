-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 18, 2024 at 08:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `filament_dashboard`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:2;', 1734503045),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1734503044;', 1734503044),
('c249f2149727eeb79f1792b01e586e68c4ec6608', 'i:1;', 1734504005),
('c249f2149727eeb79f1792b01e586e68c4ec6608:timer', 'i:1734504005;', 1734504005);

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'hello', '2024-12-16 05:10:38', '2024-12-16 05:11:16'),
(2, 3, 'asdasdasdasd', '2024-12-17 02:22:33', '2024-12-17 02:22:33'),
(3, 3, 'asdadasdadasd', '2024-12-17 02:22:50', '2024-12-17 02:22:50');

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
(4, '2024_12_16_095728_create_messages_table', 2),
(6, '2024_12_16_134854_add_role_to_users_table', 3),
(7, '2024_12_17_073014_add_suspended_to_users_table', 4),
(8, '2024_12_17_074744_add_google_id_column_to_users_table', 5),
(11, '2024_12_18_062834_update_role_default_in_users_table', 6);

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
('XUrONiAlYyHhHy9bzhbo12zK0F6lh2fEP4A0xOHW', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWUkyZXNMTkdPZGV5NlB4RjNPREowdkxTSlpvTjcycTRJQjBwQUwyRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyLXBhbmVsIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTY7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRzMVhxQTZwV2hMb3pYajN5bWtPS2R1aXRIQ2kucmcydVM0V1NxczdDekdNcFRGUHNWYzVtMiI7fQ==', 1734503957);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `role` varchar(255) NOT NULL DEFAULT 'admin',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `suspended`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`) VALUES
(1, 'Test123', 'test123@getnada.com', 0, 'admin', NULL, '$2y$12$vvu1kdxPP3Et0czfg0nrdOE8ne5yAlDSk/7/1LspWYR66./hx3Bvi', NULL, '2024-12-16 04:26:05', '2024-12-16 10:26:19', NULL),
(2, 'Test2334', 'test543@getnada.com', 0, 'admin', NULL, '$2y$12$bIaeGOjVREXiWtTrdilIeOr9eTWd9pPeyhYOJ227jgQ.DnHjAzFOq', NULL, '2024-12-16 04:41:20', '2024-12-16 10:26:46', NULL),
(3, 'Usman', 'usmantest123@getnada.com', 0, 'user', NULL, '$2y$12$nMpJYNI0uwXgL8qWF0VkGOfq/tSaDhN0qgrzRwho6G0GLCUhYhl6y', NULL, '2024-12-17 02:03:09', '2024-12-17 02:33:46', NULL),
(4, 'asdasd', 'test123444@getnada.com', 0, 'admin', NULL, '$2y$12$wkSzCruPByuNsZgsEB9zv./OYy8X6eHrDZDSwQnBvm5PTsDg60nHi', NULL, '2024-12-17 10:34:07', '2024-12-17 10:37:36', NULL),
(5, 'asdasd', 'test747@getnada.com', 0, 'user', NULL, '$2y$12$L/z2fTSFciqQk7r7Iaky1u/3Lu8bkaXtsFcDsAZlFrjO3rooHuXTu', NULL, '2024-12-17 10:45:31', '2024-12-17 10:45:31', NULL),
(6, 'asdasd', 'test12232323@getnada.com', 0, 'user', NULL, '$2y$12$htBGTP3KmbgJ/B/jbgl5LuPMAJqW.mXrNy21easv3naspliSxSKfa', NULL, '2024-12-17 10:46:51', '2024-12-17 10:46:51', NULL),
(7, 'asdasd', 'test123222@getnada.com', 0, 'user', NULL, '$2y$12$H5l0NHvDi/q9.jt95Phx7urlDfn/OROmfDf1FKJispIiF/0Fcbt5C', NULL, '2024-12-17 10:49:45', '2024-12-17 10:49:45', NULL),
(8, 'Test123', 'test1233333@getnada.com', 0, 'user', NULL, '$2y$12$wItL.gqKrMMh4iuqrxoRc.2ezWlXHhgP4iFUu6E9Jpnavfa/kR.Qi', NULL, '2024-12-17 10:59:20', '2024-12-17 10:59:20', NULL),
(9, 'Test2334', 'test543333@getnada.com', 0, 'user', NULL, '$2y$12$NU68PoPiTEUqq6sQscwQu.vaS9.6R6CcTmpy9X5sTrvtP/6fFGTKu', NULL, '2024-12-17 11:03:09', '2024-12-17 11:03:09', NULL),
(10, 'Test2323', 'test999@getnada.com', 0, 'user', NULL, '$2y$12$HW2fCFUGAHLL5QzpgTN9l.dL/77.POJMm8OSQhPI1e5B0YT1OPa76', NULL, '2024-12-18 01:22:12', '2024-12-18 01:22:12', NULL),
(11, 'adsad', 'test238283@getnada.com', 0, 'user', NULL, '$2y$12$GTzWbo2Nh0AU7I1qIh8PC.2OX8Nm.iEtRgsoF2N0/fkCShS.Aotpu', NULL, '2024-12-18 01:25:46', '2024-12-18 01:25:46', NULL),
(12, 'asdads', 'test78@getnada.com', 0, 'user', NULL, '$2y$12$FehzYjmu241HwdGAc6WegOZAVLqfhcAKncvwZ2PS375u7Wh5FWFfK', NULL, '2024-12-18 01:27:04', '2024-12-18 01:27:04', NULL),
(13, 'asdasd2', 'asdasd2@getnada.com', 0, 'user', NULL, '$2y$12$c8uZlwOl/RWv6TqVZfRuMu83cqXU/jYf3myQSG2rL8DyQ9V2n3PAq', NULL, '2024-12-18 01:29:32', '2024-12-18 01:29:32', NULL),
(14, 'asdadas', 'ajsdjasjdj@getnada.com', 0, 'admin', NULL, '$2y$12$MoCFFsmpU2m7w1CCXRtdnuMYwwn/27Go32n3dOcuwfbNe0cheB0K6', NULL, '2024-12-18 01:35:55', '2024-12-18 01:35:55', NULL),
(15, 'asdasjdj23@gentada.com', 'asdasd@getnada.com', 0, 'admin', NULL, '$2y$12$POpa.54Tc.2HnSWsWrkz2urC6ndkE5Opa7fXpeVV9CvquQF9I.To2', NULL, '2024-12-18 01:37:41', '2024-12-18 01:37:41', NULL),
(16, 'ajsdajsdjasd', 'test9999633232@getnada.com', 0, 'user', NULL, '$2y$12$s1XqA6pWhLozXj3ymkOKduitHCi.rg2uS4WSqs7CzGMpTFPsVc5m2', NULL, '2024-12-18 01:39:07', '2024-12-18 01:39:07', NULL);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
