-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jun 04, 2025 at 08:14 PM
-- Server version: 8.0.42
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AppleStoreDev`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_users`
--

CREATE TABLE `api_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_of_birth` date DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reset_expiration` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `refresh_token_expires_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_users`
--

INSERT INTO `api_users` (`id`, `user_name`, `email`, `password`, `remember_token`, `first_name`, `last_name`, `profile_picture`, `day_of_birth`, `phone_number`, `address`, `city`, `is_subscribed`, `email_verified_at`, `verification_token`, `password_reset_token`, `password_reset_expiration`, `last_login_at`, `access_token`, `refresh_token`, `token_expires_at`, `refresh_token_expires_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'kacey.johnston', 'orland36@example.net', '$2y$12$7zkA6DBVpo97nQTwiaSA4ux96McFzm4vkdzzdBj.cQVr6qcwkJAhK', NULL, 'Zachary', 'Shields', 'http://localhost/storage/profile_images/pexels-photo-4522862.jpeg', '1956-07-09', '531-673-9237', '904 Swift Motorway Suite 506\nNorth Gailville, VT 52919', 'Schummmouth', 1, '2011-01-07 11:03:46', '8ncECi3IV7', 'vJyMxIhaVZ', '2025-05-04 19:36:49', '2025-05-04 19:36:49', NULL, NULL, NULL, NULL, '2003-04-06 22:42:12', '2025-05-04 19:36:49', '2025-05-04 19:36:52'),
(2, 'ofriesen', 'lonnie47@example.com', '$2y$12$E/Xd0.6LJIxoZ72y587q4uVjnhPpxr/EprX/oLNqQNuE7Xfnt2K0y', NULL, 'Conner', 'Schaden', 'http://localhost/storage/profile_images/pexels-photo-674010.jpeg', '1986-10-14', '920-304-4586', '6607 O\'Connell Ranch\nNew Osvaldo, NE 87203-9217', 'New Laurynfurt', 0, '1992-02-13 13:11:17', 'HItXpx8EIj', '5ar3lc9eiv', '2025-05-04 19:36:49', '2025-05-04 19:36:49', NULL, NULL, NULL, NULL, '2008-10-08 02:36:12', '2025-05-04 19:36:49', '2025-05-04 19:36:53'),
(3, 'brenna.krajcik', 'jeanette26@example.com', '$2y$12$rSJAvRv9JjN7aW5UmZqFz.MSyhk64lbzYiC1E2ZDLe6VZO6kAEuCK', NULL, 'Kadin', 'Greenfelder', 'http://localhost/storage/profile_images/pexels-photo-853168.jpeg', '1962-12-16', '608.874.1593', '451 Lorenz Meadow\nWest Maureenmouth, KY 05149', 'Bogisichton', 1, '2007-06-27 01:13:59', 'ZDMbAecaXt', 'EJ9MfkGdKm', '2025-05-04 19:36:49', '2025-05-04 19:36:49', NULL, NULL, NULL, NULL, NULL, '2025-05-04 19:36:49', '2025-05-04 19:36:54'),
(4, 'allie58', 'laurie.hand@example.org', '$2y$12$.KC7PAkYUB1YM4gmcgt2xun1.jdC0hrvk4jzCdPHsdiGqQh.ECJoe', NULL, 'Milford', 'Schmeler', 'http://localhost/storage/profile_images/pexels-photo-935949.jpeg', '1951-05-14', '217.275.0514', '694 Krajcik Wells\nSouth Adolphustown, CO 77378', 'Coletown', 0, '2002-11-06 20:49:22', 'I9gBGUELJz', 'OZpTY8OA6g', '2025-05-04 19:36:50', '2025-05-04 19:36:50', NULL, NULL, NULL, NULL, NULL, '2025-05-04 19:36:50', '2025-05-04 19:36:55'),
(5, 'johnson.tracy', 'mollie.johns@example.com', '$2y$12$wbEDoEIrgFTUtJ6SyNjNzOYC2vBw8yOygXG.y01njZgIUOBJFHfju', NULL, 'Jude', 'Daugherty', 'http://localhost/storage/profile_images/pexels-photo-771742.jpeg', '1985-12-15', '(463) 717-0756', '4708 Theresa Neck\nStephanyville, AL 77669-1176', 'East Thelma', 1, '1971-07-11 00:06:26', 'XQ7QeV79W8', 'd21QIyt2P5', '2025-05-04 19:36:50', '2025-05-04 19:36:50', NULL, NULL, NULL, NULL, NULL, '2025-05-04 19:36:50', '2025-05-04 19:36:56'),
(6, 'ferne.mckenzie', 'colby.beatty@example.com', '$2y$12$.cFvp4FfUphDpjXKaF83qOrC/4AFe0vagHnYoRPOmZmuD.xAtomWy', NULL, 'Nicholas', 'Boyle', 'http://localhost/storage/profile_images/pexels-photo-2703181.jpeg', '1990-06-24', '+1-435-895-1114', '4296 Garret Neck\nEast Muhammad, IA 68886-6072', 'Hermistonbury', 1, '2011-09-30 00:12:15', 'JCGdPUfSh8', 'H1UpY2Ap21', '2025-05-04 19:36:50', '2025-05-04 19:36:50', NULL, NULL, NULL, NULL, NULL, '2025-05-04 19:36:50', '2025-05-04 19:36:57'),
(7, 'zena50', 'jschuppe@example.net', '$2y$12$gcen0T7cHbNxNimJY3LSCOrXJfs4j/YUt8AtJrq9OkzZ3dUixLIz.', NULL, 'Stephania', 'Ortiz', 'http://localhost/storage/profile_images/pexels-photo-2703181.jpeg', '1971-04-19', '413.366.4654', '738 Moshe Centers\nIsaiahland, ID 88153-4372', 'South Raoulberg', 0, '2009-08-04 05:35:19', 'TzbZqDLmxl', 'kvFAUKOoJX', '2025-05-04 19:36:50', '2025-05-04 19:36:50', NULL, NULL, NULL, NULL, NULL, '2025-05-04 19:36:50', '2025-05-04 19:36:57'),
(8, 'buster72', 'dena29@example.net', '$2y$12$m49URUy2KgWdxZxTABpL1OQ22JdqZPYzNJFtspsarGwHxsi6mAK6W', NULL, 'Braden', 'Gulgowski', 'http://localhost/storage/profile_images/pexels-photo-2167395.jpeg', '1966-06-08', '(478) 737-2684', '16213 Zieme Skyway\nLake Estebanfurt, WI 17635', 'Lakinton', 1, '1988-07-19 11:01:57', 'xzOYvFoXnr', 'VZuEdI9W8c', '2025-05-04 19:36:51', '2025-05-04 19:36:51', NULL, NULL, NULL, NULL, NULL, '2025-05-04 19:36:51', '2025-05-04 19:36:58'),
(9, 'nernser', 'kheidenreich@example.net', '$2y$12$xufa49hvy3bKTYAtFnu0qugJcjteXNEuf3phWIvW2jUfR/dX6fPFe', NULL, 'Kevin', 'Renner', 'http://localhost/storage/profile_images/pexels-photo-935949.jpeg', '1976-04-12', '1-520-500-0020', '315 Swift Valley\nEthelbury, RI 74059', 'Braunhaven', 1, NULL, 'P7uJgpK1LO', '18tvoPm2qQ', '2025-05-04 19:36:51', '2025-05-04 19:36:51', NULL, NULL, NULL, NULL, '1987-09-17 23:49:15', '2025-05-04 19:36:51', '2025-05-04 19:36:59'),
(10, 'kyra66', 'leatha69@example.com', '$2y$12$hY7X4Jy0FgjqhZR4Y7URcOYPKt4lQJddaH/0OFCxCXEBjhUmXaFNS', NULL, 'Samara', 'McGlynn', 'http://localhost/storage/profile_images/pexels-photo-935949.jpeg', '1979-12-10', '+1 (765) 310-6190', '898 Monserrat Ville Apt. 409\nNorth Bartholome, VA 33331-6031', 'Hallefurt', 0, '1994-04-08 02:50:43', 'xDNf7B2mfA', 'tB4n95k9JX', '2025-05-04 19:36:51', '2025-05-04 19:36:51', NULL, NULL, NULL, NULL, '1992-05-10 02:52:06', '2025-05-04 19:36:51', '2025-05-04 19:36:59'),
(29, 'Павел', 'a@a.com', '$2y$12$KfTZJn/ShZez1Xl91YNebeN6PBZSXGQNdfQ7MGvoN1XDOMwyL2f5y', NULL, 'Pavel', 'Ufimcev', NULL, '2025-06-02', '+33 3000 713', 'Gvishiany', 'Minsk', 0, '2025-06-01 16:22:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-01 07:20:16', '2025-06-01 07:20:16'),
(39, 'Есения', 'q@q.com', '$2y$12$lliGEgnqgDTnJ9lYqy1YN.bv22J6/5X0pNiooo7BRq2hhmVmhonCi', NULL, 'Esenya', 'Ufimceva', NULL, NULL, '+237 65799900', 'Gvishiany', 'Minsk', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-01 08:52:38', '2025-06-01 08:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` bigint UNSIGNED NOT NULL,
  `api_user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `api_user_id`, `created_at`, `updated_at`) VALUES
(1, 4, '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(2, 5, '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(3, 7, '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(4, 8, '2025-05-04 19:36:59', '2025-05-04 19:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_product_variant`
--

CREATE TABLE `bookmark_product_variant` (
  `id` bigint UNSIGNED NOT NULL,
  `bookmark_id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookmark_product_variant`
--

INSERT INTO `bookmark_product_variant` (`id`, `bookmark_id`, `product_variant_id`, `created_at`, `updated_at`) VALUES
(1, 1, 33, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(2, 1, 109, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(3, 1, 122, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(4, 1, 132, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(5, 1, 187, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(6, 2, 17, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(7, 2, 18, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(8, 2, 48, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(9, 2, 110, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(10, 2, 137, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(11, 2, 181, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(12, 2, 187, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(13, 3, 55, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(14, 4, 13, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(15, 4, 36, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(16, 4, 127, '2025-05-04 19:37:47', '2025-05-04 19:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('applestoredev_cache_fokTwIeB6Bu7bbjP', 's:7:\"forever\";', 2064402305),
('applestoredev_cache_livewire-rate-limiter:0e8367d0c394ea8e8d16fc7f5084e4eddb908906', 'i:1;', 1749064950),
('applestoredev_cache_livewire-rate-limiter:0e8367d0c394ea8e8d16fc7f5084e4eddb908906:timer', 'i:1749064950;', 1749064950),
('applestoredev_cache_spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:83:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:14:\"view_api::user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:18:\"view_any_api::user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:16:\"create_api::user\";s:1:\"c\";s:5:\"admin\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:16:\"update_api::user\";s:1:\"c\";s:5:\"admin\";}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:17:\"restore_api::user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:21:\"restore_any_api::user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:19:\"replicate_api::user\";s:1:\"c\";s:5:\"admin\";}i:7;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:17:\"reorder_api::user\";s:1:\"c\";s:5:\"admin\";}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:16:\"delete_api::user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:20:\"delete_any_api::user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:22:\"force_delete_api::user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:26:\"force_delete_any_api::user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:13:\"view_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:17:\"view_any_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:15:\"create_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:15:\"update_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:16:\"restore_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:20:\"restore_any_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:18:\"replicate_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:16:\"reorder_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:15:\"delete_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:19:\"delete_any_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:21:\"force_delete_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:25:\"force_delete_any_category\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:10:\"view_order\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:14:\"view_any_order\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:26;a:3:{s:1:\"a\";i:27;s:1:\"b\";s:12:\"create_order\";s:1:\"c\";s:5:\"admin\";}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:12:\"update_order\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:13:\"restore_order\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:17:\"restore_any_order\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"replicate_order\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:3:{s:1:\"a\";i:32;s:1:\"b\";s:13:\"reorder_order\";s:1:\"c\";s:5:\"admin\";}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:12:\"delete_order\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:16:\"delete_any_order\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:18:\"force_delete_order\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:22:\"force_delete_any_order\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:12:\"view_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:16:\"view_any_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:14:\"create_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:14:\"update_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:15:\"restore_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:19:\"restore_any_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:17:\"replicate_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:15:\"reorder_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:14:\"delete_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:18:\"delete_any_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:20:\"force_delete_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:24:\"force_delete_any_product\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:19:\"view_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:23:\"view_any_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:21:\"create_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:21:\"update_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:22:\"restore_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:26:\"restore_any_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:24:\"replicate_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:22:\"reorder_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:21:\"delete_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:25:\"delete_any_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:27:\"force_delete_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:31:\"force_delete_any_product::image\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:12:\"restore_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:16:\"restore_any_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:14:\"replicate_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:12:\"reorder_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:17:\"force_delete_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:21:\"force_delete_any_user\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:31:\"widget_StatisticsApiUsersWidget\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:23:\"widget_BestSellersTable\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:19:\"widget_LatestOrders\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:26:\"widget_ConsumerGrowthChart\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:23:\"widget_SalesGrowthChart\";s:1:\"c\";s:5:\"admin\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:5:\"admin\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:5:\"admin\";}}}', 1749151290);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `api_user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `api_user_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(2, 4, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(3, 5, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(4, 6, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(5, 8, '2025-05-04 19:37:46', '2025-05-04 19:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `cart_product_variant`
--

CREATE TABLE `cart_product_variant` (
  `id` bigint UNSIGNED NOT NULL,
  `cart_id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_product_variant`
--

INSERT INTO `cart_product_variant` (`id`, `cart_id`, `product_variant_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 4, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(2, 2, 13, 3, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(3, 2, 16, 3, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(4, 2, 26, 1, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(5, 2, 67, 1, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(6, 2, 69, 1, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(7, 2, 84, 4, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(8, 2, 117, 2, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(9, 2, 140, 2, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(10, 2, 141, 2, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(11, 2, 150, 3, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(12, 3, 22, 1, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(13, 3, 26, 4, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(14, 3, 60, 3, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(15, 3, 69, 1, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(16, 3, 115, 3, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(17, 3, 157, 2, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(18, 3, 170, 4, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(19, 4, 73, 4, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(20, 4, 170, 4, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(21, 5, 77, 4, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(22, 5, 182, 3, '2025-05-04 19:37:47', '2025-05-04 19:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `slug`, `name`, `description`, `image_url`, `is_new`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'mac', 'Mac', 'If you can dream it,\nMac can do it.', 'categories_images/01JVW29NF49Z7QHNSD8TJ6ME7H.jpg', 0, NULL, '2025-05-04 19:36:59', '2025-05-24 13:02:09'),
(2, NULL, 'iphone', 'iPhone', 'Designed to be loved.', 'categories_images/01JVW2ACRFJP1RNHADP624PHHT.jpg', 0, NULL, '2025-05-04 19:36:59', '2025-05-24 13:02:50'),
(3, NULL, 'ipad', 'iPad', 'Touch, draw, and type\non one magical device.', 'categories_images/01JVW2AW67PK0ZQQYPHYM7K436.jpg', 0, NULL, '2025-05-04 19:36:59', '2025-05-22 13:18:45'),
(4, NULL, 'watch', 'Apple Watch', 'The ultimate device\nfor a healthy life.', 'categories_images/01JVW2BQEG97VS60WV439NEHZM.jpg', 0, NULL, '2025-05-04 19:36:59', '2025-05-24 13:03:15'),
(5, NULL, 'airpods', 'AirPods', 'Listen to live. ', 'categories_images/01JVW2C6G212XZEAECVC3B8V6V.jpg', 0, NULL, '2025-05-04 19:36:59', '2025-05-22 13:19:28'),
(6, NULL, 'tv-home', 'TV & Home', 'The future hits home.', 'categories_images/01JVW2CWSAKMA84EEBVJQTMJAE.jpg', 0, NULL, '2025-05-04 19:36:59', '2025-05-22 13:19:51'),
(7, 1, 'macbook-air', 'Macbook Air', 'Est est sed ut. Sunt assumenda harum officia quo. Rerum repellat perferendis omnis nesciunt.', 'categories_images/01JW165X6Y8QXA8T8NE1C8EGBY.jpeg', 1, NULL, '2025-05-04 19:37:00', '2025-05-24 13:02:09'),
(8, 1, 'macbook-pro', 'Macbook Pro', 'Odit et ipsam impedit. Culpa possimus saepe sint impedit consectetur maiores qui ea. Illum mollitia aut molestiae suscipit. Voluptas est inventore ea sit officia.', 'categories_images/pexels-photo-303383.jpeg', 0, NULL, '2025-05-04 19:37:01', '2025-05-04 19:37:01'),
(9, 1, 'imac', 'iMac', 'Vero dicta architecto sit consequatur. Ducimus consectetur dolor a beatae eum soluta voluptatem nihil. Earum vitae et porro laudantium officia.', 'categories_images/apple-imac-ipad-workplace-38568.jpeg', 0, NULL, '2025-05-04 19:37:02', '2025-05-04 19:37:02'),
(10, 1, 'mac-mini', 'Mac mini', 'Hic ut ut est sunt quod rem possimus. Ea qui et et omnis. Et doloribus voluptas asperiores qui quia. Corporis soluta expedita ut dolorem.', 'categories_images/01JW131CDZG92E6D3BSWJ8S4C4.jpg', 0, NULL, '2025-05-04 19:37:03', '2025-05-24 12:07:15'),
(11, 1, 'mac-studio', 'Mac Studio', 'Dolore alias ut voluptatem. Corporis dolores est est doloribus pariatur. Inventore laudantium et fuga voluptatum quasi quia id.', 'categories_images/pexels-photo-414974.jpeg', 0, NULL, '2025-05-04 19:37:04', '2025-05-04 19:37:04'),
(12, 2, 'iphone-16', 'iPhone 16', 'Nulla aut temporibus assumenda quis. Necessitatibus et omnis consequatur animi exercitationem sint necessitatibus.', 'categories_images/01JW166J4YE4HDDQBMBC753YSF.jpg', 1, NULL, '2025-05-04 19:37:05', '2025-05-24 13:02:30'),
(13, 2, 'iphone-16-plus', 'iPhone 16 Plus', 'Enim animi cumque expedita hic non et. Sed est fugiat culpa natus. Architecto iure dolor sit excepturi. Et molestiae rerum cupiditate nam. Consequatur cumque non quo facilis.', 'categories_images/pexels-photo-7821766.jpeg', 0, NULL, '2025-05-04 19:37:06', '2025-05-13 19:46:55'),
(14, 2, 'iphone-16-pro', 'iPhone 16 Pro', 'Voluptas officiis fuga in libero temporibus quidem. Quia doloremque totam quae possimus natus distinctio. Sed fuga incidunt ut sapiente.', 'categories_images/01JW1675P1KDR6WPPZYAJ637ED.jpg', 1, NULL, '2025-05-04 19:37:07', '2025-05-24 13:02:50'),
(15, 2, 'iphone-16-pro-max', 'iPhone 16 Pro Max', 'Eos reiciendis ipsa ipsam voluptatibus ut voluptates dolor. Ab nisi et et quos aspernatur. Aut et nisi provident est aut itaque dolorem.', 'categories_images/pexels-photo-31810257.jpeg', 0, NULL, '2025-05-04 19:37:08', '2025-05-13 19:46:55'),
(16, 3, 'ipad-pro', 'iPad Pro', 'Sit pariatur ut illum impedit sed illum. Porro est vero nemo error. Maxime aut eum sequi dolore. Occaecati ex quisquam rem placeat sed maxime voluptas voluptate. Rerum id tempora sunt dolorum.', 'categories_images/pexels-photo-3082341.jpeg', 0, NULL, '2025-05-04 19:37:09', '2025-05-04 19:37:09'),
(17, 3, 'ipad-air', 'iPad Air', 'Minus mollitia non est consequatur eos suscipit. Dolorem excepturi doloremque ut qui. Doloribus dolore unde voluptatem quia non quibusdam. Nam temporibus et itaque autem.', 'categories_images/pexels-photo-14541063.jpeg', 0, NULL, '2025-05-04 19:37:10', '2025-05-04 19:37:10'),
(18, 3, 'ipad-mini', 'iPad Mini', 'Eum architecto velit et dolores dignissimos quas molestiae. Pariatur aut eaque similique commodi error. Ut qui autem qui in.', 'categories_images/pexels-photo-9050668.jpeg', 0, NULL, '2025-05-04 19:37:10', '2025-05-04 19:37:10'),
(19, 4, 'apple-watch-series-10', 'Apple Watch Series 10', 'Quidem placeat ut corporis error quia. Dolor ut hic facere laborum occaecati itaque. Ut eum distinctio quis distinctio sunt laboriosam.', 'categories_images/01JW167YB0MVXVQVKRK7HSYGXF.jpg', 1, NULL, '2025-05-04 19:37:11', '2025-05-24 13:03:15'),
(20, 4, 'apple-watch-ultra-2', 'Apple Watch Ultra 2', 'Earum consequatur qui quidem sint fugit. At enim soluta accusamus provident necessitatibus. Consequatur soluta mollitia aliquam a inventore quo.', 'categories_images/pexels-photo-4065876.jpeg', 0, NULL, '2025-05-04 19:37:12', '2025-05-04 19:37:12'),
(21, 5, 'airpods-pro', 'AirPods Pro', 'Quis dignissimos error labore vel dolores. Enim rerum est id voluptatem cum velit. Nobis accusamus voluptatum voluptatem velit.', 'categories_images/pexels-photo-6857205.jpeg', 0, NULL, '2025-05-04 19:37:13', '2025-05-04 19:37:13'),
(22, 5, 'airpods-max', 'AirPods Max', 'Pariatur esse ut accusamus id eius aut non laudantium. Modi doloribus nostrum dolores fugit quidem tenetur. Libero officiis nesciunt mollitia sed tempora at earum.', 'categories_images/pexels-photo-8000608.jpeg', 0, NULL, '2025-05-04 19:37:14', '2025-05-04 19:37:14'),
(23, 5, 'airpods-4', 'AirPods 4', 'Repellat et dolorum dolores. Dolorem qui maiores impedit et. Eaque velit maiores beatae et rem.', 'categories_images/pexels-photo-28838302.jpeg', 0, NULL, '2025-05-04 19:37:15', '2025-05-04 19:37:15'),
(24, 6, 'apple-tv-4k', 'Apple TV 4K', 'Et ipsum iusto magni iure id velit. Voluptas quas hic ut. Exercitationem accusantium enim voluptatem nostrum. Ad ut dolor praesentium est ratione est sit.', 'categories_images/pexels-photo-15481205.jpeg', 0, NULL, '2025-05-04 19:37:16', '2025-05-04 19:37:16'),
(25, 6, 'homepod', 'HomePod', 'Possimus ut doloremque corrupti rerum quaerat. Autem provident quos quaerat ut. Repellat est ea eveniet ut ut et ratione.', 'categories_images/pexels-photo-13691799.jpeg', 0, NULL, '2025-05-04 19:37:17', '2025-05-04 19:37:17'),
(26, 6, 'homepod-mini', 'HomePod mini', 'Sit modi quibusdam nemo id deserunt. Et reiciendis delectus reprehenderit perspiciatis voluptatem. Cum enim corporis fuga voluptatem possimus qui. Saepe doloribus eos sit iste praesentium alias.', 'categories_images/pexels-photo-3550238.jpeg', 0, NULL, '2025-05-04 19:37:18', '2025-05-04 19:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `api_user_id` bigint UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `api_user_id`, `address`, `city`, `postal_code`, `country`, `created_at`, `updated_at`) VALUES
(1, 3, '356 Allie Neck\nPort Martachester, MI 90199', 'Toyhaven', '19255', 'Gabon', '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(2, 4, '1688 Devan Key\nNew Eveline, CA 69887-6698', 'South Kaliburgh', '58508-7237', 'Sierra Leone', '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(3, 5, '4219 Rebeka View\nSheilaberg, NM 99658-5207', 'New Elmomouth', '53774', 'Nauru', '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(4, 5, '3031 Gerhold Coves\nPort Rebecaville, HI 75939-0068', 'Hettingerbury', '77765', 'Burkina Faso', '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(5, 6, '42592 Wade Meadows Apt. 302\nBeattymouth, OH 25100-2490', 'Port Alektown', '28495-1739', 'Austria', '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(6, 6, '522 Wyman Knolls Suite 940\nPort Dion, LA 50458-5111', 'New Loisfort', '73951-9574', 'Sweden', '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(7, 7, '422 Estrella Alley\nNorth Emmetchester, NV 71604-2607', 'Nestorside', '36225', 'Heard Island and McDonald Islands', '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(8, 8, '2833 Rau Meadows\nWehnerstad, TN 98868', 'Wintheisermouth', '66311', 'Sao Tome and Principe', '2025-05-04 19:36:59', '2025-05-04 19:36:59'),
(9, 29, 'Gvishiany', 'Minsk', NULL, NULL, '2025-06-02 20:41:22', '2025-06-02 20:41:22'),
(10, 39, 'Gvishiany', 'Minsk', NULL, NULL, '2025-06-02 21:01:33', '2025-06-02 21:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_04_08_172427_create_personal_access_tokens_table', 1),
(5, '2025_04_09_172728_create_api_users_table', 1),
(6, '2025_04_10_180929_create_delivery_addresses_table', 1),
(7, '2025_04_10_183320_create_bookmarks_table', 1),
(8, '2025_04_10_185536_create_categories_table', 1),
(9, '2025_04_10_190521_create_products_table', 1),
(10, '2025_04_10_191548_create_product_variants_table', 1),
(11, '2025_04_10_193215_create_product_images_table', 1),
(12, '2025_04_10_193453_create_product_image_product_variant_table', 1),
(13, '2025_04_10_195242_create_carts_table', 1),
(14, '2025_04_10_200533_create_cart_product_variant_table', 1),
(15, '2025_04_10_200841_create_orders_table', 1),
(16, '2025_04_11_163005_create_order_product_variant_table', 1),
(17, '2025_04_11_191234_create_bookmark_product_variant_table', 1),
(18, '2025_04_20_081446_create_notifications_table', 1),
(19, '2025_04_23_203140_create_permission_tables', 1),
(20, '2025_04_24_175614_alter_users_table_add_column_deleted_at', 1),
(21, '2025_04_26_192412_alter_orders_add_softdelete', 1),
(22, '2025_05_06_155840_alter_category_table_add_column_is_new', 2),
(23, '2025_05_08_173809_create_telescope_entries_table', 3),
(24, '2025_05_29_200143_alter_api_users_table_add_token_fields', 4),
(25, '2025_05_29_203313_alter_api_users_table_add_remember_token_fields', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'AppModelsUser', 1),
(2, 'AppModelsUser', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `api_user_id` bigint UNSIGNED NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'credit_card',
  `delivery_address_id` bigint UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `api_user_id`, `total_amount`, `payment_method`, `delivery_address_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, 2735.97, 'card', 1, 'cancelled', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(2, 5, 9126.27, 'cash', 4, 'completed', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(3, 5, 8102.36, 'card', 4, 'processing', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(4, 5, 5173.65, 'cash', 4, 'cancelled', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(5, 5, 9354.73, 'card', 4, 'cancelled', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(6, 5, 3798.30, 'cash', 4, 'processing', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(7, 6, 2299.04, 'card', 6, 'processing', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(8, 7, 9719.01, 'card', 7, 'completed', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(9, 8, 136.36, 'card', 8, 'processing', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(10, 8, 7622.22, 'cash', 8, 'cancelled', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(11, 8, 7146.98, 'cash', 8, 'pending', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(12, 8, 698.40, 'card', 8, 'completed', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(13, 8, 1286.79, 'card', 8, 'cancelled', NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(14, 29, 169.10, 'cash', 9, 'pending', NULL, '2025-06-02 20:46:27', '2025-06-02 20:46:27'),
(15, 29, 200.18, 'card', 9, 'pending', NULL, '2025-06-02 20:54:07', '2025-06-02 20:54:07'),
(16, 39, 99.57, 'card', 10, 'pending', NULL, '2025-06-02 21:01:33', '2025-06-02 21:01:33'),
(17, 39, 59.20, 'cash', 10, 'pending', NULL, '2025-06-03 20:22:51', '2025-06-03 20:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_variant`
--

CREATE TABLE `order_product_variant` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product_variant`
--

INSERT INTO `order_product_variant` (`id`, `order_id`, `product_variant_id`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 1, 11, 4, 41.40, 28.98, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(2, 1, 86, 4, 60.71, 48.57, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(3, 1, 120, 2, 30.74, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(4, 1, 150, 4, 0.84, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(5, 2, 42, 2, 55.90, 50.31, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(6, 2, 110, 2, 62.32, 56.09, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(7, 2, 137, 2, 22.80, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(8, 3, 10, 4, 18.54, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(9, 3, 56, 1, 60.94, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(10, 3, 72, 3, 89.95, 53.97, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(11, 3, 87, 3, 66.32, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(12, 3, 102, 3, 76.43, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(13, 3, 116, 1, 43.13, 34.50, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(14, 3, 141, 1, 29.41, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(15, 3, 146, 1, 88.74, 62.12, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(16, 3, 164, 3, 65.95, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(17, 3, 187, 4, 55.47, 38.83, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(18, 4, 61, 1, 29.04, 20.33, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(19, 4, 133, 2, 70.57, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(20, 4, 137, 4, 5.88, 3.53, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(21, 4, 151, 4, 99.39, 69.57, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(22, 4, 173, 2, 26.80, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(23, 5, 25, 4, 47.54, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(24, 5, 41, 3, 90.09, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(25, 5, 159, 1, 74.16, 44.50, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(26, 6, 80, 4, 86.83, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(27, 6, 108, 3, 2.49, 1.74, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(28, 6, 148, 4, 59.29, 47.43, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(29, 7, 1, 2, 29.66, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(30, 7, 37, 2, 89.43, 53.66, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(31, 7, 145, 2, 29.98, 20.99, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(32, 7, 187, 4, 74.56, 52.19, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(33, 8, 110, 2, 48.89, 29.33, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(34, 8, 120, 3, 25.74, 15.44, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(35, 8, 123, 1, 82.10, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(36, 9, 10, 1, 75.19, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(37, 9, 56, 4, 37.25, 33.53, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(38, 9, 106, 3, 81.42, 48.85, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(39, 10, 5, 2, 46.95, 37.56, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(40, 10, 87, 1, 88.24, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(41, 10, 126, 2, 44.97, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(42, 10, 178, 1, 63.96, 44.77, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(43, 11, 7, 3, 13.92, 12.53, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(44, 11, 25, 2, 92.03, 55.22, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(45, 11, 43, 3, 72.35, 65.12, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(46, 11, 81, 1, 20.38, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(47, 11, 96, 4, 93.69, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(48, 11, 124, 1, 65.17, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(49, 11, 127, 2, 28.31, 25.48, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(50, 11, 144, 2, 3.82, 2.29, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(51, 11, 183, 3, 76.79, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(52, 11, 191, 3, 34.32, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(53, 12, 8, 4, 36.67, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(54, 12, 22, 3, 22.45, 17.96, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(55, 12, 40, 1, 36.67, 22.00, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(56, 12, 46, 3, 68.27, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(57, 13, 32, 2, 92.48, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(58, 13, 100, 3, 20.74, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(59, 13, 104, 4, 87.90, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(60, 13, 116, 1, 65.03, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(61, 13, 126, 2, 59.02, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(62, 13, 135, 3, 29.37, 23.50, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(63, 13, 169, 2, 88.19, 52.91, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(64, 13, 190, 1, 66.15, NULL, '2025-05-04 19:37:47', '2025-05-04 19:37:47'),
(65, 14, 82, 2, 41.60, NULL, '2025-06-02 20:46:27', '2025-06-02 20:46:27'),
(66, 14, 38, 2, 78.52, NULL, '2025-06-02 20:46:27', '2025-06-02 20:46:27'),
(67, 15, 186, 2, 43.36, NULL, '2025-06-02 20:54:07', '2025-06-02 20:54:07'),
(68, 15, 80, 2, 54.90, NULL, '2025-06-02 20:54:07', '2025-06-02 20:54:07'),
(69, 15, 81, 1, 3.66, NULL, '2025-06-02 20:54:07', '2025-06-02 20:54:07'),
(70, 16, 189, 1, 85.08, NULL, '2025-06-02 21:01:33', '2025-06-02 21:01:33'),
(71, 16, 188, 1, 18.11, NULL, '2025-06-02 21:01:33', '2025-06-02 21:01:33'),
(72, 17, 184, 1, 65.78, NULL, '2025-06-03 20:22:51', '2025-06-03 20:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(2, 'view_any_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(3, 'create_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(4, 'update_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(5, 'restore_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(6, 'restore_any_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(7, 'replicate_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(8, 'reorder_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(9, 'delete_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(10, 'delete_any_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(11, 'force_delete_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(12, 'force_delete_any_api::user', 'admin', '2025-05-04 19:59:47', '2025-05-04 19:59:47'),
(13, 'view_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(14, 'view_any_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(15, 'create_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(16, 'update_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(17, 'restore_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(18, 'restore_any_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(19, 'replicate_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(20, 'reorder_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(21, 'delete_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(22, 'delete_any_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(23, 'force_delete_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(24, 'force_delete_any_category', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(25, 'view_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(26, 'view_any_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(27, 'create_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(28, 'update_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(29, 'restore_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(30, 'restore_any_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(31, 'replicate_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(32, 'reorder_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(33, 'delete_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(34, 'delete_any_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(35, 'force_delete_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(36, 'force_delete_any_order', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(37, 'view_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(38, 'view_any_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(39, 'create_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(40, 'update_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(41, 'restore_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(42, 'restore_any_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(43, 'replicate_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(44, 'reorder_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(45, 'delete_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(46, 'delete_any_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(47, 'force_delete_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(48, 'force_delete_any_product', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(49, 'view_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(50, 'view_any_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(51, 'create_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(52, 'update_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(53, 'restore_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(54, 'restore_any_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(55, 'replicate_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(56, 'reorder_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(57, 'delete_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(58, 'delete_any_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(59, 'force_delete_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(60, 'force_delete_any_product::image', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(61, 'view_role', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(62, 'view_any_role', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(63, 'create_role', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(64, 'update_role', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(65, 'delete_role', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(66, 'delete_any_role', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(67, 'view_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(68, 'view_any_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(69, 'create_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(70, 'update_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(71, 'restore_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(72, 'restore_any_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(73, 'replicate_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(74, 'reorder_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(75, 'delete_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(76, 'delete_any_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(77, 'force_delete_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(78, 'force_delete_any_user', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(79, 'widget_StatisticsApiUsersWidget', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(80, 'widget_BestSellersTable', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(81, 'widget_LatestOrders', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(82, 'widget_ConsumerGrowthChart', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28'),
(83, 'widget_SalesGrowthChart', 'admin', '2025-05-04 20:14:28', '2025-05-04 20:14:28');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `slug`, `name`, `description`, `price`, `discount_price`, `image_url`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 7, 'macbook-air-m4-13-inch', 'Macbook Air M4 13-inch', 'Asperiores assumenda consequatur quibusdam delectus laborum esse illo. Quam dolorum ut eos nemo quia et. Ullam excepturi aut aut.', 7.87, NULL, 'products_images/01JW14358QE04KRKT87GDD305R.jpeg', NULL, '2025-05-04 19:37:19', '2025-05-24 21:17:19'),
(2, 7, 'macbook-air-m4-15-inch', 'Macbook Air M4 15-inch', 'Non aut expedita velit consequuntur sit debitis. Assumenda voluptas qui aut animi consectetur. Qui quo laboriosam beatae tenetur nisi. Atque iure eos quas quaerat veniam cum placeat qui.', 37.64, NULL, 'products_images/01JW143NNVHTXHYGQAS4ZW106V.jpeg', NULL, '2025-05-04 19:37:20', '2025-05-24 12:25:58'),
(3, 8, 'macbook-pro-m4-14-inch', 'Macbook Pro M4 14-inch', 'Et quod fuga beatae nobis eos illo. Officiis sit fuga perferendis quidem. Eum non excepturi est dolorum libero incidunt suscipit. Ut delectus neque et eum. Iste ea sapiente molestiae.', 35.23, NULL, 'products_images/01JW144EGNKSFGP1Q2B76K8RH8.jpeg', NULL, '2025-05-04 19:37:21', '2025-05-24 12:26:24'),
(4, 8, 'macbook-pro-m4pro-14-inch', 'Macbook Pro M4Pro 14-inch', 'Excepturi sunt nihil ipsam tenetur consectetur. A dignissimos saepe fuga. Dolore exercitationem qui vel eum. Doloribus distinctio vel est ex non.', 66.95, NULL, 'products_images/01JW1453TCM7P6K9HJRP8CCRB2.jpeg', NULL, '2025-05-04 19:37:22', '2025-05-24 12:26:45'),
(5, 8, 'macbook-pro-m4pro-16-inch', 'Macbook Pro M4Pro 16-inch', 'Asperiores et adipisci eveniet dolores cupiditate reprehenderit quis. Quasi qui officia ea velit. Vel veritatis et aliquid minima ab nihil sapiente eaque.', 98.16, 68.71, 'products_images/01JW145MX55TE3YPZ42DDRE948.jpeg', NULL, '2025-05-04 19:37:23', '2025-05-24 20:37:20'),
(6, 8, 'macbook-pro-m4max-16-inch', 'Macbook Pro M4Max 16-inch', 'Qui dicta dolorum explicabo. Placeat reprehenderit omnis sint aut. Quia sed autem id et ratione repellat.', 71.86, NULL, 'products_images/01JW146EG9DPP8CE9CSA8WXQTZ.jpeg', NULL, '2025-05-04 19:37:24', '2025-05-24 12:27:29'),
(7, 9, 'imac-24-inch', 'iMac 24-inch', 'Aspernatur omnis ex cum. Suscipit voluptatem tempore architecto fugit ut consequatur ea. Cum sint soluta alias molestiae.', 19.87, NULL, 'products_images/01JW1475E5TX4SKJHCNY1DW2M0.jpg', NULL, '2025-05-04 19:37:24', '2025-05-24 12:27:53'),
(8, 10, 'mac-mini-m4', 'Mac mini M4', 'Quas est cumque voluptatem recusandae officia debitis optio ratione. Animi at facilis autem et. Sed incidunt nam occaecati id. Quia dolorem delectus eius.', 44.67, NULL, 'products_images/01JW147TGSFYDN323VKZX1G4V3.jpg', NULL, '2025-05-04 19:37:25', '2025-05-24 12:28:14'),
(9, 10, 'mac-mini-m4pro', 'Mac mini M4Pro', 'Neque est sint quidem qui voluptatem inventore vero. Ea quod in blanditiis eveniet et impedit.', 64.08, 57.67, 'products_images/01JW148EC59Y755HFBX551683B.jpg', NULL, '2025-05-04 19:37:26', '2025-05-24 12:28:35'),
(10, 11, 'mac-studio-m3ultra', 'Mac Studio M3Ultra', 'Officiis sit sunt et molestiae. Magni itaque assumenda nam animi aliquid occaecati a. Quia est quia ipsum in asperiores. Deserunt eum rerum assumenda nemo veritatis.', 79.87, NULL, 'products_images/01JW1496VJQ3KA7ZCTK56ZFVGM.jpg', NULL, '2025-05-04 19:37:26', '2025-05-24 12:29:00'),
(11, 11, 'mac-studio-m4max', 'Mac Studio M4Max', 'Quia vel a cum quo quae. Neque corporis totam illum facilis omnis doloribus. Quisquam voluptatem tempore amet enim voluptatem beatae et. Et illum corporis vel tenetur amet.', 72.48, 65.23, 'products_images/01JW149TYJ9X5MQHQ004KHVC4F.jpeg', NULL, '2025-05-04 19:37:27', '2025-05-24 12:29:20'),
(12, 12, 'iphone-16-128gb', 'iPhone 16 128GB', 'Voluptate eligendi tempore voluptatem maxime rem iste. Et illo adipisci vel sit et architecto nemo voluptatum. Suscipit dolorum eaque nulla. Qui et voluptatem nobis impedit non laboriosam.', 88.73, NULL, 'products_images/01JW14AMB72BZCXAWNFM0MMM1N.jpg', NULL, '2025-05-04 19:37:28', '2025-05-24 12:29:46'),
(13, 12, 'iphone-16-256gb', 'iPhone 16 256GB', 'Repellendus nam exercitationem maiores deleniti facere non culpa. Non tempora voluptatum consequatur eos quibusdam. Aut quaerat porro et.', 52.10, NULL, 'products_images/01JW14B5PHJ60NMY11QNZZJH8J.jpg', NULL, '2025-05-04 19:37:29', '2025-05-24 12:30:04'),
(14, 12, 'iphone-16-512gb', 'iPhone 16 512GB', 'Nam ratione ratione optio eum temporibus et repellat. Ipsa unde dolor ipsa deserunt voluptas. Eaque rerum est aperiam voluptas.', 94.65, 85.19, 'products_images/01JW14BQ8B9G3HMWGWD11WM8XN.jpg', NULL, '2025-05-04 19:37:29', '2025-05-24 12:30:22'),
(15, 13, 'iphone-16-plus-128gb', 'iPhone 16 Plus 128GB', 'Quia numquam autem dolores quos placeat hic. Et minima qui voluptatem id non deserunt dolores.', 79.81, NULL, 'products_images/01JW14CEBG8EWK5TT5QR1CS9SW.jpg', NULL, '2025-05-04 19:37:30', '2025-05-24 12:30:46'),
(16, 13, 'iphone-16-plus-256gb', 'iPhone 16 Plus 256GB', 'Repudiandae quas vel sunt qui et hic officiis qui. Non dicta quia aliquid impedit consequatur molestiae omnis. Culpa ipsam nulla harum qui veniam. Quam eius dolorem omnis harum omnis.', 99.66, NULL, 'products_images/01JW14D0AV8BJRY7X4K8R6H4R1.jpg', NULL, '2025-05-04 19:37:31', '2025-05-24 12:31:04'),
(17, 13, 'iphone-16-plus-512gb', 'iPhone 16 Plus 512GB', 'Et earum facere omnis mollitia molestias nihil. Est iste doloribus deleniti dolores. Possimus iusto quia vel quidem libero laboriosam hic.', 91.13, 82.02, 'products_images/01JW14DHT6SFV8THDVBF5HA516.jpg', NULL, '2025-05-04 19:37:31', '2025-05-24 12:31:22'),
(18, 14, 'iphone-16-pro-256gb', 'iPhone 16 Pro 256GB', 'Modi blanditiis sapiente sequi exercitationem adipisci harum. Commodi vitae sunt in eos. Nemo sit dolor sed nulla aspernatur. Sit laboriosam ullam ipsum ut hic iure.', 72.78, NULL, 'products_images/01JW14E3XC6RFSYKP10XRSBRS2.jpg', NULL, '2025-05-04 19:37:32', '2025-05-24 12:31:40'),
(19, 14, 'iphone-16-pro-512gb', 'iPhone 16 Pro 512GB', 'Fuga accusantium sapiente est dolore. Et laboriosam nulla earum et numquam culpa. Qui assumenda enim quam soluta. Reprehenderit sit quod qui debitis ad.', 10.59, NULL, 'products_images/01JW14EQ2XTD389X2EYQ626RVZ.jpg', NULL, '2025-05-04 19:37:33', '2025-05-24 12:32:00'),
(20, 14, 'iphone-16-pro-1tb', 'iPhone 16 Pro 1TB', 'Repudiandae accusamus dolore dolor asperiores perferendis et aut non. Qui esse placeat commodi. Voluptas dolore voluptatem soluta voluptatem cumque.', 22.80, 20.52, 'products_images/01JW14F8JXNWAXSV2D13NWPPTW.jpg', NULL, '2025-05-04 19:37:33', '2025-05-24 12:32:18'),
(21, 15, 'iphone-16-pro-max-256gb', 'iPhone 16 Pro Max 256GB', 'Totam deleniti magni omnis animi sint. Temporibus magni ea id aspernatur perferendis rerum est. Amet voluptas ipsum sint fuga ea.', 85.22, NULL, 'products_images/01JW14FT8WNN92PQFC1CDYAW4Z.jpg', NULL, '2025-05-04 19:37:34', '2025-05-24 12:32:36'),
(22, 15, 'iphone-16-pro-max-512gb', 'iPhone 16 Pro Max 512GB', 'Est officiis et dolorum rerum doloribus pariatur. Doloribus voluptate non occaecati reprehenderit.', 77.81, NULL, 'products_images/01JW14G93CN0VYFS6KMF3YAZHW.jpg', NULL, '2025-05-04 19:37:35', '2025-05-24 12:32:51'),
(23, 15, 'iphone-16-pro-max-1tb', 'iPhone 16 Pro Max 1TB', 'Veritatis nesciunt deserunt ullam est nihil enim sit. Nisi laborum itaque aut sit. Harum non ea dolorem tempora accusantium. Voluptatum cumque dolores sit omnis ad.', 30.53, NULL, 'products_images/01JW14GSX11Q4G0DWEWJ0ET087.jpg', NULL, '2025-05-04 19:37:36', '2025-05-24 12:33:09'),
(24, 16, 'ipad-pro-11-inch', 'iPad Pro 11-inch', 'Nemo et odio rerum alias. Incidunt aliquid labore et provident dolores. Soluta qui placeat commodi et quam. Odit eum et quis beatae sed suscipit id.', 72.83, NULL, 'products_images/01JW14HZPQ4233Y8J16QXBDDY2.jpg', NULL, '2025-05-04 19:37:37', '2025-05-24 12:33:47'),
(25, 16, 'ipad-pro-13-inch', 'iPad Pro 13-inch', 'Ratione est et qui aut. Non qui non vel qui. Placeat incidunt quisquam illo quo ad perspiciatis corrupti. Qui consequatur culpa occaecati enim quia ullam.', 4.41, NULL, 'products_images/01JW14JGTN0D7ZG6KHCN1KTJ1Z.jpg', NULL, '2025-05-04 19:37:37', '2025-05-24 12:34:05'),
(26, 17, 'ipad-air-11-inch', 'iPad Air 11-inch', 'Quis quia quis quis excepturi velit. Soluta ab non quia. Mollitia non repellat et et ut praesentium sequi.', 84.13, NULL, 'products_images/01JW14X9G7BX3DM2ACGY59M9K3.jpg', NULL, '2025-05-04 19:37:38', '2025-05-24 12:39:58'),
(27, 17, 'ipad-air-13-inch', 'iPad Air 13-inch', 'Atque et eveniet aut sed et cupiditate et. Libero odit eum rem corporis. Corporis error mollitia optio minus est excepturi modi optio. Sapiente hic tenetur perspiciatis rem est ea quos.', 52.35, NULL, 'products_images/01JW14WCPCS9H9D1Y07S1M5MFE.jpg', NULL, '2025-05-04 19:37:39', '2025-05-24 12:39:28'),
(28, 18, 'ipad-mini-83-inch', 'iPad Mini 8.3-inch', 'Consequatur ut nisi rerum ea doloremque esse. Voluptatem natus ullam voluptatibus.', 59.96, 41.97, 'products_images/01JW14VS05CQDYSYDBP7KWM305.jpeg', NULL, '2025-05-04 19:37:40', '2025-05-24 12:39:08'),
(29, 19, 'apple-watch-series-10-42mm', 'Apple Watch Series 10 42mm', 'Consequatur ratione nihil ut magnam veniam rerum. Amet incidunt id reiciendis libero. Qui fugit facere est quo qui labore.', 92.46, NULL, 'products_images/01JW14V5NEVQFHHDNTWRZ2QPPN.jpg', NULL, '2025-05-04 19:37:41', '2025-05-24 12:38:48'),
(30, 19, 'apple-watch-series-10-46mm', 'Apple Watch Series 10 46mm', 'Soluta quae aliquid quibusdam ut velit temporibus aut non. Culpa doloremque ullam eveniet quia. Labore recusandae dolorem animi sed. Illo et aut eaque animi.', 2.81, 2.53, 'products_images/01JW14TMS6ETN35MNV97CTDQ94.jpg', NULL, '2025-05-04 19:37:41', '2025-05-24 12:38:31'),
(31, 20, 'apple-watch-series-ultra-2-49mm', 'Apple Watch Series Ultra 2 49mm', 'Ducimus quaerat dignissimos modi dolor cumque et voluptatum. Recusandae sed ipsum ut repellendus. Voluptas quaerat nihil maiores numquam. Quos sit repellat debitis soluta earum aut.', 3.23, NULL, 'products_images/01JW14T03EBW99657G0E45SP1R.jpg', NULL, '2025-05-04 19:37:42', '2025-05-24 12:38:10'),
(32, 21, 'airpods-pro', 'AirPods Pro', 'Suscipit et fugiat at eius mollitia rerum. Doloremque eligendi sint et iure deleniti. Et quia tenetur voluptas rerum cumque architecto.', 55.04, NULL, 'products_images/01JW14SBRJFTGFANC7E9YAEDFC.jpg', NULL, '2025-05-04 19:37:43', '2025-05-24 12:37:49'),
(33, 22, 'airpods-max', 'AirPods Max', 'Et minus sapiente repellat rem eum. Consequatur sit consectetur consequatur illum. Et consequatur quibusdam ea officia. Quasi dignissimos est est et. Id dolorum possimus repellat dolores.', 22.09, NULL, 'products_images/01JW14RT047132Q8AQB7N4G9WK.jpg', NULL, '2025-05-04 19:37:43', '2025-05-24 12:37:31'),
(34, 23, 'airpods-4', 'AirPods 4', 'Debitis impedit est explicabo autem debitis fuga. Voluptas ut omnis temporibus non. Sit consequatur aut rem rem expedita eos amet.', 29.21, NULL, 'products_images/01JW14R7M1BE1328Q9TZKTGA25.jpg', NULL, '2025-05-04 19:37:43', '2025-05-24 12:37:12'),
(35, 24, 'apple-tv-4k', 'Apple TV 4K', 'Quisquam itaque necessitatibus mollitia recusandae ipsa. Ullam molestiae a velit harum adipisci. Quia consequatur sit ducimus omnis nihil.', 53.57, 32.14, 'products_images/01JW14QPJ5QQT0JRVZ8JPAJ770.jpg', NULL, '2025-05-04 19:37:45', '2025-05-24 12:36:54'),
(36, 25, 'homepod', 'HomePod', 'Sed consequatur voluptas illo porro eligendi voluptas animi. Repudiandae maxime odit saepe consequatur qui ea. Nobis voluptatem sapiente adipisci ipsa dicta.', 97.80, NULL, 'products_images/01JW14KRXXHY3TFJX64ZWPCX6A.jpg', NULL, '2025-05-04 19:37:45', '2025-05-24 12:34:46'),
(37, 26, 'homepod-mini', 'HomePod mini', 'Itaque quod ut qui. Accusamus necessitatibus architecto voluptas molestiae totam quisquam. Non nihil id enim dolor sit temporibus est. Id aut dolores sed explicabo ut asperiores illum.', 77.52, 62.02, 'products_images/01JW14K5RS3Y5VN5WA4381W1VQ.jpg', NULL, '2025-05-04 19:37:46', '2025-05-24 12:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:19:38', '2025-05-04 20:19:38'),
(2, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:19:38', '2025-05-04 20:19:38'),
(3, 'http://localhost/storage/product_variant_images/pexels-photo-15941887.jpeg', '2025-05-04 20:19:38', '2025-05-04 20:19:38'),
(4, 'http://localhost/storage/product_variant_images/pexels-photo-15941885.jpeg', '2025-05-04 20:19:38', '2025-05-04 20:19:38'),
(5, 'http://localhost/storage/product_variant_images/pexels-photo-812264.jpeg', '2025-05-04 20:19:40', '2025-05-04 20:19:40'),
(6, 'http://localhost/storage/product_variant_images/pexels-photo-5411302.jpeg', '2025-05-04 20:19:40', '2025-05-04 20:19:40'),
(7, 'http://localhost/storage/product_variant_images/pexels-photo-8121627.jpeg', '2025-05-04 20:19:40', '2025-05-04 20:19:40'),
(8, 'http://localhost/storage/product_variant_images/pexels-photo-16150339.jpeg', '2025-05-04 20:19:40', '2025-05-04 20:19:40'),
(9, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:19:42', '2025-05-04 20:19:42'),
(10, 'http://localhost/storage/product_variant_images/pexels-photo-15941871.jpeg', '2025-05-04 20:19:42', '2025-05-04 20:19:42'),
(11, 'http://localhost/storage/product_variant_images/pexels-photo-15941869.jpeg', '2025-05-04 20:19:42', '2025-05-04 20:19:42'),
(12, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:19:42', '2025-05-04 20:19:42'),
(13, 'http://localhost/storage/product_variant_images/pexels-photo-6224738.jpeg', '2025-05-04 20:19:45', '2025-05-04 20:19:45'),
(14, 'http://localhost/storage/product_variant_images/pexels-photo-5716525.jpeg', '2025-05-04 20:19:45', '2025-05-04 20:19:45'),
(15, 'http://localhost/storage/product_variant_images/pexels-photo-19118861.jpeg', '2025-05-04 20:19:45', '2025-05-04 20:19:45'),
(16, 'http://localhost/storage/product_variant_images/pexels-photo-6224622.jpeg', '2025-05-04 20:19:45', '2025-05-04 20:19:45'),
(17, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:19:46', '2025-05-04 20:19:46'),
(18, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:19:46', '2025-05-04 20:19:46'),
(19, 'http://localhost/storage/product_variant_images/pexels-photo-15941887.jpeg', '2025-05-04 20:19:46', '2025-05-04 20:19:46'),
(20, 'http://localhost/storage/product_variant_images/pexels-photo-15941885.jpeg', '2025-05-04 20:19:46', '2025-05-04 20:19:46'),
(21, 'http://localhost/storage/product_variant_images/pexels-photo-812264.jpeg', '2025-05-04 20:19:47', '2025-05-04 20:19:47'),
(22, 'http://localhost/storage/product_variant_images/pexels-photo-5411302.jpeg', '2025-05-04 20:19:47', '2025-05-04 20:19:47'),
(23, 'http://localhost/storage/product_variant_images/pexels-photo-8121627.jpeg', '2025-05-04 20:19:47', '2025-05-04 20:19:47'),
(24, 'http://localhost/storage/product_variant_images/pexels-photo-16150339.jpeg', '2025-05-04 20:19:47', '2025-05-04 20:19:47'),
(25, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:19:48', '2025-05-04 20:19:48'),
(26, 'http://localhost/storage/product_variant_images/pexels-photo-15941871.jpeg', '2025-05-04 20:19:48', '2025-05-04 20:19:48'),
(27, 'http://localhost/storage/product_variant_images/pexels-photo-15941869.jpeg', '2025-05-04 20:19:48', '2025-05-04 20:19:48'),
(28, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:19:48', '2025-05-04 20:19:48'),
(29, 'http://localhost/storage/product_variant_images/pexels-photo-6224738.jpeg', '2025-05-04 20:19:50', '2025-05-04 20:19:50'),
(30, 'http://localhost/storage/product_variant_images/pexels-photo-5716525.jpeg', '2025-05-04 20:19:50', '2025-05-04 20:19:50'),
(31, 'http://localhost/storage/product_variant_images/pexels-photo-19118861.jpeg', '2025-05-04 20:19:50', '2025-05-04 20:19:50'),
(32, 'http://localhost/storage/product_variant_images/pexels-photo-6224622.jpeg', '2025-05-04 20:19:50', '2025-05-04 20:19:50'),
(33, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:19:51', '2025-05-04 20:19:51'),
(34, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:19:51', '2025-05-04 20:19:51'),
(35, 'http://localhost/storage/product_variant_images/pexels-photo-15941887.jpeg', '2025-05-04 20:19:51', '2025-05-04 20:19:51'),
(36, 'http://localhost/storage/product_variant_images/pexels-photo-15941885.jpeg', '2025-05-04 20:19:51', '2025-05-04 20:19:51'),
(37, 'http://localhost/storage/product_variant_images/pexels-photo-812264.jpeg', '2025-05-04 20:19:52', '2025-05-04 20:19:52'),
(38, 'http://localhost/storage/product_variant_images/pexels-photo-5411302.jpeg', '2025-05-04 20:19:52', '2025-05-04 20:19:52'),
(39, 'http://localhost/storage/product_variant_images/pexels-photo-8121627.jpeg', '2025-05-04 20:19:52', '2025-05-04 20:19:52'),
(40, 'http://localhost/storage/product_variant_images/pexels-photo-16150339.jpeg', '2025-05-04 20:19:52', '2025-05-04 20:19:52'),
(41, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:19:53', '2025-05-04 20:19:53'),
(42, 'http://localhost/storage/product_variant_images/pexels-photo-15941871.jpeg', '2025-05-04 20:19:53', '2025-05-04 20:19:53'),
(43, 'http://localhost/storage/product_variant_images/pexels-photo-15941869.jpeg', '2025-05-04 20:19:53', '2025-05-04 20:19:53'),
(44, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:19:53', '2025-05-04 20:19:53'),
(45, 'http://localhost/storage/product_variant_images/pexels-photo-6224738.jpeg', '2025-05-04 20:19:55', '2025-05-04 20:19:55'),
(46, 'http://localhost/storage/product_variant_images/pexels-photo-5716525.jpeg', '2025-05-04 20:19:55', '2025-05-04 20:19:55'),
(47, 'http://localhost/storage/product_variant_images/pexels-photo-19118861.jpeg', '2025-05-04 20:19:55', '2025-05-04 20:19:55'),
(48, 'http://localhost/storage/product_variant_images/pexels-photo-6224622.jpeg', '2025-05-04 20:19:55', '2025-05-04 20:19:55'),
(49, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:19:56', '2025-05-04 20:19:56'),
(50, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:19:56', '2025-05-04 20:19:56'),
(51, 'http://localhost/storage/product_variant_images/pexels-photo-15941887.jpeg', '2025-05-04 20:19:56', '2025-05-04 20:19:56'),
(52, 'http://localhost/storage/product_variant_images/pexels-photo-15941885.jpeg', '2025-05-04 20:19:56', '2025-05-04 20:19:56'),
(53, 'http://localhost/storage/product_variant_images/pexels-photo-812264.jpeg', '2025-05-04 20:19:58', '2025-05-04 20:19:58'),
(54, 'http://localhost/storage/product_variant_images/pexels-photo-5411302.jpeg', '2025-05-04 20:19:58', '2025-05-04 20:19:58'),
(55, 'http://localhost/storage/product_variant_images/pexels-photo-8121627.jpeg', '2025-05-04 20:19:58', '2025-05-04 20:19:58'),
(56, 'http://localhost/storage/product_variant_images/pexels-photo-30428419.jpeg', '2025-05-04 20:19:58', '2025-05-04 20:19:58'),
(57, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:20:00', '2025-05-04 20:20:00'),
(58, 'http://localhost/storage/product_variant_images/pexels-photo-15941871.jpeg', '2025-05-04 20:20:00', '2025-05-04 20:20:00'),
(59, 'http://localhost/storage/product_variant_images/pexels-photo-15941869.jpeg', '2025-05-04 20:20:00', '2025-05-04 20:20:00'),
(60, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:20:00', '2025-05-04 20:20:00'),
(61, 'http://localhost/storage/product_variant_images/pexels-photo-6224738.jpeg', '2025-05-04 20:20:02', '2025-05-04 20:20:02'),
(62, 'http://localhost/storage/product_variant_images/pexels-photo-5716525.jpeg', '2025-05-04 20:20:02', '2025-05-04 20:20:02'),
(63, 'http://localhost/storage/product_variant_images/pexels-photo-6224622.jpeg', '2025-05-04 20:20:02', '2025-05-04 20:20:02'),
(64, 'http://localhost/storage/product_variant_images/pexels-photo-6224732.jpeg', '2025-05-04 20:20:02', '2025-05-04 20:20:02'),
(65, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:20:03', '2025-05-04 20:20:03'),
(66, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:20:03', '2025-05-04 20:20:03'),
(67, 'http://localhost/storage/product_variant_images/pexels-photo-15941887.jpeg', '2025-05-04 20:20:03', '2025-05-04 20:20:03'),
(68, 'http://localhost/storage/product_variant_images/pexels-photo-15941885.jpeg', '2025-05-04 20:20:03', '2025-05-04 20:20:03'),
(69, 'http://localhost/storage/product_variant_images/pexels-photo-812264.jpeg', '2025-05-04 20:20:04', '2025-05-04 20:20:04'),
(70, 'http://localhost/storage/product_variant_images/pexels-photo-5411302.jpeg', '2025-05-04 20:20:04', '2025-05-04 20:20:04'),
(71, 'http://localhost/storage/product_variant_images/pexels-photo-8121627.jpeg', '2025-05-04 20:20:04', '2025-05-04 20:20:04'),
(72, 'http://localhost/storage/product_variant_images/pexels-photo-30428419.jpeg', '2025-05-04 20:20:04', '2025-05-04 20:20:04'),
(73, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:20:06', '2025-05-04 20:20:06'),
(74, 'http://localhost/storage/product_variant_images/pexels-photo-15941871.jpeg', '2025-05-04 20:20:06', '2025-05-04 20:20:06'),
(75, 'http://localhost/storage/product_variant_images/pexels-photo-15941869.jpeg', '2025-05-04 20:20:06', '2025-05-04 20:20:06'),
(76, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:20:06', '2025-05-04 20:20:06'),
(77, 'http://localhost/storage/product_variant_images/pexels-photo-6224738.jpeg', '2025-05-04 20:20:07', '2025-05-04 20:20:07'),
(78, 'http://localhost/storage/product_variant_images/pexels-photo-5716525.jpeg', '2025-05-04 20:20:07', '2025-05-04 20:20:07'),
(79, 'http://localhost/storage/product_variant_images/pexels-photo-6224622.jpeg', '2025-05-04 20:20:07', '2025-05-04 20:20:07'),
(80, 'http://localhost/storage/product_variant_images/pexels-photo-6224732.jpeg', '2025-05-04 20:20:07', '2025-05-04 20:20:07'),
(81, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:20:08', '2025-05-04 20:20:08'),
(82, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:20:08', '2025-05-04 20:20:08'),
(83, 'http://localhost/storage/product_variant_images/pexels-photo-15941887.jpeg', '2025-05-04 20:20:08', '2025-05-04 20:20:08'),
(84, 'http://localhost/storage/product_variant_images/pexels-photo-15941885.jpeg', '2025-05-04 20:20:08', '2025-05-04 20:20:08'),
(85, 'http://localhost/storage/product_variant_images/pexels-photo-812264.jpeg', '2025-05-04 20:20:09', '2025-05-04 20:20:09'),
(86, 'http://localhost/storage/product_variant_images/pexels-photo-5411302.jpeg', '2025-05-04 20:20:09', '2025-05-04 20:20:09'),
(87, 'http://localhost/storage/product_variant_images/pexels-photo-8121627.jpeg', '2025-05-04 20:20:09', '2025-05-04 20:20:09'),
(88, 'http://localhost/storage/product_variant_images/pexels-photo-30428419.jpeg', '2025-05-04 20:20:09', '2025-05-04 20:20:09'),
(89, 'http://localhost/storage/product_variant_images/pexels-photo-15941875.jpeg', '2025-05-04 20:20:10', '2025-05-04 20:20:10'),
(90, 'http://localhost/storage/product_variant_images/pexels-photo-15941871.jpeg', '2025-05-04 20:20:10', '2025-05-04 20:20:10'),
(91, 'http://localhost/storage/product_variant_images/pexels-photo-15941869.jpeg', '2025-05-04 20:20:10', '2025-05-04 20:20:10'),
(92, 'http://localhost/storage/product_variant_images/pexels-photo-15941877.jpeg', '2025-05-04 20:20:10', '2025-05-04 20:20:10'),
(93, 'http://localhost/storage/product_variant_images/pexels-photo-6224738.jpeg', '2025-05-04 20:20:12', '2025-05-04 20:20:12'),
(94, 'http://localhost/storage/product_variant_images/pexels-photo-5716525.jpeg', '2025-05-04 20:20:12', '2025-05-04 20:20:12'),
(95, 'http://localhost/storage/product_variant_images/pexels-photo-6224622.jpeg', '2025-05-04 20:20:12', '2025-05-04 20:20:12'),
(96, 'http://localhost/storage/product_variant_images/pexels-photo-6224732.jpeg', '2025-05-04 20:20:12', '2025-05-04 20:20:12'),
(97, 'http://localhost/storage/product_variant_images/pexels-photo-2528116.jpeg', '2025-05-04 20:20:14', '2025-05-04 20:20:14'),
(98, 'http://localhost/storage/product_variant_images/pexels-photo-5386831.jpeg', '2025-05-04 20:20:14', '2025-05-04 20:20:14'),
(99, 'http://localhost/storage/product_variant_images/pexels-photo-6192119.jpeg', '2025-05-04 20:20:14', '2025-05-04 20:20:14'),
(100, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 20:20:14', '2025-05-04 20:20:14'),
(101, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:16', '2025-05-04 20:20:16'),
(102, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:16', '2025-05-04 20:20:16'),
(103, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:16', '2025-05-04 20:20:16'),
(104, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:16', '2025-05-04 20:20:16'),
(105, 'http://localhost/storage/product_variant_images/pexels-photo-2528116.jpeg', '2025-05-04 20:20:18', '2025-05-04 20:20:18'),
(106, 'http://localhost/storage/product_variant_images/pexels-photo-5386831.jpeg', '2025-05-04 20:20:18', '2025-05-04 20:20:18'),
(107, 'http://localhost/storage/product_variant_images/pexels-photo-6192119.jpeg', '2025-05-04 20:20:18', '2025-05-04 20:20:18'),
(108, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 20:20:18', '2025-05-04 20:20:18'),
(109, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:19', '2025-05-04 20:20:19'),
(110, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:19', '2025-05-04 20:20:19'),
(111, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:19', '2025-05-04 20:20:19'),
(112, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:19', '2025-05-04 20:20:19'),
(113, 'http://localhost/storage/product_variant_images/pexels-photo-2528116.jpeg', '2025-05-04 20:20:20', '2025-05-04 20:20:20'),
(114, 'http://localhost/storage/product_variant_images/pexels-photo-5386831.jpeg', '2025-05-04 20:20:20', '2025-05-04 20:20:20'),
(115, 'http://localhost/storage/product_variant_images/pexels-photo-6192119.jpeg', '2025-05-04 20:20:20', '2025-05-04 20:20:20'),
(116, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 20:20:20', '2025-05-04 20:20:20'),
(117, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:21', '2025-05-04 20:20:21'),
(118, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:21', '2025-05-04 20:20:21'),
(119, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:21', '2025-05-04 20:20:21'),
(120, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:21', '2025-05-04 20:20:21'),
(121, 'http://localhost/storage/product_variant_images/pexels-photo-2528116.jpeg', '2025-05-04 20:20:23', '2025-05-04 20:20:23'),
(122, 'http://localhost/storage/product_variant_images/pexels-photo-5386831.jpeg', '2025-05-04 20:20:23', '2025-05-04 20:20:23'),
(123, 'http://localhost/storage/product_variant_images/pexels-photo-6192119.jpeg', '2025-05-04 20:20:23', '2025-05-04 20:20:23'),
(124, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 20:20:23', '2025-05-04 20:20:23'),
(125, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:24', '2025-05-04 20:20:24'),
(126, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:24', '2025-05-04 20:20:24'),
(127, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:24', '2025-05-04 20:20:24'),
(128, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:24', '2025-05-04 20:20:24'),
(129, 'http://localhost/storage/product_variant_images/pexels-photo-2528116.jpeg', '2025-05-04 20:20:25', '2025-05-04 20:20:25'),
(130, 'http://localhost/storage/product_variant_images/pexels-photo-5386831.jpeg', '2025-05-04 20:20:25', '2025-05-04 20:20:25'),
(131, 'http://localhost/storage/product_variant_images/pexels-photo-6192119.jpeg', '2025-05-04 20:20:25', '2025-05-04 20:20:25'),
(132, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 20:20:25', '2025-05-04 20:20:25'),
(133, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:26', '2025-05-04 20:20:26'),
(134, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:26', '2025-05-04 20:20:26'),
(135, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:26', '2025-05-04 20:20:26'),
(136, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:26', '2025-05-04 20:20:26'),
(137, 'http://localhost/storage/product_variant_images/pexels-photo-2528116.jpeg', '2025-05-04 20:20:27', '2025-05-04 20:20:27'),
(138, 'http://localhost/storage/product_variant_images/pexels-photo-5386831.jpeg', '2025-05-04 20:20:27', '2025-05-04 20:20:27'),
(139, 'http://localhost/storage/product_variant_images/pexels-photo-6192119.jpeg', '2025-05-04 20:20:27', '2025-05-04 20:20:27'),
(140, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 20:20:27', '2025-05-04 20:20:27'),
(141, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:29', '2025-05-04 20:20:29'),
(142, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:29', '2025-05-04 20:20:29'),
(143, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:29', '2025-05-04 20:20:29'),
(144, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:29', '2025-05-04 20:20:29'),
(145, 'http://localhost/storage/product_variant_images/pexels-photo-5386831.jpeg', '2025-05-04 20:20:30', '2025-05-04 20:20:30'),
(146, 'http://localhost/storage/product_variant_images/pexels-photo-2528116.jpeg', '2025-05-04 20:20:30', '2025-05-04 20:20:30'),
(147, 'http://localhost/storage/product_variant_images/pexels-photo-6192119.jpeg', '2025-05-04 20:20:30', '2025-05-04 20:20:30'),
(148, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 20:20:30', '2025-05-04 20:20:30'),
(149, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:32', '2025-05-04 20:20:32'),
(150, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:32', '2025-05-04 20:20:32'),
(151, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:32', '2025-05-04 20:20:32'),
(152, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:32', '2025-05-04 20:20:32'),
(153, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:33', '2025-05-04 20:20:33'),
(154, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:33', '2025-05-04 20:20:33'),
(155, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:33', '2025-05-04 20:20:33'),
(156, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:33', '2025-05-04 20:20:33'),
(157, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:34', '2025-05-04 20:20:34'),
(158, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:34', '2025-05-04 20:20:34'),
(159, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:34', '2025-05-04 20:20:34'),
(160, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:34', '2025-05-04 20:20:34'),
(161, 'http://localhost/storage/product_variant_images/pexels-photo-5386831.jpeg', '2025-05-04 20:20:36', '2025-05-04 20:20:36'),
(162, 'http://localhost/storage/product_variant_images/pexels-photo-2528116.jpeg', '2025-05-04 20:20:36', '2025-05-04 20:20:36'),
(163, 'http://localhost/storage/product_variant_images/pexels-photo-6192119.jpeg', '2025-05-04 20:20:36', '2025-05-04 20:20:36'),
(164, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 20:20:36', '2025-05-04 20:20:36'),
(165, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:37', '2025-05-04 20:20:37'),
(166, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:37', '2025-05-04 20:20:37'),
(167, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:37', '2025-05-04 20:20:37'),
(168, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:37', '2025-05-04 20:20:37'),
(169, 'http://localhost/storage/product_variant_images/pexels-photo-5386831.jpeg', '2025-05-04 20:20:38', '2025-05-04 20:20:38'),
(170, 'http://localhost/storage/product_variant_images/pexels-photo-2528116.jpeg', '2025-05-04 20:20:38', '2025-05-04 20:20:38'),
(171, 'http://localhost/storage/product_variant_images/pexels-photo-6192119.jpeg', '2025-05-04 20:20:38', '2025-05-04 20:20:38'),
(172, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 20:20:38', '2025-05-04 20:20:38'),
(173, 'http://localhost/storage/product_variant_images/pexels-photo-7281588.jpeg', '2025-05-04 20:20:40', '2025-05-04 20:20:40'),
(174, 'http://localhost/storage/product_variant_images/pexels-photo-7279341.jpeg', '2025-05-04 20:20:40', '2025-05-04 20:20:40'),
(175, 'http://localhost/storage/product_variant_images/pexels-photo-3644098.jpeg', '2025-05-04 20:20:40', '2025-05-04 20:20:40'),
(176, 'http://localhost/storage/product_variant_images/pexels-photo-249538.jpeg', '2025-05-04 20:20:40', '2025-05-04 20:20:40'),
(177, 'http://localhost/storage/product_variant_images/pexels-photo-28821755.jpeg', '2025-05-04 20:20:42', '2025-05-04 20:20:42'),
(178, 'http://localhost/storage/product_variant_images/pexels-photo-6224495.jpeg', '2025-05-04 20:20:42', '2025-05-04 20:20:42'),
(179, 'http://localhost/storage/product_variant_images/pexels-photo-28821761.jpeg', '2025-05-04 20:20:42', '2025-05-04 20:20:42'),
(180, 'http://localhost/storage/product_variant_images/pexels-photo-5716424.jpeg', '2025-05-04 20:20:42', '2025-05-04 20:20:42'),
(181, 'http://localhost/storage/product_variant_images/pexels-photo-19797312.jpeg', '2025-05-04 20:20:45', '2025-05-04 20:20:45'),
(182, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 20:20:45', '2025-05-04 20:20:45'),
(183, 'http://localhost/storage/product_variant_images/pexels-photo-3419692.jpeg', '2025-05-04 20:20:45', '2025-05-04 20:20:45'),
(184, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:20:45', '2025-05-04 20:20:45'),
(185, 'http://localhost/storage/product_variant_images/pexels-photo-2047895.jpeg', '2025-05-04 20:20:47', '2025-05-04 20:20:47'),
(186, 'http://localhost/storage/product_variant_images/pexels-photo-3597777.jpeg', '2025-05-04 20:20:47', '2025-05-04 20:20:47'),
(187, 'http://localhost/storage/product_variant_images/pexels-photo-2644597.jpeg', '2025-05-04 20:20:48', '2025-05-04 20:20:48'),
(188, 'http://localhost/storage/product_variant_images/pexels-photo-5082560.jpeg', '2025-05-04 20:20:48', '2025-05-04 20:20:48'),
(189, 'http://localhost/storage/product_variant_images/pexels-photo-26347670.jpeg', '2025-05-04 20:20:50', '2025-05-04 20:20:50'),
(190, 'http://localhost/storage/product_variant_images/pexels-photo-19797313.jpeg', '2025-05-04 20:20:50', '2025-05-04 20:20:50'),
(191, 'http://localhost/storage/product_variant_images/pexels-photo-30348721.jpeg', '2025-05-04 20:20:50', '2025-05-04 20:20:50'),
(192, 'http://localhost/storage/product_variant_images/pexels-photo-30380673.jpeg', '2025-05-04 20:20:50', '2025-05-04 20:20:50'),
(193, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:20:52', '2025-05-04 20:20:52'),
(194, 'http://localhost/storage/product_variant_images/pexels-photo-6224394.jpeg', '2025-05-04 20:20:52', '2025-05-04 20:20:52'),
(195, 'http://localhost/storage/product_variant_images/pexels-photo-5848864.jpeg', '2025-05-04 20:20:52', '2025-05-04 20:20:52'),
(196, 'http://localhost/storage/product_variant_images/pexels-photo-7842701.jpeg', '2025-05-04 20:20:52', '2025-05-04 20:20:52'),
(197, 'http://localhost/storage/product_variant_images/pexels-photo-16143879.jpeg', '2025-05-04 20:20:55', '2025-05-04 20:20:55'),
(198, 'http://localhost/storage/product_variant_images/pexels-photo-5716198.jpeg', '2025-05-04 20:20:55', '2025-05-04 20:20:55'),
(199, 'http://localhost/storage/product_variant_images/pexels-photo-5716452.jpeg', '2025-05-04 20:20:55', '2025-05-04 20:20:55'),
(200, 'http://localhost/storage/product_variant_images/pexels-photo-28297695.jpeg', '2025-05-04 20:20:55', '2025-05-04 20:20:55'),
(201, 'http://localhost/storage/product_variant_images/pexels-photo-28821755.jpeg', '2025-05-04 20:20:56', '2025-05-04 20:20:56'),
(202, 'http://localhost/storage/product_variant_images/pexels-photo-6224495.jpeg', '2025-05-04 20:20:56', '2025-05-04 20:20:56'),
(203, 'http://localhost/storage/product_variant_images/pexels-photo-28821761.jpeg', '2025-05-04 20:20:56', '2025-05-04 20:20:56'),
(204, 'http://localhost/storage/product_variant_images/pexels-photo-5716424.jpeg', '2025-05-04 20:20:56', '2025-05-04 20:20:56'),
(205, 'http://localhost/storage/product_variant_images/pexels-photo-19797312.jpeg', '2025-05-04 20:20:57', '2025-05-04 20:20:57'),
(206, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 20:20:57', '2025-05-04 20:20:57'),
(207, 'http://localhost/storage/product_variant_images/pexels-photo-3419692.jpeg', '2025-05-04 20:20:57', '2025-05-04 20:20:57'),
(208, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:20:57', '2025-05-04 20:20:57'),
(209, 'http://localhost/storage/product_variant_images/pexels-photo-2047895.jpeg', '2025-05-04 20:20:58', '2025-05-04 20:20:58'),
(210, 'http://localhost/storage/product_variant_images/pexels-photo-3597777.jpeg', '2025-05-04 20:20:58', '2025-05-04 20:20:58'),
(211, 'http://localhost/storage/product_variant_images/pexels-photo-2644597.jpeg', '2025-05-04 20:20:58', '2025-05-04 20:20:58'),
(212, 'http://localhost/storage/product_variant_images/pexels-photo-5082560.jpeg', '2025-05-04 20:20:58', '2025-05-04 20:20:58'),
(213, 'http://localhost/storage/product_variant_images/pexels-photo-26347670.jpeg', '2025-05-04 20:21:00', '2025-05-04 20:21:00'),
(214, 'http://localhost/storage/product_variant_images/pexels-photo-19797313.jpeg', '2025-05-04 20:21:00', '2025-05-04 20:21:00'),
(215, 'http://localhost/storage/product_variant_images/pexels-photo-30348721.jpeg', '2025-05-04 20:21:00', '2025-05-04 20:21:00'),
(216, 'http://localhost/storage/product_variant_images/pexels-photo-30380673.jpeg', '2025-05-04 20:21:00', '2025-05-04 20:21:00'),
(217, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:21:01', '2025-05-04 20:21:01'),
(218, 'http://localhost/storage/product_variant_images/pexels-photo-6224394.jpeg', '2025-05-04 20:21:01', '2025-05-04 20:21:01'),
(219, 'http://localhost/storage/product_variant_images/pexels-photo-5848864.jpeg', '2025-05-04 20:21:01', '2025-05-04 20:21:01'),
(220, 'http://localhost/storage/product_variant_images/pexels-photo-7842701.jpeg', '2025-05-04 20:21:01', '2025-05-04 20:21:01'),
(221, 'http://localhost/storage/product_variant_images/pexels-photo-16143879.jpeg', '2025-05-04 20:21:02', '2025-05-04 20:21:02'),
(222, 'http://localhost/storage/product_variant_images/pexels-photo-5716198.jpeg', '2025-05-04 20:21:02', '2025-05-04 20:21:02'),
(223, 'http://localhost/storage/product_variant_images/pexels-photo-5716452.jpeg', '2025-05-04 20:21:02', '2025-05-04 20:21:02'),
(224, 'http://localhost/storage/product_variant_images/pexels-photo-28297695.jpeg', '2025-05-04 20:21:02', '2025-05-04 20:21:02'),
(225, 'http://localhost/storage/product_variant_images/pexels-photo-28821755.jpeg', '2025-05-04 20:21:03', '2025-05-04 20:21:03'),
(226, 'http://localhost/storage/product_variant_images/pexels-photo-6224495.jpeg', '2025-05-04 20:21:03', '2025-05-04 20:21:03'),
(227, 'http://localhost/storage/product_variant_images/pexels-photo-28821761.jpeg', '2025-05-04 20:21:03', '2025-05-04 20:21:03'),
(228, 'http://localhost/storage/product_variant_images/pexels-photo-5716424.jpeg', '2025-05-04 20:21:03', '2025-05-04 20:21:03'),
(229, 'http://localhost/storage/product_variant_images/pexels-photo-19797312.jpeg', '2025-05-04 20:21:04', '2025-05-04 20:21:04'),
(230, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 20:21:04', '2025-05-04 20:21:04'),
(231, 'http://localhost/storage/product_variant_images/pexels-photo-3419692.jpeg', '2025-05-04 20:21:04', '2025-05-04 20:21:04'),
(232, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:21:04', '2025-05-04 20:21:04'),
(233, 'http://localhost/storage/product_variant_images/pexels-photo-2047895.jpeg', '2025-05-04 20:21:05', '2025-05-04 20:21:05'),
(234, 'http://localhost/storage/product_variant_images/pexels-photo-3597777.jpeg', '2025-05-04 20:21:05', '2025-05-04 20:21:05'),
(235, 'http://localhost/storage/product_variant_images/pexels-photo-2644597.jpeg', '2025-05-04 20:21:05', '2025-05-04 20:21:05'),
(236, 'http://localhost/storage/product_variant_images/pexels-photo-5082560.jpeg', '2025-05-04 20:21:05', '2025-05-04 20:21:05'),
(237, 'http://localhost/storage/product_variant_images/pexels-photo-26347670.jpeg', '2025-05-04 20:21:07', '2025-05-04 20:21:07'),
(238, 'http://localhost/storage/product_variant_images/pexels-photo-19797313.jpeg', '2025-05-04 20:21:07', '2025-05-04 20:21:07'),
(239, 'http://localhost/storage/product_variant_images/pexels-photo-30348721.jpeg', '2025-05-04 20:21:07', '2025-05-04 20:21:07'),
(240, 'http://localhost/storage/product_variant_images/pexels-photo-30380673.jpeg', '2025-05-04 20:21:07', '2025-05-04 20:21:07'),
(241, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:21:08', '2025-05-04 20:21:08'),
(242, 'http://localhost/storage/product_variant_images/pexels-photo-6224394.jpeg', '2025-05-04 20:21:08', '2025-05-04 20:21:08'),
(243, 'http://localhost/storage/product_variant_images/pexels-photo-5848864.jpeg', '2025-05-04 20:21:08', '2025-05-04 20:21:08'),
(244, 'http://localhost/storage/product_variant_images/pexels-photo-7842701.jpeg', '2025-05-04 20:21:08', '2025-05-04 20:21:08'),
(245, 'http://localhost/storage/product_variant_images/pexels-photo-16143879.jpeg', '2025-05-04 20:21:09', '2025-05-04 20:21:09'),
(246, 'http://localhost/storage/product_variant_images/pexels-photo-5716198.jpeg', '2025-05-04 20:21:09', '2025-05-04 20:21:09'),
(247, 'http://localhost/storage/product_variant_images/pexels-photo-5716452.jpeg', '2025-05-04 20:21:09', '2025-05-04 20:21:09'),
(248, 'http://localhost/storage/product_variant_images/pexels-photo-28297695.jpeg', '2025-05-04 20:21:09', '2025-05-04 20:21:09'),
(249, 'http://localhost/storage/product_variant_images/pexels-photo-28821755.jpeg', '2025-05-04 20:21:10', '2025-05-04 20:21:10'),
(250, 'http://localhost/storage/product_variant_images/pexels-photo-6224495.jpeg', '2025-05-04 20:21:10', '2025-05-04 20:21:10'),
(251, 'http://localhost/storage/product_variant_images/pexels-photo-28821761.jpeg', '2025-05-04 20:21:10', '2025-05-04 20:21:10'),
(252, 'http://localhost/storage/product_variant_images/pexels-photo-5716424.jpeg', '2025-05-04 20:21:10', '2025-05-04 20:21:10'),
(253, 'http://localhost/storage/product_variant_images/pexels-photo-19797312.jpeg', '2025-05-04 20:21:11', '2025-05-04 20:21:11'),
(254, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 20:21:11', '2025-05-04 20:21:11'),
(255, 'http://localhost/storage/product_variant_images/pexels-photo-3419692.jpeg', '2025-05-04 20:21:11', '2025-05-04 20:21:11'),
(256, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:21:11', '2025-05-04 20:21:11'),
(257, 'http://localhost/storage/product_variant_images/pexels-photo-2047895.jpeg', '2025-05-04 20:21:12', '2025-05-04 20:21:12'),
(258, 'http://localhost/storage/product_variant_images/pexels-photo-3597777.jpeg', '2025-05-04 20:21:12', '2025-05-04 20:21:12'),
(259, 'http://localhost/storage/product_variant_images/pexels-photo-2644597.jpeg', '2025-05-04 20:21:12', '2025-05-04 20:21:12'),
(260, 'http://localhost/storage/product_variant_images/pexels-photo-5082560.jpeg', '2025-05-04 20:21:12', '2025-05-04 20:21:12'),
(261, 'http://localhost/storage/product_variant_images/pexels-photo-26347670.jpeg', '2025-05-04 20:21:13', '2025-05-04 20:21:13'),
(262, 'http://localhost/storage/product_variant_images/pexels-photo-19797313.jpeg', '2025-05-04 20:21:13', '2025-05-04 20:21:13'),
(263, 'http://localhost/storage/product_variant_images/pexels-photo-30348721.jpeg', '2025-05-04 20:21:13', '2025-05-04 20:21:13'),
(264, 'http://localhost/storage/product_variant_images/pexels-photo-30380673.jpeg', '2025-05-04 20:21:13', '2025-05-04 20:21:13'),
(265, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:21:15', '2025-05-04 20:21:15'),
(266, 'http://localhost/storage/product_variant_images/pexels-photo-6224394.jpeg', '2025-05-04 20:21:15', '2025-05-04 20:21:15'),
(267, 'http://localhost/storage/product_variant_images/pexels-photo-5848864.jpeg', '2025-05-04 20:21:15', '2025-05-04 20:21:15'),
(268, 'http://localhost/storage/product_variant_images/pexels-photo-7842701.jpeg', '2025-05-04 20:21:15', '2025-05-04 20:21:15'),
(269, 'http://localhost/storage/product_variant_images/pexels-photo-16143879.jpeg', '2025-05-04 20:21:16', '2025-05-04 20:21:16'),
(270, 'http://localhost/storage/product_variant_images/pexels-photo-5716198.jpeg', '2025-05-04 20:21:16', '2025-05-04 20:21:16'),
(271, 'http://localhost/storage/product_variant_images/pexels-photo-5716452.jpeg', '2025-05-04 20:21:16', '2025-05-04 20:21:16'),
(272, 'http://localhost/storage/product_variant_images/pexels-photo-28297695.jpeg', '2025-05-04 20:21:16', '2025-05-04 20:21:16'),
(273, 'http://localhost/storage/product_variant_images/pexels-photo-5632388.jpeg', '2025-05-04 20:21:18', '2025-05-04 20:21:18'),
(274, 'http://localhost/storage/product_variant_images/pexels-photo-5632384.jpeg', '2025-05-04 20:21:18', '2025-05-04 20:21:18'),
(275, 'http://localhost/storage/product_variant_images/pexels-photo-7418086.jpeg', '2025-05-04 20:21:18', '2025-05-04 20:21:18'),
(276, 'http://localhost/storage/product_variant_images/pexels-photo-6214478.jpeg', '2025-05-04 20:21:18', '2025-05-04 20:21:18'),
(277, 'http://localhost/storage/product_variant_images/pexels-photo-5632388.jpeg', '2025-05-04 20:21:19', '2025-05-04 20:21:19'),
(278, 'http://localhost/storage/product_variant_images/pexels-photo-5632384.jpeg', '2025-05-04 20:21:19', '2025-05-04 20:21:19'),
(279, 'http://localhost/storage/product_variant_images/pexels-photo-7418086.jpeg', '2025-05-04 20:21:19', '2025-05-04 20:21:19'),
(280, 'http://localhost/storage/product_variant_images/pexels-photo-6214478.jpeg', '2025-05-04 20:21:19', '2025-05-04 20:21:19'),
(281, 'http://localhost/storage/product_variant_images/pexels-photo-5632388.jpeg', '2025-05-04 20:21:21', '2025-05-04 20:21:21'),
(282, 'http://localhost/storage/product_variant_images/pexels-photo-5632384.jpeg', '2025-05-04 20:21:21', '2025-05-04 20:21:21'),
(283, 'http://localhost/storage/product_variant_images/pexels-photo-7418086.jpeg', '2025-05-04 20:21:21', '2025-05-04 20:21:21'),
(284, 'http://localhost/storage/product_variant_images/pexels-photo-6214478.jpeg', '2025-05-04 20:21:21', '2025-05-04 20:21:21'),
(285, 'http://localhost/storage/product_variant_images/pexels-photo-5632388.jpeg', '2025-05-04 20:21:22', '2025-05-04 20:21:22'),
(286, 'http://localhost/storage/product_variant_images/pexels-photo-5632384.jpeg', '2025-05-04 20:21:22', '2025-05-04 20:21:22'),
(287, 'http://localhost/storage/product_variant_images/pexels-photo-7418086.jpeg', '2025-05-04 20:21:22', '2025-05-04 20:21:22'),
(288, 'http://localhost/storage/product_variant_images/pexels-photo-6214478.jpeg', '2025-05-04 20:21:22', '2025-05-04 20:21:22'),
(289, 'http://localhost/storage/product_variant_images/pexels-photo-414974.jpeg', '2025-05-04 20:21:24', '2025-05-04 20:21:24'),
(290, 'http://localhost/storage/product_variant_images/pexels-photo-326518.jpeg', '2025-05-04 20:21:24', '2025-05-04 20:21:24'),
(291, 'http://localhost/storage/product_variant_images/pexels-photo-5082565.jpeg', '2025-05-04 20:21:24', '2025-05-04 20:21:24'),
(292, 'http://localhost/storage/product_variant_images/pexels-photo-6892716.jpeg', '2025-05-04 20:21:24', '2025-05-04 20:21:24'),
(293, 'http://localhost/storage/product_variant_images/pexels-photo-414974.jpeg', '2025-05-04 20:21:26', '2025-05-04 20:21:26'),
(294, 'http://localhost/storage/product_variant_images/pexels-photo-326518.jpeg', '2025-05-04 20:21:26', '2025-05-04 20:21:26'),
(295, 'http://localhost/storage/product_variant_images/pexels-photo-5082565.jpeg', '2025-05-04 20:21:26', '2025-05-04 20:21:26'),
(296, 'http://localhost/storage/product_variant_images/pexels-photo-6892716.jpeg', '2025-05-04 20:21:26', '2025-05-04 20:21:26'),
(297, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:21:29', '2025-05-04 20:21:29'),
(298, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 20:21:29', '2025-05-04 20:21:29'),
(299, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:21:29', '2025-05-04 20:21:29'),
(300, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:21:29', '2025-05-04 20:21:29'),
(301, 'http://localhost/storage/product_variant_images/pexels-photo-3419692.jpeg', '2025-05-04 20:22:07', '2025-05-04 20:22:07'),
(302, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:22:07', '2025-05-04 20:22:07'),
(303, 'http://localhost/storage/product_variant_images/pexels-photo-850360.jpeg', '2025-05-04 20:22:07', '2025-05-04 20:22:07'),
(304, 'http://localhost/storage/product_variant_images/pexels-photo-8605614.jpeg', '2025-05-04 20:22:07', '2025-05-04 20:22:07'),
(305, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:09', '2025-05-04 20:22:09'),
(306, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:09', '2025-05-04 20:22:09'),
(307, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:09', '2025-05-04 20:22:09'),
(308, 'http://localhost/storage/product_variant_images/pexels-photo-28977184.jpeg', '2025-05-04 20:22:09', '2025-05-04 20:22:09'),
(309, 'http://localhost/storage/product_variant_images/pexels-photo-5077065.jpeg', '2025-05-04 20:22:11', '2025-05-04 20:22:11'),
(310, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 20:22:11', '2025-05-04 20:22:11'),
(311, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:11', '2025-05-04 20:22:11'),
(312, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 20:22:11', '2025-05-04 20:22:11'),
(313, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:12', '2025-05-04 20:22:12'),
(314, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 20:22:12', '2025-05-04 20:22:12'),
(315, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:12', '2025-05-04 20:22:12'),
(316, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:12', '2025-05-04 20:22:12'),
(317, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:14', '2025-05-04 20:22:14'),
(318, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:14', '2025-05-04 20:22:14'),
(319, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:14', '2025-05-04 20:22:14'),
(320, 'http://localhost/storage/product_variant_images/pexels-photo-28977184.jpeg', '2025-05-04 20:22:14', '2025-05-04 20:22:14'),
(321, 'http://localhost/storage/product_variant_images/pexels-photo-3419692.jpeg', '2025-05-04 20:22:15', '2025-05-04 20:22:15'),
(322, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:22:15', '2025-05-04 20:22:15'),
(323, 'http://localhost/storage/product_variant_images/pexels-photo-850360.jpeg', '2025-05-04 20:22:15', '2025-05-04 20:22:15'),
(324, 'http://localhost/storage/product_variant_images/pexels-photo-8605614.jpeg', '2025-05-04 20:22:15', '2025-05-04 20:22:15'),
(325, 'http://localhost/storage/product_variant_images/pexels-photo-5077065.jpeg', '2025-05-04 20:22:17', '2025-05-04 20:22:17'),
(326, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 20:22:17', '2025-05-04 20:22:17'),
(327, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:17', '2025-05-04 20:22:17'),
(328, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 20:22:17', '2025-05-04 20:22:17'),
(329, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:18', '2025-05-04 20:22:18'),
(330, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 20:22:18', '2025-05-04 20:22:18'),
(331, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:18', '2025-05-04 20:22:18'),
(332, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:18', '2025-05-04 20:22:18'),
(333, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:19', '2025-05-04 20:22:19'),
(334, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:19', '2025-05-04 20:22:19'),
(335, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:19', '2025-05-04 20:22:19'),
(336, 'http://localhost/storage/product_variant_images/pexels-photo-28977184.jpeg', '2025-05-04 20:22:19', '2025-05-04 20:22:19'),
(337, 'http://localhost/storage/product_variant_images/pexels-photo-3419692.jpeg', '2025-05-04 20:22:21', '2025-05-04 20:22:21'),
(338, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:22:21', '2025-05-04 20:22:21'),
(339, 'http://localhost/storage/product_variant_images/pexels-photo-850360.jpeg', '2025-05-04 20:22:21', '2025-05-04 20:22:21'),
(340, 'http://localhost/storage/product_variant_images/pexels-photo-8605614.jpeg', '2025-05-04 20:22:21', '2025-05-04 20:22:21'),
(341, 'http://localhost/storage/product_variant_images/pexels-photo-5077065.jpeg', '2025-05-04 20:22:23', '2025-05-04 20:22:23'),
(342, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 20:22:23', '2025-05-04 20:22:23'),
(343, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:23', '2025-05-04 20:22:23'),
(344, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 20:22:23', '2025-05-04 20:22:23'),
(345, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:24', '2025-05-04 20:22:24'),
(346, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 20:22:24', '2025-05-04 20:22:24'),
(347, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:24', '2025-05-04 20:22:24'),
(348, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:24', '2025-05-04 20:22:24'),
(349, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:25', '2025-05-04 20:22:25'),
(350, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:25', '2025-05-04 20:22:25'),
(351, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:25', '2025-05-04 20:22:25'),
(352, 'http://localhost/storage/product_variant_images/pexels-photo-28977184.jpeg', '2025-05-04 20:22:25', '2025-05-04 20:22:25'),
(353, 'http://localhost/storage/product_variant_images/pexels-photo-3419692.jpeg', '2025-05-04 20:22:27', '2025-05-04 20:22:27'),
(354, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:22:27', '2025-05-04 20:22:27'),
(355, 'http://localhost/storage/product_variant_images/pexels-photo-850360.jpeg', '2025-05-04 20:22:27', '2025-05-04 20:22:27'),
(356, 'http://localhost/storage/product_variant_images/pexels-photo-8605614.jpeg', '2025-05-04 20:22:27', '2025-05-04 20:22:27'),
(357, 'http://localhost/storage/product_variant_images/pexels-photo-5077065.jpeg', '2025-05-04 20:22:28', '2025-05-04 20:22:28'),
(358, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 20:22:28', '2025-05-04 20:22:28'),
(359, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:28', '2025-05-04 20:22:28'),
(360, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 20:22:28', '2025-05-04 20:22:28'),
(361, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:30', '2025-05-04 20:22:30'),
(362, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 20:22:30', '2025-05-04 20:22:30'),
(363, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:30', '2025-05-04 20:22:30'),
(364, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:30', '2025-05-04 20:22:30'),
(365, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:31', '2025-05-04 20:22:31'),
(366, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:31', '2025-05-04 20:22:31'),
(367, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:31', '2025-05-04 20:22:31'),
(368, 'http://localhost/storage/product_variant_images/pexels-photo-28977184.jpeg', '2025-05-04 20:22:31', '2025-05-04 20:22:31'),
(369, 'http://localhost/storage/product_variant_images/pexels-photo-3419692.jpeg', '2025-05-04 20:22:33', '2025-05-04 20:22:33'),
(370, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:22:33', '2025-05-04 20:22:33'),
(371, 'http://localhost/storage/product_variant_images/pexels-photo-850360.jpeg', '2025-05-04 20:22:33', '2025-05-04 20:22:33'),
(372, 'http://localhost/storage/product_variant_images/pexels-photo-8605614.jpeg', '2025-05-04 20:22:33', '2025-05-04 20:22:33'),
(373, 'http://localhost/storage/product_variant_images/pexels-photo-5077065.jpeg', '2025-05-04 20:22:34', '2025-05-04 20:22:34'),
(374, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 20:22:34', '2025-05-04 20:22:34'),
(375, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:34', '2025-05-04 20:22:34'),
(376, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 20:22:34', '2025-05-04 20:22:34'),
(377, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:35', '2025-05-04 20:22:35'),
(378, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 20:22:35', '2025-05-04 20:22:35'),
(379, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:35', '2025-05-04 20:22:35'),
(380, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:35', '2025-05-04 20:22:35'),
(381, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:37', '2025-05-04 20:22:37'),
(382, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:37', '2025-05-04 20:22:37'),
(383, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:37', '2025-05-04 20:22:37'),
(384, 'http://localhost/storage/product_variant_images/pexels-photo-28977184.jpeg', '2025-05-04 20:22:37', '2025-05-04 20:22:37'),
(385, 'http://localhost/storage/product_variant_images/pexels-photo-3419692.jpeg', '2025-05-04 20:22:38', '2025-05-04 20:22:38'),
(386, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 20:22:38', '2025-05-04 20:22:38'),
(387, 'http://localhost/storage/product_variant_images/pexels-photo-850360.jpeg', '2025-05-04 20:22:38', '2025-05-04 20:22:38'),
(388, 'http://localhost/storage/product_variant_images/pexels-photo-8605614.jpeg', '2025-05-04 20:22:38', '2025-05-04 20:22:38'),
(389, 'http://localhost/storage/product_variant_images/pexels-photo-5077065.jpeg', '2025-05-04 20:22:40', '2025-05-04 20:22:40');
INSERT INTO `product_images` (`id`, `url`, `created_at`, `updated_at`) VALUES
(390, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 20:22:40', '2025-05-04 20:22:40'),
(391, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:40', '2025-05-04 20:22:40'),
(392, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 20:22:40', '2025-05-04 20:22:40'),
(393, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 20:22:41', '2025-05-04 20:22:41'),
(394, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:41', '2025-05-04 20:22:41'),
(395, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:41', '2025-05-04 20:22:41'),
(396, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:41', '2025-05-04 20:22:41'),
(397, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 20:22:42', '2025-05-04 20:22:42'),
(398, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 20:22:42', '2025-05-04 20:22:42'),
(399, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 20:22:42', '2025-05-04 20:22:42'),
(400, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 20:22:42', '2025-05-04 20:22:42'),
(401, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:06:52', '2025-05-04 21:06:52'),
(402, 'http://localhost/storage/product_variant_images/pexels-photo-18525573.jpeg', '2025-05-04 21:06:52', '2025-05-04 21:06:52'),
(403, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:06:52', '2025-05-04 21:06:52'),
(404, 'http://localhost/storage/product_variant_images/pexels-photo-28977184.jpeg', '2025-05-04 21:06:52', '2025-05-04 21:06:52'),
(405, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:06:54', '2025-05-04 21:06:54'),
(406, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 21:06:54', '2025-05-04 21:06:54'),
(407, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:06:54', '2025-05-04 21:06:54'),
(408, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:06:54', '2025-05-04 21:06:54'),
(409, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 21:06:55', '2025-05-04 21:06:55'),
(410, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:06:55', '2025-05-04 21:06:55'),
(411, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:06:55', '2025-05-04 21:06:55'),
(412, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 21:06:55', '2025-05-04 21:06:55'),
(413, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:06:57', '2025-05-04 21:06:57'),
(414, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:06:57', '2025-05-04 21:06:57'),
(415, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 21:06:57', '2025-05-04 21:06:57'),
(416, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 21:06:57', '2025-05-04 21:06:57'),
(417, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:06:59', '2025-05-04 21:06:59'),
(418, 'http://localhost/storage/product_variant_images/pexels-photo-18525573.jpeg', '2025-05-04 21:06:59', '2025-05-04 21:06:59'),
(419, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:06:59', '2025-05-04 21:06:59'),
(420, 'http://localhost/storage/product_variant_images/pexels-photo-25344335.jpeg', '2025-05-04 21:06:59', '2025-05-04 21:06:59'),
(421, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:00', '2025-05-04 21:07:00'),
(422, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 21:07:00', '2025-05-04 21:07:00'),
(423, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:00', '2025-05-04 21:07:00'),
(424, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:07:00', '2025-05-04 21:07:00'),
(425, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 21:07:02', '2025-05-04 21:07:02'),
(426, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:02', '2025-05-04 21:07:02'),
(427, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:07:02', '2025-05-04 21:07:02'),
(428, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 21:07:02', '2025-05-04 21:07:02'),
(429, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:03', '2025-05-04 21:07:03'),
(430, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:07:03', '2025-05-04 21:07:03'),
(431, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 21:07:03', '2025-05-04 21:07:03'),
(432, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 21:07:03', '2025-05-04 21:07:03'),
(433, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:05', '2025-05-04 21:07:05'),
(434, 'http://localhost/storage/product_variant_images/pexels-photo-18525573.jpeg', '2025-05-04 21:07:05', '2025-05-04 21:07:05'),
(435, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:07:05', '2025-05-04 21:07:05'),
(436, 'http://localhost/storage/product_variant_images/pexels-photo-28977184.jpeg', '2025-05-04 21:07:05', '2025-05-04 21:07:05'),
(437, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:06', '2025-05-04 21:07:06'),
(438, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 21:07:06', '2025-05-04 21:07:06'),
(439, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:06', '2025-05-04 21:07:06'),
(440, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:07:06', '2025-05-04 21:07:06'),
(441, 'http://localhost/storage/product_variant_images/pexels-photo-18403793.jpeg', '2025-05-04 21:07:09', '2025-05-04 21:07:09'),
(442, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 21:07:09', '2025-05-04 21:07:09'),
(443, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:09', '2025-05-04 21:07:09'),
(444, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:07:09', '2025-05-04 21:07:09'),
(445, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:10', '2025-05-04 21:07:10'),
(446, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:10', '2025-05-04 21:07:10'),
(447, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:07:10', '2025-05-04 21:07:10'),
(448, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 21:07:10', '2025-05-04 21:07:10'),
(449, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:12', '2025-05-04 21:07:12'),
(450, 'http://localhost/storage/product_variant_images/pexels-photo-18525573.jpeg', '2025-05-04 21:07:12', '2025-05-04 21:07:12'),
(451, 'http://localhost/storage/product_variant_images/pexels-photo-3707744.jpeg', '2025-05-04 21:07:12', '2025-05-04 21:07:12'),
(452, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:07:12', '2025-05-04 21:07:12'),
(453, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:14', '2025-05-04 21:07:14'),
(454, 'http://localhost/storage/product_variant_images/pexels-photo-29020349.jpeg', '2025-05-04 21:07:14', '2025-05-04 21:07:14'),
(455, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 21:07:14', '2025-05-04 21:07:14'),
(456, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:14', '2025-05-04 21:07:14'),
(457, 'http://localhost/storage/product_variant_images/pexels-photo-18403793.jpeg', '2025-05-04 21:07:16', '2025-05-04 21:07:16'),
(458, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 21:07:16', '2025-05-04 21:07:16'),
(459, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:16', '2025-05-04 21:07:16'),
(460, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:07:16', '2025-05-04 21:07:16'),
(461, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:17', '2025-05-04 21:07:17'),
(462, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:17', '2025-05-04 21:07:17'),
(463, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:07:17', '2025-05-04 21:07:17'),
(464, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 21:07:17', '2025-05-04 21:07:17'),
(465, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:19', '2025-05-04 21:07:19'),
(466, 'http://localhost/storage/product_variant_images/pexels-photo-18525573.jpeg', '2025-05-04 21:07:19', '2025-05-04 21:07:19'),
(467, 'http://localhost/storage/product_variant_images/pexels-photo-3707744.jpeg', '2025-05-04 21:07:19', '2025-05-04 21:07:19'),
(468, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:07:19', '2025-05-04 21:07:19'),
(469, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:20', '2025-05-04 21:07:20'),
(470, 'http://localhost/storage/product_variant_images/pexels-photo-29020349.jpeg', '2025-05-04 21:07:20', '2025-05-04 21:07:20'),
(471, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 21:07:20', '2025-05-04 21:07:20'),
(472, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:20', '2025-05-04 21:07:20'),
(473, 'http://localhost/storage/product_variant_images/pexels-photo-18403793.jpeg', '2025-05-04 21:07:22', '2025-05-04 21:07:22'),
(474, 'http://localhost/storage/product_variant_images/pexels-photo-21832894.jpeg', '2025-05-04 21:07:22', '2025-05-04 21:07:22'),
(475, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:22', '2025-05-04 21:07:22'),
(476, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:07:22', '2025-05-04 21:07:22'),
(477, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:23', '2025-05-04 21:07:23'),
(478, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:23', '2025-05-04 21:07:23'),
(479, 'http://localhost/storage/product_variant_images/pexels-photo-29858609.jpeg', '2025-05-04 21:07:23', '2025-05-04 21:07:23'),
(480, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 21:07:23', '2025-05-04 21:07:23'),
(481, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:25', '2025-05-04 21:07:25'),
(482, 'http://localhost/storage/product_variant_images/pexels-photo-18525573.jpeg', '2025-05-04 21:07:25', '2025-05-04 21:07:25'),
(483, 'http://localhost/storage/product_variant_images/pexels-photo-3707744.jpeg', '2025-05-04 21:07:25', '2025-05-04 21:07:25'),
(484, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:07:25', '2025-05-04 21:07:25'),
(485, 'http://localhost/storage/product_variant_images/pexels-photo-18525574.jpeg', '2025-05-04 21:07:26', '2025-05-04 21:07:26'),
(486, 'http://localhost/storage/product_variant_images/pexels-photo-29020349.jpeg', '2025-05-04 21:07:26', '2025-05-04 21:07:26'),
(487, 'http://localhost/storage/product_variant_images/pexels-photo-29696915.jpeg', '2025-05-04 21:07:26', '2025-05-04 21:07:26'),
(488, 'http://localhost/storage/product_variant_images/pexels-photo-29448105.jpeg', '2025-05-04 21:07:26', '2025-05-04 21:07:26'),
(489, 'http://localhost/storage/product_variant_images/pexels-photo-16150334.jpeg', '2025-05-04 21:07:29', '2025-05-04 21:07:29'),
(490, 'http://localhost/storage/product_variant_images/pexels-photo-16150335.jpeg', '2025-05-04 21:07:29', '2025-05-04 21:07:29'),
(491, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 21:07:29', '2025-05-04 21:07:29'),
(492, 'http://localhost/storage/product_variant_images/pexels-photo-19797277.jpeg', '2025-05-04 21:07:29', '2025-05-04 21:07:29'),
(493, 'http://localhost/storage/product_variant_images/pexels-photo-16150334.jpeg', '2025-05-04 21:07:30', '2025-05-04 21:07:30'),
(494, 'http://localhost/storage/product_variant_images/pexels-photo-16150335.jpeg', '2025-05-04 21:07:30', '2025-05-04 21:07:30'),
(495, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 21:07:30', '2025-05-04 21:07:30'),
(496, 'http://localhost/storage/product_variant_images/pexels-photo-19797277.jpeg', '2025-05-04 21:07:30', '2025-05-04 21:07:30'),
(497, 'http://localhost/storage/product_variant_images/pexels-photo-16150334.jpeg', '2025-05-04 21:07:31', '2025-05-04 21:07:31'),
(498, 'http://localhost/storage/product_variant_images/pexels-photo-16150335.jpeg', '2025-05-04 21:07:31', '2025-05-04 21:07:31'),
(499, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 21:07:31', '2025-05-04 21:07:31'),
(500, 'http://localhost/storage/product_variant_images/pexels-photo-19797277.jpeg', '2025-05-04 21:07:31', '2025-05-04 21:07:31'),
(501, 'http://localhost/storage/product_variant_images/pexels-photo-16150334.jpeg', '2025-05-04 21:07:32', '2025-05-04 21:07:32'),
(502, 'http://localhost/storage/product_variant_images/pexels-photo-16150335.jpeg', '2025-05-04 21:07:32', '2025-05-04 21:07:32'),
(503, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 21:07:32', '2025-05-04 21:07:32'),
(504, 'http://localhost/storage/product_variant_images/pexels-photo-19797277.jpeg', '2025-05-04 21:07:32', '2025-05-04 21:07:32'),
(505, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 21:07:34', '2025-05-04 21:07:34'),
(506, 'http://localhost/storage/product_variant_images/pexels-photo-18454153.jpeg', '2025-05-04 21:07:34', '2025-05-04 21:07:34'),
(507, 'http://localhost/storage/product_variant_images/pexels-photo-16738220.jpeg', '2025-05-04 21:07:34', '2025-05-04 21:07:34'),
(508, 'http://localhost/storage/product_variant_images/pexels-photo-12755084.jpeg', '2025-05-04 21:07:34', '2025-05-04 21:07:34'),
(509, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 21:07:36', '2025-05-04 21:07:36'),
(510, 'http://localhost/storage/product_variant_images/pexels-photo-18454153.jpeg', '2025-05-04 21:07:36', '2025-05-04 21:07:36'),
(511, 'http://localhost/storage/product_variant_images/pexels-photo-16738220.jpeg', '2025-05-04 21:07:36', '2025-05-04 21:07:36'),
(512, 'http://localhost/storage/product_variant_images/pexels-photo-12755084.jpeg', '2025-05-04 21:07:36', '2025-05-04 21:07:36'),
(513, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 21:07:37', '2025-05-04 21:07:37'),
(514, 'http://localhost/storage/product_variant_images/pexels-photo-18454153.jpeg', '2025-05-04 21:07:37', '2025-05-04 21:07:37'),
(515, 'http://localhost/storage/product_variant_images/pexels-photo-16738220.jpeg', '2025-05-04 21:07:37', '2025-05-04 21:07:37'),
(516, 'http://localhost/storage/product_variant_images/pexels-photo-12755084.jpeg', '2025-05-04 21:07:37', '2025-05-04 21:07:37'),
(517, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 21:07:38', '2025-05-04 21:07:38'),
(518, 'http://localhost/storage/product_variant_images/pexels-photo-18454153.jpeg', '2025-05-04 21:07:38', '2025-05-04 21:07:38'),
(519, 'http://localhost/storage/product_variant_images/pexels-photo-16738220.jpeg', '2025-05-04 21:07:38', '2025-05-04 21:07:38'),
(520, 'http://localhost/storage/product_variant_images/pexels-photo-12755084.jpeg', '2025-05-04 21:07:38', '2025-05-04 21:07:38'),
(521, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 21:07:39', '2025-05-04 21:07:39'),
(522, 'http://localhost/storage/product_variant_images/pexels-photo-18454153.jpeg', '2025-05-04 21:07:39', '2025-05-04 21:07:39'),
(523, 'http://localhost/storage/product_variant_images/pexels-photo-16738220.jpeg', '2025-05-04 21:07:39', '2025-05-04 21:07:39'),
(524, 'http://localhost/storage/product_variant_images/pexels-photo-12755084.jpeg', '2025-05-04 21:07:39', '2025-05-04 21:07:39'),
(525, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 21:07:41', '2025-05-04 21:07:41'),
(526, 'http://localhost/storage/product_variant_images/pexels-photo-18454153.jpeg', '2025-05-04 21:07:41', '2025-05-04 21:07:41'),
(527, 'http://localhost/storage/product_variant_images/pexels-photo-16738220.jpeg', '2025-05-04 21:07:41', '2025-05-04 21:07:41'),
(528, 'http://localhost/storage/product_variant_images/pexels-photo-12755084.jpeg', '2025-05-04 21:07:41', '2025-05-04 21:07:41'),
(529, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 21:07:42', '2025-05-04 21:07:42'),
(530, 'http://localhost/storage/product_variant_images/pexels-photo-18454153.jpeg', '2025-05-04 21:07:42', '2025-05-04 21:07:42'),
(531, 'http://localhost/storage/product_variant_images/pexels-photo-16738220.jpeg', '2025-05-04 21:07:42', '2025-05-04 21:07:42'),
(532, 'http://localhost/storage/product_variant_images/pexels-photo-12755084.jpeg', '2025-05-04 21:07:42', '2025-05-04 21:07:42'),
(533, 'http://localhost/storage/product_variant_images/pexels-photo-26706587.jpeg', '2025-05-04 21:07:43', '2025-05-04 21:07:43'),
(534, 'http://localhost/storage/product_variant_images/pexels-photo-18454153.jpeg', '2025-05-04 21:07:43', '2025-05-04 21:07:43'),
(535, 'http://localhost/storage/product_variant_images/pexels-photo-16738220.jpeg', '2025-05-04 21:07:43', '2025-05-04 21:07:43'),
(536, 'http://localhost/storage/product_variant_images/pexels-photo-12755084.jpeg', '2025-05-04 21:07:43', '2025-05-04 21:07:43'),
(537, 'http://localhost/storage/product_variant_images/pexels-photo-16150334.jpeg', '2025-05-04 21:07:45', '2025-05-04 21:07:45'),
(538, 'http://localhost/storage/product_variant_images/pexels-photo-16150335.jpeg', '2025-05-04 21:07:45', '2025-05-04 21:07:45'),
(539, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 21:07:45', '2025-05-04 21:07:45'),
(540, 'http://localhost/storage/product_variant_images/pexels-photo-19797277.jpeg', '2025-05-04 21:07:45', '2025-05-04 21:07:45'),
(541, 'http://localhost/storage/product_variant_images/pexels-photo-16150334.jpeg', '2025-05-04 21:07:46', '2025-05-04 21:07:46'),
(542, 'http://localhost/storage/product_variant_images/pexels-photo-16150335.jpeg', '2025-05-04 21:07:46', '2025-05-04 21:07:46'),
(543, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 21:07:46', '2025-05-04 21:07:46'),
(544, 'http://localhost/storage/product_variant_images/pexels-photo-19797277.jpeg', '2025-05-04 21:07:46', '2025-05-04 21:07:46'),
(545, 'http://localhost/storage/product_variant_images/pexels-photo-16150334.jpeg', '2025-05-04 21:07:47', '2025-05-04 21:07:47'),
(546, 'http://localhost/storage/product_variant_images/pexels-photo-16150335.jpeg', '2025-05-04 21:07:47', '2025-05-04 21:07:47'),
(547, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 21:07:47', '2025-05-04 21:07:47'),
(548, 'http://localhost/storage/product_variant_images/pexels-photo-19797277.jpeg', '2025-05-04 21:07:47', '2025-05-04 21:07:47'),
(549, 'http://localhost/storage/product_variant_images/pexels-photo-16150334.jpeg', '2025-05-04 21:07:48', '2025-05-04 21:07:48'),
(550, 'http://localhost/storage/product_variant_images/pexels-photo-16150335.jpeg', '2025-05-04 21:07:48', '2025-05-04 21:07:48'),
(551, 'http://localhost/storage/product_variant_images/pexels-photo-19797284.jpeg', '2025-05-04 21:07:48', '2025-05-04 21:07:48'),
(552, 'http://localhost/storage/product_variant_images/pexels-photo-19797277.jpeg', '2025-05-04 21:07:48', '2025-05-04 21:07:48'),
(553, 'http://localhost/storage/product_variant_images/pexels-photo-794561.jpeg', '2025-05-04 21:07:51', '2025-05-04 21:07:51'),
(554, 'http://localhost/storage/product_variant_images/pexels-photo-10680129.jpeg', '2025-05-04 21:07:51', '2025-05-04 21:07:51'),
(555, 'http://localhost/storage/product_variant_images/pexels-photo-2707278.jpeg', '2025-05-04 21:07:51', '2025-05-04 21:07:51'),
(556, 'http://localhost/storage/product_variant_images/pexels-photo-5984623.jpeg', '2025-05-04 21:07:51', '2025-05-04 21:07:51'),
(557, 'http://localhost/storage/product_variant_images/pexels-photo-794561.jpeg', '2025-05-04 21:07:52', '2025-05-04 21:07:52'),
(558, 'http://localhost/storage/product_variant_images/pexels-photo-10680129.jpeg', '2025-05-04 21:07:52', '2025-05-04 21:07:52'),
(559, 'http://localhost/storage/product_variant_images/pexels-photo-2707278.jpeg', '2025-05-04 21:07:52', '2025-05-04 21:07:52'),
(560, 'http://localhost/storage/product_variant_images/pexels-photo-5984623.jpeg', '2025-05-04 21:07:52', '2025-05-04 21:07:52'),
(561, 'http://localhost/storage/product_variant_images/pexels-photo-794561.jpeg', '2025-05-04 21:07:53', '2025-05-04 21:07:53'),
(562, 'http://localhost/storage/product_variant_images/pexels-photo-10680129.jpeg', '2025-05-04 21:07:53', '2025-05-04 21:07:53'),
(563, 'http://localhost/storage/product_variant_images/pexels-photo-2707278.jpeg', '2025-05-04 21:07:53', '2025-05-04 21:07:53'),
(564, 'http://localhost/storage/product_variant_images/pexels-photo-5984623.jpeg', '2025-05-04 21:07:53', '2025-05-04 21:07:53'),
(565, 'http://localhost/storage/product_variant_images/pexels-photo-794561.jpeg', '2025-05-04 21:07:54', '2025-05-04 21:07:54'),
(566, 'http://localhost/storage/product_variant_images/pexels-photo-10680129.jpeg', '2025-05-04 21:07:54', '2025-05-04 21:07:54'),
(567, 'http://localhost/storage/product_variant_images/pexels-photo-2707278.jpeg', '2025-05-04 21:07:54', '2025-05-04 21:07:54'),
(568, 'http://localhost/storage/product_variant_images/pexels-photo-5984623.jpeg', '2025-05-04 21:07:54', '2025-05-04 21:07:54'),
(569, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:07:56', '2025-05-04 21:07:56'),
(570, 'http://localhost/storage/product_variant_images/pexels-photo-28883735.jpeg', '2025-05-04 21:07:56', '2025-05-04 21:07:56'),
(571, 'http://localhost/storage/product_variant_images/pexels-photo-440731.jpeg', '2025-05-04 21:07:56', '2025-05-04 21:07:56'),
(572, 'http://localhost/storage/product_variant_images/field-clouds-sky-earth-46160.jpeg', '2025-05-04 21:07:56', '2025-05-04 21:07:56'),
(573, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:07:57', '2025-05-04 21:07:57'),
(574, 'http://localhost/storage/product_variant_images/pexels-photo-28883735.jpeg', '2025-05-04 21:07:57', '2025-05-04 21:07:57'),
(575, 'http://localhost/storage/product_variant_images/pexels-photo-440731.jpeg', '2025-05-04 21:07:57', '2025-05-04 21:07:57'),
(576, 'http://localhost/storage/product_variant_images/field-clouds-sky-earth-46160.jpeg', '2025-05-04 21:07:57', '2025-05-04 21:07:57'),
(577, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:07:59', '2025-05-04 21:07:59'),
(578, 'http://localhost/storage/product_variant_images/pexels-photo-28883735.jpeg', '2025-05-04 21:07:59', '2025-05-04 21:07:59'),
(579, 'http://localhost/storage/product_variant_images/pexels-photo-440731.jpeg', '2025-05-04 21:07:59', '2025-05-04 21:07:59'),
(580, 'http://localhost/storage/product_variant_images/field-clouds-sky-earth-46160.jpeg', '2025-05-04 21:07:59', '2025-05-04 21:07:59'),
(581, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:08:00', '2025-05-04 21:08:00'),
(582, 'http://localhost/storage/product_variant_images/pexels-photo-28883735.jpeg', '2025-05-04 21:08:00', '2025-05-04 21:08:00'),
(583, 'http://localhost/storage/product_variant_images/pexels-photo-440731.jpeg', '2025-05-04 21:08:00', '2025-05-04 21:08:00'),
(584, 'http://localhost/storage/product_variant_images/field-clouds-sky-earth-46160.jpeg', '2025-05-04 21:08:00', '2025-05-04 21:08:00'),
(585, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:08:02', '2025-05-04 21:08:02'),
(586, 'http://localhost/storage/product_variant_images/pexels-photo-28883735.jpeg', '2025-05-04 21:08:02', '2025-05-04 21:08:02'),
(587, 'http://localhost/storage/product_variant_images/pexels-photo-27567254.jpeg', '2025-05-04 21:08:02', '2025-05-04 21:08:02'),
(588, 'http://localhost/storage/product_variant_images/pexels-photo-440731.jpeg', '2025-05-04 21:08:02', '2025-05-04 21:08:02'),
(589, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:08:03', '2025-05-04 21:08:03'),
(590, 'http://localhost/storage/product_variant_images/pexels-photo-28883735.jpeg', '2025-05-04 21:08:03', '2025-05-04 21:08:03'),
(591, 'http://localhost/storage/product_variant_images/pexels-photo-27567254.jpeg', '2025-05-04 21:08:03', '2025-05-04 21:08:03'),
(592, 'http://localhost/storage/product_variant_images/pexels-photo-440731.jpeg', '2025-05-04 21:08:03', '2025-05-04 21:08:03'),
(593, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:08:04', '2025-05-04 21:08:04'),
(594, 'http://localhost/storage/product_variant_images/pexels-photo-28883735.jpeg', '2025-05-04 21:08:04', '2025-05-04 21:08:04'),
(595, 'http://localhost/storage/product_variant_images/pexels-photo-27567254.jpeg', '2025-05-04 21:08:04', '2025-05-04 21:08:04'),
(596, 'http://localhost/storage/product_variant_images/pexels-photo-440731.jpeg', '2025-05-04 21:08:04', '2025-05-04 21:08:04'),
(597, 'http://localhost/storage/product_variant_images/pexels-photo-25344328.jpeg', '2025-05-04 21:08:05', '2025-05-04 21:08:05'),
(598, 'http://localhost/storage/product_variant_images/pexels-photo-28883735.jpeg', '2025-05-04 21:08:05', '2025-05-04 21:08:05'),
(599, 'http://localhost/storage/product_variant_images/pexels-photo-27567254.jpeg', '2025-05-04 21:08:05', '2025-05-04 21:08:05'),
(600, 'http://localhost/storage/product_variant_images/pexels-photo-440731.jpeg', '2025-05-04 21:08:05', '2025-05-04 21:08:05'),
(601, 'http://localhost/storage/product_variant_images/pexels-photo-794561.jpeg', '2025-05-04 21:08:07', '2025-05-04 21:08:07'),
(602, 'http://localhost/storage/product_variant_images/pexels-photo-10680129.jpeg', '2025-05-04 21:08:07', '2025-05-04 21:08:07'),
(603, 'http://localhost/storage/product_variant_images/pexels-photo-2707278.jpeg', '2025-05-04 21:08:07', '2025-05-04 21:08:07'),
(604, 'http://localhost/storage/product_variant_images/pexels-photo-5984623.jpeg', '2025-05-04 21:08:07', '2025-05-04 21:08:07'),
(605, 'http://localhost/storage/product_variant_images/pexels-photo-794561.jpeg', '2025-05-04 21:08:08', '2025-05-04 21:08:08'),
(606, 'http://localhost/storage/product_variant_images/pexels-photo-10680129.jpeg', '2025-05-04 21:08:08', '2025-05-04 21:08:08'),
(607, 'http://localhost/storage/product_variant_images/pexels-photo-2707278.jpeg', '2025-05-04 21:08:08', '2025-05-04 21:08:08'),
(608, 'http://localhost/storage/product_variant_images/pexels-photo-5984623.jpeg', '2025-05-04 21:08:08', '2025-05-04 21:08:08'),
(609, 'http://localhost/storage/product_variant_images/pexels-photo-794561.jpeg', '2025-05-04 21:08:09', '2025-05-04 21:08:09'),
(610, 'http://localhost/storage/product_variant_images/pexels-photo-10680129.jpeg', '2025-05-04 21:08:09', '2025-05-04 21:08:09'),
(611, 'http://localhost/storage/product_variant_images/pexels-photo-2707278.jpeg', '2025-05-04 21:08:09', '2025-05-04 21:08:09'),
(612, 'http://localhost/storage/product_variant_images/pexels-photo-5984623.jpeg', '2025-05-04 21:08:09', '2025-05-04 21:08:09'),
(613, 'http://localhost/storage/product_variant_images/pexels-photo-794561.jpeg', '2025-05-04 21:08:10', '2025-05-04 21:08:10'),
(614, 'http://localhost/storage/product_variant_images/pexels-photo-10680129.jpeg', '2025-05-04 21:08:10', '2025-05-04 21:08:10'),
(615, 'http://localhost/storage/product_variant_images/pexels-photo-2707278.jpeg', '2025-05-04 21:08:10', '2025-05-04 21:08:10'),
(616, 'http://localhost/storage/product_variant_images/pexels-photo-5984623.jpeg', '2025-05-04 21:08:10', '2025-05-04 21:08:10'),
(617, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:08:14', '2025-05-04 21:08:14'),
(618, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:08:14', '2025-05-04 21:08:14'),
(619, 'http://localhost/storage/product_variant_images/pexels-photo-3662360.jpeg', '2025-05-04 21:08:14', '2025-05-04 21:08:14'),
(620, 'http://localhost/storage/product_variant_images/pexels-photo-19797324.jpeg', '2025-05-04 21:08:14', '2025-05-04 21:08:14'),
(621, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:08:15', '2025-05-04 21:08:15'),
(622, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:08:15', '2025-05-04 21:08:15'),
(623, 'http://localhost/storage/product_variant_images/pexels-photo-3662360.jpeg', '2025-05-04 21:08:15', '2025-05-04 21:08:15'),
(624, 'http://localhost/storage/product_variant_images/pexels-photo-19797324.jpeg', '2025-05-04 21:08:15', '2025-05-04 21:08:15'),
(625, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:08:16', '2025-05-04 21:08:16'),
(626, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:08:16', '2025-05-04 21:08:16'),
(627, 'http://localhost/storage/product_variant_images/pexels-photo-3662360.jpeg', '2025-05-04 21:08:16', '2025-05-04 21:08:16'),
(628, 'http://localhost/storage/product_variant_images/pexels-photo-19797324.jpeg', '2025-05-04 21:08:16', '2025-05-04 21:08:16'),
(629, 'http://localhost/storage/product_variant_images/pexels-photo-28821755.jpeg', '2025-05-04 21:08:18', '2025-05-04 21:08:18'),
(630, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:08:18', '2025-05-04 21:08:18'),
(631, 'http://localhost/storage/product_variant_images/pexels-photo-6224495.jpeg', '2025-05-04 21:08:18', '2025-05-04 21:08:18'),
(632, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:08:18', '2025-05-04 21:08:18'),
(633, 'http://localhost/storage/product_variant_images/pexels-photo-28821755.jpeg', '2025-05-04 21:08:19', '2025-05-04 21:08:19'),
(634, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:08:19', '2025-05-04 21:08:19'),
(635, 'http://localhost/storage/product_variant_images/pexels-photo-6224495.jpeg', '2025-05-04 21:08:19', '2025-05-04 21:08:19'),
(636, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:08:19', '2025-05-04 21:08:19'),
(637, 'http://localhost/storage/product_variant_images/pexels-photo-28821755.jpeg', '2025-05-04 21:08:20', '2025-05-04 21:08:20'),
(638, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:08:20', '2025-05-04 21:08:20'),
(639, 'http://localhost/storage/product_variant_images/pexels-photo-6224495.jpeg', '2025-05-04 21:08:20', '2025-05-04 21:08:20'),
(640, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:08:20', '2025-05-04 21:08:20'),
(641, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 21:08:22', '2025-05-04 21:08:22'),
(642, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:08:22', '2025-05-04 21:08:22'),
(643, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:08:22', '2025-05-04 21:08:22'),
(644, 'http://localhost/storage/product_variant_images/pexels-photo-19797275.jpeg', '2025-05-04 21:08:22', '2025-05-04 21:08:22'),
(645, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 21:08:59', '2025-05-04 21:08:59'),
(646, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:08:59', '2025-05-04 21:08:59'),
(647, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:08:59', '2025-05-04 21:08:59'),
(648, 'http://localhost/storage/product_variant_images/pexels-photo-19797275.jpeg', '2025-05-04 21:08:59', '2025-05-04 21:08:59'),
(649, 'http://localhost/storage/product_variant_images/pexels-photo-6224381.jpeg', '2025-05-04 21:09:00', '2025-05-04 21:09:00'),
(650, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:09:00', '2025-05-04 21:09:00'),
(651, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:09:00', '2025-05-04 21:09:00'),
(652, 'http://localhost/storage/product_variant_images/pexels-photo-19797275.jpeg', '2025-05-04 21:09:00', '2025-05-04 21:09:00'),
(653, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:09:02', '2025-05-04 21:09:02'),
(654, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:09:02', '2025-05-04 21:09:02'),
(655, 'http://localhost/storage/product_variant_images/pexels-photo-19797275.jpeg', '2025-05-04 21:09:02', '2025-05-04 21:09:02'),
(656, 'http://localhost/storage/product_variant_images/pexels-photo-19797316.jpeg', '2025-05-04 21:09:02', '2025-05-04 21:09:02'),
(657, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:09:03', '2025-05-04 21:09:03'),
(658, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:09:03', '2025-05-04 21:09:03'),
(659, 'http://localhost/storage/product_variant_images/pexels-photo-19797275.jpeg', '2025-05-04 21:09:03', '2025-05-04 21:09:03'),
(660, 'http://localhost/storage/product_variant_images/pexels-photo-19797316.jpeg', '2025-05-04 21:09:03', '2025-05-04 21:09:03'),
(661, 'http://localhost/storage/product_variant_images/pexels-photo-19797276.jpeg', '2025-05-04 21:09:04', '2025-05-04 21:09:04'),
(662, 'http://localhost/storage/product_variant_images/pexels-photo-19797279.jpeg', '2025-05-04 21:09:04', '2025-05-04 21:09:04'),
(663, 'http://localhost/storage/product_variant_images/pexels-photo-19797275.jpeg', '2025-05-04 21:09:04', '2025-05-04 21:09:04'),
(664, 'http://localhost/storage/product_variant_images/pexels-photo-19797316.jpeg', '2025-05-04 21:09:04', '2025-05-04 21:09:04'),
(665, 'http://localhost/storage/product_variant_images/pexels-photo-30277224.jpeg', '2025-05-04 21:09:06', '2025-05-04 21:09:06'),
(666, 'http://localhost/storage/product_variant_images/pexels-photo-18403780.jpeg', '2025-05-04 21:09:06', '2025-05-04 21:09:06'),
(667, 'http://localhost/storage/product_variant_images/pexels-photo-18423763.jpeg', '2025-05-04 21:09:06', '2025-05-04 21:09:06'),
(668, 'http://localhost/storage/product_variant_images/pexels-photo-18403792.jpeg', '2025-05-04 21:09:06', '2025-05-04 21:09:06'),
(669, 'http://localhost/storage/product_variant_images/pexels-photo-6224612.jpeg', '2025-05-04 21:09:09', '2025-05-04 21:09:09'),
(670, 'http://localhost/storage/product_variant_images/pexels-photo-30277224.jpeg', '2025-05-04 21:09:09', '2025-05-04 21:09:09'),
(671, 'http://localhost/storage/product_variant_images/pexels-photo-18403780.jpeg', '2025-05-04 21:09:09', '2025-05-04 21:09:09'),
(672, 'http://localhost/storage/product_variant_images/pexels-photo-18423763.jpeg', '2025-05-04 21:09:09', '2025-05-04 21:09:09'),
(673, 'http://localhost/storage/product_variant_images/pexels-photo-249540.jpeg', '2025-05-04 21:09:11', '2025-05-04 21:09:11'),
(674, 'http://localhost/storage/product_variant_images/pexels-photo-9365238.jpeg', '2025-05-04 21:09:11', '2025-05-04 21:09:11'),
(675, 'http://localhost/storage/product_variant_images/pexels-photo-13354360.jpeg', '2025-05-04 21:09:11', '2025-05-04 21:09:11'),
(676, 'http://localhost/storage/product_variant_images/pexels-photo-10357009.jpeg', '2025-05-04 21:09:11', '2025-05-04 21:09:11'),
(677, 'http://localhost/storage/product_variant_images/pexels-photo-21628073.jpeg', '2025-05-04 21:09:14', '2025-05-04 21:09:14'),
(678, 'http://localhost/storage/product_variant_images/pexels-photo-11247121.jpeg', '2025-05-04 21:09:14', '2025-05-04 21:09:14'),
(679, 'http://localhost/storage/product_variant_images/pexels-photo-4916114.jpeg', '2025-05-04 21:09:14', '2025-05-04 21:09:14'),
(680, 'http://localhost/storage/product_variant_images/pexels-photo-6157055.jpeg', '2025-05-04 21:09:14', '2025-05-04 21:09:14'),
(681, 'http://localhost/storage/product_variant_images/pexels-photo-12163561.jpeg', '2025-05-04 21:09:17', '2025-05-04 21:09:17'),
(682, 'http://localhost/storage/product_variant_images/pexels-photo-1697214.jpeg', '2025-05-04 21:09:17', '2025-05-04 21:09:17'),
(683, 'http://localhost/storage/product_variant_images/pexels-photo-295885.jpeg', '2025-05-04 21:09:17', '2025-05-04 21:09:17'),
(684, 'http://localhost/storage/product_variant_images/pexels-photo-128619.jpeg', '2025-05-04 21:09:17', '2025-05-04 21:09:17'),
(685, 'http://localhost/storage/product_variant_images/pexels-photo-30277224.jpeg', '2025-05-04 21:09:19', '2025-05-04 21:09:19'),
(686, 'http://localhost/storage/product_variant_images/pexels-photo-18403780.jpeg', '2025-05-04 21:09:19', '2025-05-04 21:09:19'),
(687, 'http://localhost/storage/product_variant_images/pexels-photo-18423763.jpeg', '2025-05-04 21:09:19', '2025-05-04 21:09:19'),
(688, 'http://localhost/storage/product_variant_images/pexels-photo-18403792.jpeg', '2025-05-04 21:09:19', '2025-05-04 21:09:19'),
(689, 'http://localhost/storage/product_variant_images/pexels-photo-6224612.jpeg', '2025-05-04 21:09:20', '2025-05-04 21:09:20'),
(690, 'http://localhost/storage/product_variant_images/pexels-photo-30277224.jpeg', '2025-05-04 21:09:20', '2025-05-04 21:09:20'),
(691, 'http://localhost/storage/product_variant_images/pexels-photo-18403780.jpeg', '2025-05-04 21:09:20', '2025-05-04 21:09:20'),
(692, 'http://localhost/storage/product_variant_images/pexels-photo-18423763.jpeg', '2025-05-04 21:09:20', '2025-05-04 21:09:20'),
(693, 'http://localhost/storage/product_variant_images/pexels-photo-249540.jpeg', '2025-05-04 21:09:21', '2025-05-04 21:09:21'),
(694, 'http://localhost/storage/product_variant_images/pexels-photo-9365238.jpeg', '2025-05-04 21:09:21', '2025-05-04 21:09:21'),
(695, 'http://localhost/storage/product_variant_images/pexels-photo-13354360.jpeg', '2025-05-04 21:09:21', '2025-05-04 21:09:21'),
(696, 'http://localhost/storage/product_variant_images/pexels-photo-10357009.jpeg', '2025-05-04 21:09:21', '2025-05-04 21:09:21'),
(697, 'http://localhost/storage/product_variant_images/pexels-photo-21628073.jpeg', '2025-05-04 21:09:23', '2025-05-04 21:09:23'),
(698, 'http://localhost/storage/product_variant_images/pexels-photo-11247121.jpeg', '2025-05-04 21:09:23', '2025-05-04 21:09:23'),
(699, 'http://localhost/storage/product_variant_images/pexels-photo-4916114.jpeg', '2025-05-04 21:09:23', '2025-05-04 21:09:23'),
(700, 'http://localhost/storage/product_variant_images/pexels-photo-6157055.jpeg', '2025-05-04 21:09:23', '2025-05-04 21:09:23'),
(701, 'http://localhost/storage/product_variant_images/pexels-photo-12163561.jpeg', '2025-05-04 21:09:24', '2025-05-04 21:09:24'),
(702, 'http://localhost/storage/product_variant_images/pexels-photo-1697214.jpeg', '2025-05-04 21:09:24', '2025-05-04 21:09:24'),
(703, 'http://localhost/storage/product_variant_images/pexels-photo-295885.jpeg', '2025-05-04 21:09:24', '2025-05-04 21:09:24'),
(704, 'http://localhost/storage/product_variant_images/pexels-photo-128619.jpeg', '2025-05-04 21:09:24', '2025-05-04 21:09:24'),
(705, 'http://localhost/storage/product_variant_images/pexels-photo-9164784.jpeg', '2025-05-04 21:09:27', '2025-05-04 21:09:27'),
(706, 'http://localhost/storage/product_variant_images/pexels-photo-1550650.jpeg', '2025-05-04 21:09:27', '2025-05-04 21:09:27'),
(707, 'http://localhost/storage/product_variant_images/pexels-photo-24355197.jpeg', '2025-05-04 21:09:27', '2025-05-04 21:09:27'),
(708, 'http://localhost/storage/product_variant_images/pexels-photo-17013971.jpeg', '2025-05-04 21:09:27', '2025-05-04 21:09:27'),
(709, 'http://localhost/storage/product_variant_images/pexels-photo-3031670.jpeg', '2025-05-04 21:09:30', '2025-05-04 21:09:30'),
(710, 'http://localhost/storage/product_variant_images/pexels-photo-4959782.jpeg', '2025-05-04 21:09:30', '2025-05-04 21:09:30'),
(711, 'http://localhost/storage/product_variant_images/pexels-photo-3646165.jpeg', '2025-05-04 21:09:30', '2025-05-04 21:09:30'),
(712, 'http://localhost/storage/product_variant_images/pexels-photo-5951326.jpeg', '2025-05-04 21:09:30', '2025-05-04 21:09:30'),
(713, 'http://localhost/storage/product_variant_images/pexels-photo-6192321.jpeg', '2025-05-04 21:09:33', '2025-05-04 21:09:33'),
(714, 'http://localhost/storage/product_variant_images/pexels-photo-6192338.jpeg', '2025-05-04 21:09:33', '2025-05-04 21:09:33'),
(715, 'http://localhost/storage/product_variant_images/pexels-photo-6192119.jpeg', '2025-05-04 21:09:33', '2025-05-04 21:09:33'),
(716, 'http://localhost/storage/product_variant_images/pexels-photo-4812923.jpeg', '2025-05-04 21:09:33', '2025-05-04 21:09:33'),
(717, 'http://localhost/storage/product_variant_images/pexels-photo-788946.jpeg', '2025-05-04 21:09:36', '2025-05-04 21:09:36'),
(718, 'http://localhost/storage/product_variant_images/pexels-photo-6024681.jpeg', '2025-05-04 21:09:36', '2025-05-04 21:09:36'),
(719, 'http://localhost/storage/product_variant_images/pexels-photo-8000620.jpeg', '2025-05-04 21:09:36', '2025-05-04 21:09:36'),
(720, 'http://localhost/storage/product_variant_images/pexels-photo-3496992.jpeg', '2025-05-04 21:09:36', '2025-05-04 21:09:36'),
(721, 'http://localhost/storage/product_variant_images/pexels-photo-8000609.jpeg', '2025-05-04 21:09:38', '2025-05-04 21:09:38'),
(722, 'http://localhost/storage/product_variant_images/pexels-photo-8000608.jpeg', '2025-05-04 21:09:38', '2025-05-04 21:09:38'),
(723, 'http://localhost/storage/product_variant_images/pexels-photo-2885940.jpeg', '2025-05-04 21:09:38', '2025-05-04 21:09:38'),
(724, 'http://localhost/storage/product_variant_images/pexels-photo-8000607.jpeg', '2025-05-04 21:09:38', '2025-05-04 21:09:38'),
(725, 'http://localhost/storage/product_variant_images/pexels-photo-17971722.jpeg', '2025-05-04 21:09:42', '2025-05-04 21:09:42'),
(726, 'http://localhost/storage/product_variant_images/pexels-photo-17971796.jpeg', '2025-05-04 21:09:42', '2025-05-04 21:09:42'),
(727, 'http://localhost/storage/product_variant_images/pexels-photo-17971746.jpeg', '2025-05-04 21:09:42', '2025-05-04 21:09:42'),
(728, 'http://localhost/storage/product_variant_images/pexels-photo-5963330.jpeg', '2025-05-04 21:09:42', '2025-05-04 21:09:42'),
(729, 'http://localhost/storage/product_variant_images/pexels-photo-3401903.jpeg', '2025-05-04 21:09:45', '2025-05-04 21:09:45'),
(730, 'http://localhost/storage/product_variant_images/pexels-photo-3401904.jpeg', '2025-05-04 21:09:45', '2025-05-04 21:09:45'),
(731, 'http://localhost/storage/product_variant_images/pexels-photo-3401900.jpeg', '2025-05-04 21:09:45', '2025-05-04 21:09:45'),
(732, 'http://localhost/storage/product_variant_images/pexels-photo-6074933.jpeg', '2025-05-04 21:09:45', '2025-05-04 21:09:45'),
(733, 'http://localhost/storage/product_variant_images/pexels-photo-6988663.jpeg', '2025-05-04 21:09:47', '2025-05-04 21:09:47'),
(734, 'http://localhost/storage/product_variant_images/pexels-photo-7679545.jpeg', '2025-05-04 21:09:47', '2025-05-04 21:09:47'),
(735, 'http://localhost/storage/product_variant_images/pexels-photo-1646704.jpeg', '2025-05-04 21:09:47', '2025-05-04 21:09:47'),
(736, 'http://localhost/storage/product_variant_images/pexels-photo-3409379.jpeg', '2025-05-04 21:09:47', '2025-05-04 21:09:47'),
(737, 'http://localhost/storage/product_variant_images/pexels-photo-21836885.jpeg', '2025-05-04 21:09:50', '2025-05-04 21:09:50'),
(738, 'http://localhost/storage/product_variant_images/pexels-photo-31809951.jpeg', '2025-05-04 21:09:50', '2025-05-04 21:09:50'),
(739, 'http://localhost/storage/product_variant_images/pexels-photo-7992683.jpeg', '2025-05-04 21:09:50', '2025-05-04 21:09:50'),
(740, 'http://localhost/storage/product_variant_images/pexels-photo-6757707.jpeg', '2025-05-04 21:09:50', '2025-05-04 21:09:50'),
(741, 'http://localhost/storage/product_variant_images/pexels-photo-11556663.jpeg', '2025-05-04 21:09:52', '2025-05-04 21:09:52'),
(742, 'http://localhost/storage/product_variant_images/pexels-photo-6070046.jpeg', '2025-05-04 21:09:52', '2025-05-04 21:09:52'),
(743, 'http://localhost/storage/product_variant_images/pexels-photo-14464048.jpeg', '2025-05-04 21:09:52', '2025-05-04 21:09:52'),
(744, 'http://localhost/storage/product_variant_images/pexels-photo-14600228.jpeg', '2025-05-04 21:09:52', '2025-05-04 21:09:52'),
(745, 'http://localhost/storage/product_variant_images/pexels-photo-11556663.jpeg', '2025-05-04 21:09:53', '2025-05-04 21:09:53'),
(746, 'http://localhost/storage/product_variant_images/pexels-photo-6070046.jpeg', '2025-05-04 21:09:53', '2025-05-04 21:09:53'),
(747, 'http://localhost/storage/product_variant_images/pexels-photo-14464048.jpeg', '2025-05-04 21:09:53', '2025-05-04 21:09:53'),
(748, 'http://localhost/storage/product_variant_images/pexels-photo-14600228.jpeg', '2025-05-04 21:09:53', '2025-05-04 21:09:53'),
(749, 'http://localhost/storage/product_variant_images/pexels-photo-12662879.jpeg', '2025-05-04 21:09:56', '2025-05-04 21:09:56'),
(750, 'http://localhost/storage/product_variant_images/pexels-photo-30234382.jpeg', '2025-05-04 21:09:56', '2025-05-04 21:09:56'),
(751, 'http://localhost/storage/product_variant_images/pexels-photo-17435900.jpeg', '2025-05-04 21:09:56', '2025-05-04 21:09:56'),
(752, 'http://localhost/storage/product_variant_images/pexels-photo-18915007.jpeg', '2025-05-04 21:09:56', '2025-05-04 21:09:56'),
(753, 'http://localhost/storage/product_variant_images/pexels-photo-5716525.jpeg', '2025-05-04 21:10:00', '2025-05-04 21:10:00'),
(754, 'http://localhost/storage/product_variant_images/pexels-photo-5848833.jpeg', '2025-05-04 21:10:00', '2025-05-04 21:10:00'),
(755, 'http://localhost/storage/product_variant_images/pexels-photo-6405664.jpeg', '2025-05-04 21:10:00', '2025-05-04 21:10:00'),
(756, 'http://localhost/storage/product_variant_images/pexels-photo-6224614.jpeg', '2025-05-04 21:10:00', '2025-05-04 21:10:00'),
(757, 'http://localhost/storage/product_variant_images/pexels-photo-3610168.jpeg', '2025-05-04 21:10:02', '2025-05-04 21:10:02'),
(758, 'http://localhost/storage/product_variant_images/pexels-photo-7214484.jpeg', '2025-05-04 21:10:02', '2025-05-04 21:10:02'),
(759, 'http://localhost/storage/product_variant_images/pexels-photo-3662360.jpeg', '2025-05-04 21:10:02', '2025-05-04 21:10:02'),
(760, 'http://localhost/storage/product_variant_images/pexels-photo-7123603.jpeg', '2025-05-04 21:10:02', '2025-05-04 21:10:02'),
(761, 'http://localhost/storage/product_variant_images/pexels-photo-3662360.jpeg', '2025-05-04 21:10:05', '2025-05-04 21:10:05'),
(762, 'http://localhost/storage/product_variant_images/pexels-photo-19904641.jpeg', '2025-05-04 21:10:05', '2025-05-04 21:10:05'),
(763, 'http://localhost/storage/product_variant_images/pexels-photo-7407771.jpeg', '2025-05-04 21:10:05', '2025-05-04 21:10:05'),
(764, 'http://localhost/storage/product_variant_images/pexels-photo-3043424.jpeg', '2025-05-04 21:10:05', '2025-05-04 21:10:05'),
(765, 'http://localhost/storage/product_variant_images/pexels-photo-28821755.jpeg', '2025-05-04 21:10:07', '2025-05-04 21:10:07'),
(766, 'http://localhost/storage/product_variant_images/pexels-photo-6224495.jpeg', '2025-05-04 21:10:07', '2025-05-04 21:10:07'),
(767, 'http://localhost/storage/product_variant_images/pexels-photo-15844905.jpeg', '2025-05-04 21:10:07', '2025-05-04 21:10:07'),
(768, 'http://localhost/storage/product_variant_images/pexels-photo-27658041.jpeg', '2025-05-04 21:10:07', '2025-05-04 21:10:07'),
(769, 'http://localhost/storage/product_variant_images/pexels-photo-26347670.jpeg', '2025-05-04 21:10:08', '2025-05-04 21:10:08'),
(770, 'http://localhost/storage/product_variant_images/pexels-photo-377039.jpeg', '2025-05-04 21:10:08', '2025-05-04 21:10:08'),
(771, 'http://localhost/storage/product_variant_images/pexels-photo-19797313.jpeg', '2025-05-04 21:10:08', '2025-05-04 21:10:08'),
(772, 'http://localhost/storage/product_variant_images/pexels-photo-2869567.jpeg', '2025-05-04 21:10:08', '2025-05-04 21:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_image_product_variant`
--

CREATE TABLE `product_image_product_variant` (
  `id` bigint UNSIGNED NOT NULL,
  `product_image_id` bigint UNSIGNED NOT NULL,
  `product_variant_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_image_product_variant`
--

INSERT INTO `product_image_product_variant` (`id`, `product_image_id`, `product_variant_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-05-04 20:19:38', '2025-05-04 20:19:38'),
(2, 2, 1, '2025-05-04 20:19:38', '2025-05-04 20:19:38'),
(3, 3, 1, '2025-05-04 20:19:38', '2025-05-04 20:19:38'),
(4, 4, 1, '2025-05-04 20:19:38', '2025-05-04 20:19:38'),
(5, 5, 2, '2025-05-04 20:19:40', '2025-05-04 20:19:40'),
(6, 6, 2, '2025-05-04 20:19:40', '2025-05-04 20:19:40'),
(7, 7, 2, '2025-05-04 20:19:40', '2025-05-04 20:19:40'),
(8, 8, 2, '2025-05-04 20:19:40', '2025-05-04 20:19:40'),
(9, 9, 3, '2025-05-04 20:19:42', '2025-05-04 20:19:42'),
(10, 10, 3, '2025-05-04 20:19:42', '2025-05-04 20:19:42'),
(11, 11, 3, '2025-05-04 20:19:42', '2025-05-04 20:19:42'),
(12, 12, 3, '2025-05-04 20:19:42', '2025-05-04 20:19:42'),
(13, 13, 4, '2025-05-04 20:19:45', '2025-05-04 20:19:45'),
(14, 14, 4, '2025-05-04 20:19:45', '2025-05-04 20:19:45'),
(15, 15, 4, '2025-05-04 20:19:45', '2025-05-04 20:19:45'),
(16, 16, 4, '2025-05-04 20:19:45', '2025-05-04 20:19:45'),
(17, 17, 5, '2025-05-04 20:19:46', '2025-05-04 20:19:46'),
(18, 18, 5, '2025-05-04 20:19:46', '2025-05-04 20:19:46'),
(19, 19, 5, '2025-05-04 20:19:46', '2025-05-04 20:19:46'),
(20, 20, 5, '2025-05-04 20:19:46', '2025-05-04 20:19:46'),
(21, 21, 6, '2025-05-04 20:19:47', '2025-05-04 20:19:47'),
(22, 22, 6, '2025-05-04 20:19:47', '2025-05-04 20:19:47'),
(23, 23, 6, '2025-05-04 20:19:47', '2025-05-04 20:19:47'),
(24, 24, 6, '2025-05-04 20:19:47', '2025-05-04 20:19:47'),
(25, 25, 7, '2025-05-04 20:19:48', '2025-05-04 20:19:48'),
(26, 26, 7, '2025-05-04 20:19:48', '2025-05-04 20:19:48'),
(27, 27, 7, '2025-05-04 20:19:48', '2025-05-04 20:19:48'),
(28, 28, 7, '2025-05-04 20:19:48', '2025-05-04 20:19:48'),
(29, 29, 8, '2025-05-04 20:19:50', '2025-05-04 20:19:50'),
(30, 30, 8, '2025-05-04 20:19:50', '2025-05-04 20:19:50'),
(31, 31, 8, '2025-05-04 20:19:50', '2025-05-04 20:19:50'),
(32, 32, 8, '2025-05-04 20:19:50', '2025-05-04 20:19:50'),
(33, 33, 9, '2025-05-04 20:19:51', '2025-05-04 20:19:51'),
(34, 34, 9, '2025-05-04 20:19:51', '2025-05-04 20:19:51'),
(35, 35, 9, '2025-05-04 20:19:51', '2025-05-04 20:19:51'),
(36, 36, 9, '2025-05-04 20:19:51', '2025-05-04 20:19:51'),
(37, 37, 10, '2025-05-04 20:19:52', '2025-05-04 20:19:52'),
(38, 38, 10, '2025-05-04 20:19:52', '2025-05-04 20:19:52'),
(39, 39, 10, '2025-05-04 20:19:52', '2025-05-04 20:19:52'),
(40, 40, 10, '2025-05-04 20:19:52', '2025-05-04 20:19:52'),
(41, 41, 11, '2025-05-04 20:19:53', '2025-05-04 20:19:53'),
(42, 42, 11, '2025-05-04 20:19:53', '2025-05-04 20:19:53'),
(43, 43, 11, '2025-05-04 20:19:53', '2025-05-04 20:19:53'),
(44, 44, 11, '2025-05-04 20:19:53', '2025-05-04 20:19:53'),
(45, 45, 12, '2025-05-04 20:19:55', '2025-05-04 20:19:55'),
(46, 46, 12, '2025-05-04 20:19:55', '2025-05-04 20:19:55'),
(47, 47, 12, '2025-05-04 20:19:55', '2025-05-04 20:19:55'),
(48, 48, 12, '2025-05-04 20:19:55', '2025-05-04 20:19:55'),
(49, 49, 13, '2025-05-04 20:19:56', '2025-05-04 20:19:56'),
(50, 50, 13, '2025-05-04 20:19:56', '2025-05-04 20:19:56'),
(51, 51, 13, '2025-05-04 20:19:56', '2025-05-04 20:19:56'),
(52, 52, 13, '2025-05-04 20:19:56', '2025-05-04 20:19:56'),
(53, 53, 14, '2025-05-04 20:19:58', '2025-05-04 20:19:58'),
(54, 54, 14, '2025-05-04 20:19:58', '2025-05-04 20:19:58'),
(55, 55, 14, '2025-05-04 20:19:58', '2025-05-04 20:19:58'),
(56, 56, 14, '2025-05-04 20:19:58', '2025-05-04 20:19:58'),
(57, 57, 15, '2025-05-04 20:20:00', '2025-05-04 20:20:00'),
(58, 58, 15, '2025-05-04 20:20:00', '2025-05-04 20:20:00'),
(59, 59, 15, '2025-05-04 20:20:00', '2025-05-04 20:20:00'),
(60, 60, 15, '2025-05-04 20:20:00', '2025-05-04 20:20:00'),
(61, 61, 16, '2025-05-04 20:20:02', '2025-05-04 20:20:02'),
(62, 62, 16, '2025-05-04 20:20:02', '2025-05-04 20:20:02'),
(63, 63, 16, '2025-05-04 20:20:02', '2025-05-04 20:20:02'),
(64, 64, 16, '2025-05-04 20:20:02', '2025-05-04 20:20:02'),
(65, 65, 17, '2025-05-04 20:20:03', '2025-05-04 20:20:03'),
(66, 66, 17, '2025-05-04 20:20:03', '2025-05-04 20:20:03'),
(67, 67, 17, '2025-05-04 20:20:03', '2025-05-04 20:20:03'),
(68, 68, 17, '2025-05-04 20:20:03', '2025-05-04 20:20:03'),
(69, 69, 18, '2025-05-04 20:20:04', '2025-05-04 20:20:04'),
(70, 70, 18, '2025-05-04 20:20:04', '2025-05-04 20:20:04'),
(71, 71, 18, '2025-05-04 20:20:04', '2025-05-04 20:20:04'),
(72, 72, 18, '2025-05-04 20:20:04', '2025-05-04 20:20:04'),
(73, 73, 19, '2025-05-04 20:20:06', '2025-05-04 20:20:06'),
(74, 74, 19, '2025-05-04 20:20:06', '2025-05-04 20:20:06'),
(75, 75, 19, '2025-05-04 20:20:06', '2025-05-04 20:20:06'),
(76, 76, 19, '2025-05-04 20:20:06', '2025-05-04 20:20:06'),
(77, 77, 20, '2025-05-04 20:20:07', '2025-05-04 20:20:07'),
(78, 78, 20, '2025-05-04 20:20:07', '2025-05-04 20:20:07'),
(79, 79, 20, '2025-05-04 20:20:07', '2025-05-04 20:20:07'),
(80, 80, 20, '2025-05-04 20:20:07', '2025-05-04 20:20:07'),
(81, 81, 21, '2025-05-04 20:20:08', '2025-05-04 20:20:08'),
(82, 82, 21, '2025-05-04 20:20:08', '2025-05-04 20:20:08'),
(83, 83, 21, '2025-05-04 20:20:08', '2025-05-04 20:20:08'),
(84, 84, 21, '2025-05-04 20:20:08', '2025-05-04 20:20:08'),
(85, 85, 22, '2025-05-04 20:20:09', '2025-05-04 20:20:09'),
(86, 86, 22, '2025-05-04 20:20:09', '2025-05-04 20:20:09'),
(87, 87, 22, '2025-05-04 20:20:09', '2025-05-04 20:20:09'),
(88, 88, 22, '2025-05-04 20:20:09', '2025-05-04 20:20:09'),
(89, 89, 23, '2025-05-04 20:20:10', '2025-05-04 20:20:10'),
(90, 90, 23, '2025-05-04 20:20:10', '2025-05-04 20:20:10'),
(91, 91, 23, '2025-05-04 20:20:10', '2025-05-04 20:20:10'),
(92, 92, 23, '2025-05-04 20:20:10', '2025-05-04 20:20:10'),
(93, 93, 24, '2025-05-04 20:20:12', '2025-05-04 20:20:12'),
(94, 94, 24, '2025-05-04 20:20:12', '2025-05-04 20:20:12'),
(95, 95, 24, '2025-05-04 20:20:12', '2025-05-04 20:20:12'),
(96, 96, 24, '2025-05-04 20:20:12', '2025-05-04 20:20:12'),
(97, 97, 25, '2025-05-04 20:20:14', '2025-05-04 20:20:14'),
(98, 98, 25, '2025-05-04 20:20:14', '2025-05-04 20:20:14'),
(99, 99, 25, '2025-05-04 20:20:14', '2025-05-04 20:20:14'),
(100, 100, 25, '2025-05-04 20:20:14', '2025-05-04 20:20:14'),
(101, 101, 26, '2025-05-04 20:20:16', '2025-05-04 20:20:16'),
(102, 102, 26, '2025-05-04 20:20:16', '2025-05-04 20:20:16'),
(103, 103, 26, '2025-05-04 20:20:16', '2025-05-04 20:20:16'),
(104, 104, 26, '2025-05-04 20:20:16', '2025-05-04 20:20:16'),
(105, 105, 27, '2025-05-04 20:20:18', '2025-05-04 20:20:18'),
(106, 106, 27, '2025-05-04 20:20:18', '2025-05-04 20:20:18'),
(107, 107, 27, '2025-05-04 20:20:18', '2025-05-04 20:20:18'),
(108, 108, 27, '2025-05-04 20:20:18', '2025-05-04 20:20:18'),
(109, 109, 28, '2025-05-04 20:20:19', '2025-05-04 20:20:19'),
(110, 110, 28, '2025-05-04 20:20:19', '2025-05-04 20:20:19'),
(111, 111, 28, '2025-05-04 20:20:19', '2025-05-04 20:20:19'),
(112, 112, 28, '2025-05-04 20:20:19', '2025-05-04 20:20:19'),
(113, 113, 29, '2025-05-04 20:20:20', '2025-05-04 20:20:20'),
(114, 114, 29, '2025-05-04 20:20:20', '2025-05-04 20:20:20'),
(115, 115, 29, '2025-05-04 20:20:20', '2025-05-04 20:20:20'),
(116, 116, 29, '2025-05-04 20:20:20', '2025-05-04 20:20:20'),
(117, 117, 30, '2025-05-04 20:20:21', '2025-05-04 20:20:21'),
(118, 118, 30, '2025-05-04 20:20:21', '2025-05-04 20:20:21'),
(119, 119, 30, '2025-05-04 20:20:21', '2025-05-04 20:20:21'),
(120, 120, 30, '2025-05-04 20:20:21', '2025-05-04 20:20:21'),
(121, 121, 31, '2025-05-04 20:20:23', '2025-05-04 20:20:23'),
(122, 122, 31, '2025-05-04 20:20:23', '2025-05-04 20:20:23'),
(123, 123, 31, '2025-05-04 20:20:23', '2025-05-04 20:20:23'),
(124, 124, 31, '2025-05-04 20:20:23', '2025-05-04 20:20:23'),
(125, 125, 32, '2025-05-04 20:20:24', '2025-05-04 20:20:24'),
(126, 126, 32, '2025-05-04 20:20:24', '2025-05-04 20:20:24'),
(127, 127, 32, '2025-05-04 20:20:24', '2025-05-04 20:20:24'),
(128, 128, 32, '2025-05-04 20:20:24', '2025-05-04 20:20:24'),
(129, 129, 33, '2025-05-04 20:20:25', '2025-05-04 20:20:25'),
(130, 130, 33, '2025-05-04 20:20:25', '2025-05-04 20:20:25'),
(131, 131, 33, '2025-05-04 20:20:25', '2025-05-04 20:20:25'),
(132, 132, 33, '2025-05-04 20:20:25', '2025-05-04 20:20:25'),
(133, 133, 34, '2025-05-04 20:20:26', '2025-05-04 20:20:26'),
(134, 134, 34, '2025-05-04 20:20:26', '2025-05-04 20:20:26'),
(135, 135, 34, '2025-05-04 20:20:26', '2025-05-04 20:20:26'),
(136, 136, 34, '2025-05-04 20:20:26', '2025-05-04 20:20:26'),
(137, 137, 35, '2025-05-04 20:20:27', '2025-05-04 20:20:27'),
(138, 138, 35, '2025-05-04 20:20:27', '2025-05-04 20:20:27'),
(139, 139, 35, '2025-05-04 20:20:27', '2025-05-04 20:20:27'),
(140, 140, 35, '2025-05-04 20:20:27', '2025-05-04 20:20:27'),
(141, 141, 36, '2025-05-04 20:20:29', '2025-05-04 20:20:29'),
(142, 142, 36, '2025-05-04 20:20:29', '2025-05-04 20:20:29'),
(143, 143, 36, '2025-05-04 20:20:29', '2025-05-04 20:20:29'),
(144, 144, 36, '2025-05-04 20:20:29', '2025-05-04 20:20:29'),
(145, 145, 37, '2025-05-04 20:20:30', '2025-05-04 20:20:30'),
(146, 146, 37, '2025-05-04 20:20:30', '2025-05-04 20:20:30'),
(147, 147, 37, '2025-05-04 20:20:30', '2025-05-04 20:20:30'),
(148, 148, 37, '2025-05-04 20:20:30', '2025-05-04 20:20:30'),
(149, 149, 38, '2025-05-04 20:20:32', '2025-05-04 20:20:32'),
(150, 150, 38, '2025-05-04 20:20:32', '2025-05-04 20:20:32'),
(151, 151, 38, '2025-05-04 20:20:32', '2025-05-04 20:20:32'),
(152, 152, 38, '2025-05-04 20:20:32', '2025-05-04 20:20:32'),
(153, 153, 39, '2025-05-04 20:20:33', '2025-05-04 20:20:33'),
(154, 154, 39, '2025-05-04 20:20:33', '2025-05-04 20:20:33'),
(155, 155, 39, '2025-05-04 20:20:33', '2025-05-04 20:20:33'),
(156, 156, 39, '2025-05-04 20:20:33', '2025-05-04 20:20:33'),
(157, 157, 40, '2025-05-04 20:20:34', '2025-05-04 20:20:34'),
(158, 158, 40, '2025-05-04 20:20:34', '2025-05-04 20:20:34'),
(159, 159, 40, '2025-05-04 20:20:34', '2025-05-04 20:20:34'),
(160, 160, 40, '2025-05-04 20:20:34', '2025-05-04 20:20:34'),
(161, 161, 41, '2025-05-04 20:20:36', '2025-05-04 20:20:36'),
(162, 162, 41, '2025-05-04 20:20:36', '2025-05-04 20:20:36'),
(163, 163, 41, '2025-05-04 20:20:36', '2025-05-04 20:20:36'),
(164, 164, 41, '2025-05-04 20:20:36', '2025-05-04 20:20:36'),
(165, 165, 42, '2025-05-04 20:20:37', '2025-05-04 20:20:37'),
(166, 166, 42, '2025-05-04 20:20:37', '2025-05-04 20:20:37'),
(167, 167, 42, '2025-05-04 20:20:37', '2025-05-04 20:20:37'),
(168, 168, 42, '2025-05-04 20:20:37', '2025-05-04 20:20:37'),
(169, 169, 43, '2025-05-04 20:20:38', '2025-05-04 20:20:38'),
(170, 170, 43, '2025-05-04 20:20:38', '2025-05-04 20:20:38'),
(171, 171, 43, '2025-05-04 20:20:38', '2025-05-04 20:20:38'),
(172, 172, 43, '2025-05-04 20:20:38', '2025-05-04 20:20:38'),
(173, 173, 44, '2025-05-04 20:20:40', '2025-05-04 20:20:40'),
(174, 174, 44, '2025-05-04 20:20:40', '2025-05-04 20:20:40'),
(175, 175, 44, '2025-05-04 20:20:40', '2025-05-04 20:20:40'),
(176, 176, 44, '2025-05-04 20:20:40', '2025-05-04 20:20:40'),
(177, 177, 45, '2025-05-04 20:20:42', '2025-05-04 20:20:42'),
(178, 178, 45, '2025-05-04 20:20:42', '2025-05-04 20:20:42'),
(179, 179, 45, '2025-05-04 20:20:42', '2025-05-04 20:20:42'),
(180, 180, 45, '2025-05-04 20:20:42', '2025-05-04 20:20:42'),
(181, 181, 46, '2025-05-04 20:20:45', '2025-05-04 20:20:45'),
(182, 182, 46, '2025-05-04 20:20:45', '2025-05-04 20:20:45'),
(183, 183, 46, '2025-05-04 20:20:45', '2025-05-04 20:20:45'),
(184, 184, 46, '2025-05-04 20:20:45', '2025-05-04 20:20:45'),
(185, 185, 47, '2025-05-04 20:20:48', '2025-05-04 20:20:48'),
(186, 186, 47, '2025-05-04 20:20:48', '2025-05-04 20:20:48'),
(187, 187, 47, '2025-05-04 20:20:48', '2025-05-04 20:20:48'),
(188, 188, 47, '2025-05-04 20:20:48', '2025-05-04 20:20:48'),
(189, 189, 48, '2025-05-04 20:20:50', '2025-05-04 20:20:50'),
(190, 190, 48, '2025-05-04 20:20:50', '2025-05-04 20:20:50'),
(191, 191, 48, '2025-05-04 20:20:50', '2025-05-04 20:20:50'),
(192, 192, 48, '2025-05-04 20:20:50', '2025-05-04 20:20:50'),
(193, 193, 49, '2025-05-04 20:20:52', '2025-05-04 20:20:52'),
(194, 194, 49, '2025-05-04 20:20:52', '2025-05-04 20:20:52'),
(195, 195, 49, '2025-05-04 20:20:52', '2025-05-04 20:20:52'),
(196, 196, 49, '2025-05-04 20:20:52', '2025-05-04 20:20:52'),
(197, 197, 50, '2025-05-04 20:20:55', '2025-05-04 20:20:55'),
(198, 198, 50, '2025-05-04 20:20:55', '2025-05-04 20:20:55'),
(199, 199, 50, '2025-05-04 20:20:55', '2025-05-04 20:20:55'),
(200, 200, 50, '2025-05-04 20:20:55', '2025-05-04 20:20:55'),
(201, 201, 51, '2025-05-04 20:20:56', '2025-05-04 20:20:56'),
(202, 202, 51, '2025-05-04 20:20:56', '2025-05-04 20:20:56'),
(203, 203, 51, '2025-05-04 20:20:56', '2025-05-04 20:20:56'),
(204, 204, 51, '2025-05-04 20:20:56', '2025-05-04 20:20:56'),
(205, 205, 52, '2025-05-04 20:20:57', '2025-05-04 20:20:57'),
(206, 206, 52, '2025-05-04 20:20:57', '2025-05-04 20:20:57'),
(207, 207, 52, '2025-05-04 20:20:57', '2025-05-04 20:20:57'),
(208, 208, 52, '2025-05-04 20:20:57', '2025-05-04 20:20:57'),
(209, 209, 53, '2025-05-04 20:20:58', '2025-05-04 20:20:58'),
(210, 210, 53, '2025-05-04 20:20:58', '2025-05-04 20:20:58'),
(211, 211, 53, '2025-05-04 20:20:58', '2025-05-04 20:20:58'),
(212, 212, 53, '2025-05-04 20:20:58', '2025-05-04 20:20:58'),
(213, 213, 54, '2025-05-04 20:21:00', '2025-05-04 20:21:00'),
(214, 214, 54, '2025-05-04 20:21:00', '2025-05-04 20:21:00'),
(215, 215, 54, '2025-05-04 20:21:00', '2025-05-04 20:21:00'),
(216, 216, 54, '2025-05-04 20:21:00', '2025-05-04 20:21:00'),
(217, 217, 55, '2025-05-04 20:21:01', '2025-05-04 20:21:01'),
(218, 218, 55, '2025-05-04 20:21:01', '2025-05-04 20:21:01'),
(219, 219, 55, '2025-05-04 20:21:01', '2025-05-04 20:21:01'),
(220, 220, 55, '2025-05-04 20:21:01', '2025-05-04 20:21:01'),
(221, 221, 56, '2025-05-04 20:21:02', '2025-05-04 20:21:02'),
(222, 222, 56, '2025-05-04 20:21:02', '2025-05-04 20:21:02'),
(223, 223, 56, '2025-05-04 20:21:02', '2025-05-04 20:21:02'),
(224, 224, 56, '2025-05-04 20:21:02', '2025-05-04 20:21:02'),
(225, 225, 57, '2025-05-04 20:21:03', '2025-05-04 20:21:03'),
(226, 226, 57, '2025-05-04 20:21:03', '2025-05-04 20:21:03'),
(227, 227, 57, '2025-05-04 20:21:03', '2025-05-04 20:21:03'),
(228, 228, 57, '2025-05-04 20:21:03', '2025-05-04 20:21:03'),
(229, 229, 58, '2025-05-04 20:21:04', '2025-05-04 20:21:04'),
(230, 230, 58, '2025-05-04 20:21:04', '2025-05-04 20:21:04'),
(231, 231, 58, '2025-05-04 20:21:04', '2025-05-04 20:21:04'),
(232, 232, 58, '2025-05-04 20:21:04', '2025-05-04 20:21:04'),
(233, 233, 59, '2025-05-04 20:21:05', '2025-05-04 20:21:05'),
(234, 234, 59, '2025-05-04 20:21:05', '2025-05-04 20:21:05'),
(235, 235, 59, '2025-05-04 20:21:05', '2025-05-04 20:21:05'),
(236, 236, 59, '2025-05-04 20:21:05', '2025-05-04 20:21:05'),
(237, 237, 60, '2025-05-04 20:21:07', '2025-05-04 20:21:07'),
(238, 238, 60, '2025-05-04 20:21:07', '2025-05-04 20:21:07'),
(239, 239, 60, '2025-05-04 20:21:07', '2025-05-04 20:21:07'),
(240, 240, 60, '2025-05-04 20:21:07', '2025-05-04 20:21:07'),
(241, 241, 61, '2025-05-04 20:21:08', '2025-05-04 20:21:08'),
(242, 242, 61, '2025-05-04 20:21:08', '2025-05-04 20:21:08'),
(243, 243, 61, '2025-05-04 20:21:08', '2025-05-04 20:21:08'),
(244, 244, 61, '2025-05-04 20:21:08', '2025-05-04 20:21:08'),
(245, 245, 62, '2025-05-04 20:21:09', '2025-05-04 20:21:09'),
(246, 246, 62, '2025-05-04 20:21:09', '2025-05-04 20:21:09'),
(247, 247, 62, '2025-05-04 20:21:09', '2025-05-04 20:21:09'),
(248, 248, 62, '2025-05-04 20:21:09', '2025-05-04 20:21:09'),
(249, 249, 63, '2025-05-04 20:21:10', '2025-05-04 20:21:10'),
(250, 250, 63, '2025-05-04 20:21:10', '2025-05-04 20:21:10'),
(251, 251, 63, '2025-05-04 20:21:10', '2025-05-04 20:21:10'),
(252, 252, 63, '2025-05-04 20:21:10', '2025-05-04 20:21:10'),
(253, 253, 64, '2025-05-04 20:21:11', '2025-05-04 20:21:11'),
(254, 254, 64, '2025-05-04 20:21:11', '2025-05-04 20:21:11'),
(255, 255, 64, '2025-05-04 20:21:11', '2025-05-04 20:21:11'),
(256, 256, 64, '2025-05-04 20:21:11', '2025-05-04 20:21:11'),
(257, 257, 65, '2025-05-04 20:21:12', '2025-05-04 20:21:12'),
(258, 258, 65, '2025-05-04 20:21:12', '2025-05-04 20:21:12'),
(259, 259, 65, '2025-05-04 20:21:12', '2025-05-04 20:21:12'),
(260, 260, 65, '2025-05-04 20:21:12', '2025-05-04 20:21:12'),
(261, 261, 66, '2025-05-04 20:21:13', '2025-05-04 20:21:13'),
(262, 262, 66, '2025-05-04 20:21:13', '2025-05-04 20:21:13'),
(263, 263, 66, '2025-05-04 20:21:13', '2025-05-04 20:21:13'),
(264, 264, 66, '2025-05-04 20:21:13', '2025-05-04 20:21:13'),
(265, 265, 67, '2025-05-04 20:21:15', '2025-05-04 20:21:15'),
(266, 266, 67, '2025-05-04 20:21:15', '2025-05-04 20:21:15'),
(267, 267, 67, '2025-05-04 20:21:15', '2025-05-04 20:21:15'),
(268, 268, 67, '2025-05-04 20:21:15', '2025-05-04 20:21:15'),
(269, 269, 68, '2025-05-04 20:21:16', '2025-05-04 20:21:16'),
(270, 270, 68, '2025-05-04 20:21:16', '2025-05-04 20:21:16'),
(271, 271, 68, '2025-05-04 20:21:16', '2025-05-04 20:21:16'),
(272, 272, 68, '2025-05-04 20:21:16', '2025-05-04 20:21:16'),
(273, 273, 69, '2025-05-04 20:21:18', '2025-05-04 20:21:18'),
(274, 274, 69, '2025-05-04 20:21:18', '2025-05-04 20:21:18'),
(275, 275, 69, '2025-05-04 20:21:18', '2025-05-04 20:21:18'),
(276, 276, 69, '2025-05-04 20:21:18', '2025-05-04 20:21:18'),
(277, 277, 70, '2025-05-04 20:21:19', '2025-05-04 20:21:19'),
(278, 278, 70, '2025-05-04 20:21:19', '2025-05-04 20:21:19'),
(279, 279, 70, '2025-05-04 20:21:19', '2025-05-04 20:21:19'),
(280, 280, 70, '2025-05-04 20:21:19', '2025-05-04 20:21:19'),
(281, 281, 71, '2025-05-04 20:21:21', '2025-05-04 20:21:21'),
(282, 282, 71, '2025-05-04 20:21:21', '2025-05-04 20:21:21'),
(283, 283, 71, '2025-05-04 20:21:21', '2025-05-04 20:21:21'),
(284, 284, 71, '2025-05-04 20:21:21', '2025-05-04 20:21:21'),
(285, 285, 72, '2025-05-04 20:21:22', '2025-05-04 20:21:22'),
(286, 286, 72, '2025-05-04 20:21:22', '2025-05-04 20:21:22'),
(287, 287, 72, '2025-05-04 20:21:22', '2025-05-04 20:21:22'),
(288, 288, 72, '2025-05-04 20:21:22', '2025-05-04 20:21:22'),
(289, 289, 73, '2025-05-04 20:21:24', '2025-05-04 20:21:24'),
(290, 290, 73, '2025-05-04 20:21:24', '2025-05-04 20:21:24'),
(291, 291, 73, '2025-05-04 20:21:24', '2025-05-04 20:21:24'),
(292, 292, 73, '2025-05-04 20:21:24', '2025-05-04 20:21:24'),
(293, 293, 74, '2025-05-04 20:21:26', '2025-05-04 20:21:26'),
(294, 294, 74, '2025-05-04 20:21:26', '2025-05-04 20:21:26'),
(295, 295, 74, '2025-05-04 20:21:26', '2025-05-04 20:21:26'),
(296, 296, 74, '2025-05-04 20:21:26', '2025-05-04 20:21:26'),
(297, 297, 75, '2025-05-04 20:21:29', '2025-05-04 20:21:29'),
(298, 298, 75, '2025-05-04 20:21:29', '2025-05-04 20:21:29'),
(299, 299, 75, '2025-05-04 20:21:29', '2025-05-04 20:21:29'),
(300, 300, 75, '2025-05-04 20:21:29', '2025-05-04 20:21:29'),
(301, 301, 76, '2025-05-04 20:22:07', '2025-05-04 20:22:07'),
(302, 302, 76, '2025-05-04 20:22:07', '2025-05-04 20:22:07'),
(303, 303, 76, '2025-05-04 20:22:07', '2025-05-04 20:22:07'),
(304, 304, 76, '2025-05-04 20:22:07', '2025-05-04 20:22:07'),
(305, 305, 77, '2025-05-04 20:22:09', '2025-05-04 20:22:09'),
(306, 306, 77, '2025-05-04 20:22:09', '2025-05-04 20:22:09'),
(307, 307, 77, '2025-05-04 20:22:09', '2025-05-04 20:22:09'),
(308, 308, 77, '2025-05-04 20:22:09', '2025-05-04 20:22:09'),
(309, 309, 78, '2025-05-04 20:22:11', '2025-05-04 20:22:11'),
(310, 310, 78, '2025-05-04 20:22:11', '2025-05-04 20:22:11'),
(311, 311, 78, '2025-05-04 20:22:11', '2025-05-04 20:22:11'),
(312, 312, 78, '2025-05-04 20:22:11', '2025-05-04 20:22:11'),
(313, 313, 79, '2025-05-04 20:22:12', '2025-05-04 20:22:12'),
(314, 314, 79, '2025-05-04 20:22:12', '2025-05-04 20:22:12'),
(315, 315, 79, '2025-05-04 20:22:12', '2025-05-04 20:22:12'),
(316, 316, 79, '2025-05-04 20:22:12', '2025-05-04 20:22:12'),
(317, 317, 80, '2025-05-04 20:22:14', '2025-05-04 20:22:14'),
(318, 318, 80, '2025-05-04 20:22:14', '2025-05-04 20:22:14'),
(319, 319, 80, '2025-05-04 20:22:14', '2025-05-04 20:22:14'),
(320, 320, 80, '2025-05-04 20:22:14', '2025-05-04 20:22:14'),
(321, 321, 81, '2025-05-04 20:22:15', '2025-05-04 20:22:15'),
(322, 322, 81, '2025-05-04 20:22:15', '2025-05-04 20:22:15'),
(323, 323, 81, '2025-05-04 20:22:15', '2025-05-04 20:22:15'),
(324, 324, 81, '2025-05-04 20:22:15', '2025-05-04 20:22:15'),
(325, 325, 82, '2025-05-04 20:22:17', '2025-05-04 20:22:17'),
(326, 326, 82, '2025-05-04 20:22:17', '2025-05-04 20:22:17'),
(327, 327, 82, '2025-05-04 20:22:17', '2025-05-04 20:22:17'),
(328, 328, 82, '2025-05-04 20:22:17', '2025-05-04 20:22:17'),
(329, 329, 83, '2025-05-04 20:22:18', '2025-05-04 20:22:18'),
(330, 330, 83, '2025-05-04 20:22:18', '2025-05-04 20:22:18'),
(331, 331, 83, '2025-05-04 20:22:18', '2025-05-04 20:22:18'),
(332, 332, 83, '2025-05-04 20:22:18', '2025-05-04 20:22:18'),
(333, 333, 84, '2025-05-04 20:22:19', '2025-05-04 20:22:19'),
(334, 334, 84, '2025-05-04 20:22:19', '2025-05-04 20:22:19'),
(335, 335, 84, '2025-05-04 20:22:19', '2025-05-04 20:22:19'),
(336, 336, 84, '2025-05-04 20:22:19', '2025-05-04 20:22:19'),
(337, 337, 85, '2025-05-04 20:22:21', '2025-05-04 20:22:21'),
(338, 338, 85, '2025-05-04 20:22:21', '2025-05-04 20:22:21'),
(339, 339, 85, '2025-05-04 20:22:21', '2025-05-04 20:22:21'),
(340, 340, 85, '2025-05-04 20:22:21', '2025-05-04 20:22:21'),
(341, 341, 86, '2025-05-04 20:22:23', '2025-05-04 20:22:23'),
(342, 342, 86, '2025-05-04 20:22:23', '2025-05-04 20:22:23'),
(343, 343, 86, '2025-05-04 20:22:23', '2025-05-04 20:22:23'),
(344, 344, 86, '2025-05-04 20:22:23', '2025-05-04 20:22:23'),
(345, 345, 87, '2025-05-04 20:22:24', '2025-05-04 20:22:24'),
(346, 346, 87, '2025-05-04 20:22:24', '2025-05-04 20:22:24'),
(347, 347, 87, '2025-05-04 20:22:24', '2025-05-04 20:22:24'),
(348, 348, 87, '2025-05-04 20:22:24', '2025-05-04 20:22:24'),
(349, 349, 88, '2025-05-04 20:22:25', '2025-05-04 20:22:25'),
(350, 350, 88, '2025-05-04 20:22:25', '2025-05-04 20:22:25'),
(351, 351, 88, '2025-05-04 20:22:25', '2025-05-04 20:22:25'),
(352, 352, 88, '2025-05-04 20:22:25', '2025-05-04 20:22:25'),
(353, 353, 89, '2025-05-04 20:22:27', '2025-05-04 20:22:27'),
(354, 354, 89, '2025-05-04 20:22:27', '2025-05-04 20:22:27'),
(355, 355, 89, '2025-05-04 20:22:27', '2025-05-04 20:22:27'),
(356, 356, 89, '2025-05-04 20:22:27', '2025-05-04 20:22:27'),
(357, 357, 90, '2025-05-04 20:22:28', '2025-05-04 20:22:28'),
(358, 358, 90, '2025-05-04 20:22:28', '2025-05-04 20:22:28'),
(359, 359, 90, '2025-05-04 20:22:28', '2025-05-04 20:22:28'),
(360, 360, 90, '2025-05-04 20:22:28', '2025-05-04 20:22:28'),
(361, 361, 91, '2025-05-04 20:22:30', '2025-05-04 20:22:30'),
(362, 362, 91, '2025-05-04 20:22:30', '2025-05-04 20:22:30'),
(363, 363, 91, '2025-05-04 20:22:30', '2025-05-04 20:22:30'),
(364, 364, 91, '2025-05-04 20:22:30', '2025-05-04 20:22:30'),
(365, 365, 92, '2025-05-04 20:22:31', '2025-05-04 20:22:31'),
(366, 366, 92, '2025-05-04 20:22:31', '2025-05-04 20:22:31'),
(367, 367, 92, '2025-05-04 20:22:31', '2025-05-04 20:22:31'),
(368, 368, 92, '2025-05-04 20:22:31', '2025-05-04 20:22:31'),
(369, 369, 93, '2025-05-04 20:22:33', '2025-05-04 20:22:33'),
(370, 370, 93, '2025-05-04 20:22:33', '2025-05-04 20:22:33'),
(371, 371, 93, '2025-05-04 20:22:33', '2025-05-04 20:22:33'),
(372, 372, 93, '2025-05-04 20:22:33', '2025-05-04 20:22:33'),
(373, 373, 94, '2025-05-04 20:22:34', '2025-05-04 20:22:34'),
(374, 374, 94, '2025-05-04 20:22:34', '2025-05-04 20:22:34'),
(375, 375, 94, '2025-05-04 20:22:34', '2025-05-04 20:22:34'),
(376, 376, 94, '2025-05-04 20:22:34', '2025-05-04 20:22:34'),
(377, 377, 95, '2025-05-04 20:22:35', '2025-05-04 20:22:35'),
(378, 378, 95, '2025-05-04 20:22:35', '2025-05-04 20:22:35'),
(379, 379, 95, '2025-05-04 20:22:35', '2025-05-04 20:22:35'),
(380, 380, 95, '2025-05-04 20:22:35', '2025-05-04 20:22:35'),
(381, 381, 96, '2025-05-04 20:22:37', '2025-05-04 20:22:37'),
(382, 382, 96, '2025-05-04 20:22:37', '2025-05-04 20:22:37'),
(383, 383, 96, '2025-05-04 20:22:37', '2025-05-04 20:22:37'),
(384, 384, 96, '2025-05-04 20:22:37', '2025-05-04 20:22:37'),
(385, 385, 97, '2025-05-04 20:22:38', '2025-05-04 20:22:38'),
(386, 386, 97, '2025-05-04 20:22:38', '2025-05-04 20:22:38'),
(387, 387, 97, '2025-05-04 20:22:38', '2025-05-04 20:22:38'),
(388, 388, 97, '2025-05-04 20:22:38', '2025-05-04 20:22:38'),
(389, 389, 98, '2025-05-04 20:22:40', '2025-05-04 20:22:40'),
(390, 390, 98, '2025-05-04 20:22:40', '2025-05-04 20:22:40'),
(391, 391, 98, '2025-05-04 20:22:40', '2025-05-04 20:22:40'),
(392, 392, 98, '2025-05-04 20:22:40', '2025-05-04 20:22:40'),
(393, 393, 99, '2025-05-04 20:22:41', '2025-05-04 20:22:41'),
(394, 394, 99, '2025-05-04 20:22:41', '2025-05-04 20:22:41'),
(395, 395, 99, '2025-05-04 20:22:41', '2025-05-04 20:22:41'),
(396, 396, 99, '2025-05-04 20:22:41', '2025-05-04 20:22:41'),
(397, 397, 100, '2025-05-04 20:22:42', '2025-05-04 20:22:42'),
(398, 398, 100, '2025-05-04 20:22:42', '2025-05-04 20:22:42'),
(399, 399, 100, '2025-05-04 20:22:42', '2025-05-04 20:22:42'),
(400, 400, 100, '2025-05-04 20:22:42', '2025-05-04 20:22:42'),
(401, 401, 101, '2025-05-04 21:06:52', '2025-05-04 21:06:52'),
(402, 402, 101, '2025-05-04 21:06:52', '2025-05-04 21:06:52'),
(403, 403, 101, '2025-05-04 21:06:52', '2025-05-04 21:06:52'),
(404, 404, 101, '2025-05-04 21:06:52', '2025-05-04 21:06:52'),
(405, 405, 102, '2025-05-04 21:06:54', '2025-05-04 21:06:54'),
(406, 406, 102, '2025-05-04 21:06:54', '2025-05-04 21:06:54'),
(407, 407, 102, '2025-05-04 21:06:54', '2025-05-04 21:06:54'),
(408, 408, 102, '2025-05-04 21:06:54', '2025-05-04 21:06:54'),
(409, 409, 103, '2025-05-04 21:06:55', '2025-05-04 21:06:55'),
(410, 410, 103, '2025-05-04 21:06:55', '2025-05-04 21:06:55'),
(411, 411, 103, '2025-05-04 21:06:55', '2025-05-04 21:06:55'),
(412, 412, 103, '2025-05-04 21:06:55', '2025-05-04 21:06:55'),
(413, 413, 104, '2025-05-04 21:06:57', '2025-05-04 21:06:57'),
(414, 414, 104, '2025-05-04 21:06:57', '2025-05-04 21:06:57'),
(415, 415, 104, '2025-05-04 21:06:57', '2025-05-04 21:06:57'),
(416, 416, 104, '2025-05-04 21:06:57', '2025-05-04 21:06:57'),
(417, 417, 105, '2025-05-04 21:06:59', '2025-05-04 21:06:59'),
(418, 418, 105, '2025-05-04 21:06:59', '2025-05-04 21:06:59'),
(419, 419, 105, '2025-05-04 21:06:59', '2025-05-04 21:06:59'),
(420, 420, 105, '2025-05-04 21:06:59', '2025-05-04 21:06:59'),
(421, 421, 106, '2025-05-04 21:07:00', '2025-05-04 21:07:00'),
(422, 422, 106, '2025-05-04 21:07:00', '2025-05-04 21:07:00'),
(423, 423, 106, '2025-05-04 21:07:00', '2025-05-04 21:07:00'),
(424, 424, 106, '2025-05-04 21:07:00', '2025-05-04 21:07:00'),
(425, 425, 107, '2025-05-04 21:07:02', '2025-05-04 21:07:02'),
(426, 426, 107, '2025-05-04 21:07:02', '2025-05-04 21:07:02'),
(427, 427, 107, '2025-05-04 21:07:02', '2025-05-04 21:07:02'),
(428, 428, 107, '2025-05-04 21:07:02', '2025-05-04 21:07:02'),
(429, 429, 108, '2025-05-04 21:07:03', '2025-05-04 21:07:03'),
(430, 430, 108, '2025-05-04 21:07:03', '2025-05-04 21:07:03'),
(431, 431, 108, '2025-05-04 21:07:03', '2025-05-04 21:07:03'),
(432, 432, 108, '2025-05-04 21:07:03', '2025-05-04 21:07:03'),
(433, 433, 109, '2025-05-04 21:07:05', '2025-05-04 21:07:05'),
(434, 434, 109, '2025-05-04 21:07:05', '2025-05-04 21:07:05'),
(435, 435, 109, '2025-05-04 21:07:05', '2025-05-04 21:07:05'),
(436, 436, 109, '2025-05-04 21:07:05', '2025-05-04 21:07:05'),
(437, 437, 110, '2025-05-04 21:07:06', '2025-05-04 21:07:06'),
(438, 438, 110, '2025-05-04 21:07:06', '2025-05-04 21:07:06'),
(439, 439, 110, '2025-05-04 21:07:06', '2025-05-04 21:07:06'),
(440, 440, 110, '2025-05-04 21:07:06', '2025-05-04 21:07:06'),
(441, 441, 111, '2025-05-04 21:07:09', '2025-05-04 21:07:09'),
(442, 442, 111, '2025-05-04 21:07:09', '2025-05-04 21:07:09'),
(443, 443, 111, '2025-05-04 21:07:09', '2025-05-04 21:07:09'),
(444, 444, 111, '2025-05-04 21:07:09', '2025-05-04 21:07:09'),
(445, 445, 112, '2025-05-04 21:07:10', '2025-05-04 21:07:10'),
(446, 446, 112, '2025-05-04 21:07:10', '2025-05-04 21:07:10'),
(447, 447, 112, '2025-05-04 21:07:10', '2025-05-04 21:07:10'),
(448, 448, 112, '2025-05-04 21:07:10', '2025-05-04 21:07:10'),
(449, 449, 113, '2025-05-04 21:07:12', '2025-05-04 21:07:12'),
(450, 450, 113, '2025-05-04 21:07:12', '2025-05-04 21:07:12'),
(451, 451, 113, '2025-05-04 21:07:12', '2025-05-04 21:07:12'),
(452, 452, 113, '2025-05-04 21:07:12', '2025-05-04 21:07:12'),
(453, 453, 114, '2025-05-04 21:07:14', '2025-05-04 21:07:14'),
(454, 454, 114, '2025-05-04 21:07:14', '2025-05-04 21:07:14'),
(455, 455, 114, '2025-05-04 21:07:14', '2025-05-04 21:07:14'),
(456, 456, 114, '2025-05-04 21:07:14', '2025-05-04 21:07:14'),
(457, 457, 115, '2025-05-04 21:07:16', '2025-05-04 21:07:16'),
(458, 458, 115, '2025-05-04 21:07:16', '2025-05-04 21:07:16'),
(459, 459, 115, '2025-05-04 21:07:16', '2025-05-04 21:07:16'),
(460, 460, 115, '2025-05-04 21:07:16', '2025-05-04 21:07:16'),
(461, 461, 116, '2025-05-04 21:07:17', '2025-05-04 21:07:17'),
(462, 462, 116, '2025-05-04 21:07:17', '2025-05-04 21:07:17'),
(463, 463, 116, '2025-05-04 21:07:17', '2025-05-04 21:07:17'),
(464, 464, 116, '2025-05-04 21:07:17', '2025-05-04 21:07:17'),
(465, 465, 117, '2025-05-04 21:07:19', '2025-05-04 21:07:19'),
(466, 466, 117, '2025-05-04 21:07:19', '2025-05-04 21:07:19'),
(467, 467, 117, '2025-05-04 21:07:19', '2025-05-04 21:07:19'),
(468, 468, 117, '2025-05-04 21:07:19', '2025-05-04 21:07:19'),
(469, 469, 118, '2025-05-04 21:07:20', '2025-05-04 21:07:20'),
(470, 470, 118, '2025-05-04 21:07:20', '2025-05-04 21:07:20'),
(471, 471, 118, '2025-05-04 21:07:20', '2025-05-04 21:07:20'),
(472, 472, 118, '2025-05-04 21:07:20', '2025-05-04 21:07:20'),
(473, 473, 119, '2025-05-04 21:07:22', '2025-05-04 21:07:22'),
(474, 474, 119, '2025-05-04 21:07:22', '2025-05-04 21:07:22'),
(475, 475, 119, '2025-05-04 21:07:22', '2025-05-04 21:07:22'),
(476, 476, 119, '2025-05-04 21:07:22', '2025-05-04 21:07:22'),
(477, 477, 120, '2025-05-04 21:07:23', '2025-05-04 21:07:23'),
(478, 478, 120, '2025-05-04 21:07:23', '2025-05-04 21:07:23'),
(479, 479, 120, '2025-05-04 21:07:23', '2025-05-04 21:07:23'),
(480, 480, 120, '2025-05-04 21:07:23', '2025-05-04 21:07:23'),
(481, 481, 121, '2025-05-04 21:07:25', '2025-05-04 21:07:25'),
(482, 482, 121, '2025-05-04 21:07:25', '2025-05-04 21:07:25'),
(483, 483, 121, '2025-05-04 21:07:25', '2025-05-04 21:07:25'),
(484, 484, 121, '2025-05-04 21:07:25', '2025-05-04 21:07:25'),
(485, 485, 122, '2025-05-04 21:07:26', '2025-05-04 21:07:26'),
(486, 486, 122, '2025-05-04 21:07:26', '2025-05-04 21:07:26'),
(487, 487, 122, '2025-05-04 21:07:26', '2025-05-04 21:07:26'),
(488, 488, 122, '2025-05-04 21:07:26', '2025-05-04 21:07:26'),
(489, 489, 123, '2025-05-04 21:07:29', '2025-05-04 21:07:29'),
(490, 490, 123, '2025-05-04 21:07:29', '2025-05-04 21:07:29'),
(491, 491, 123, '2025-05-04 21:07:29', '2025-05-04 21:07:29'),
(492, 492, 123, '2025-05-04 21:07:29', '2025-05-04 21:07:29'),
(493, 493, 124, '2025-05-04 21:07:30', '2025-05-04 21:07:30'),
(494, 494, 124, '2025-05-04 21:07:30', '2025-05-04 21:07:30'),
(495, 495, 124, '2025-05-04 21:07:30', '2025-05-04 21:07:30'),
(496, 496, 124, '2025-05-04 21:07:30', '2025-05-04 21:07:30'),
(497, 497, 125, '2025-05-04 21:07:31', '2025-05-04 21:07:31'),
(498, 498, 125, '2025-05-04 21:07:31', '2025-05-04 21:07:31'),
(499, 499, 125, '2025-05-04 21:07:31', '2025-05-04 21:07:31'),
(500, 500, 125, '2025-05-04 21:07:31', '2025-05-04 21:07:31'),
(501, 501, 126, '2025-05-04 21:07:32', '2025-05-04 21:07:32'),
(502, 502, 126, '2025-05-04 21:07:32', '2025-05-04 21:07:32'),
(503, 503, 126, '2025-05-04 21:07:32', '2025-05-04 21:07:32'),
(504, 504, 126, '2025-05-04 21:07:32', '2025-05-04 21:07:32'),
(505, 505, 127, '2025-05-04 21:07:34', '2025-05-04 21:07:34'),
(506, 506, 127, '2025-05-04 21:07:34', '2025-05-04 21:07:34'),
(507, 507, 127, '2025-05-04 21:07:34', '2025-05-04 21:07:34'),
(508, 508, 127, '2025-05-04 21:07:34', '2025-05-04 21:07:34'),
(509, 509, 128, '2025-05-04 21:07:36', '2025-05-04 21:07:36'),
(510, 510, 128, '2025-05-04 21:07:36', '2025-05-04 21:07:36'),
(511, 511, 128, '2025-05-04 21:07:36', '2025-05-04 21:07:36'),
(512, 512, 128, '2025-05-04 21:07:36', '2025-05-04 21:07:36'),
(513, 513, 129, '2025-05-04 21:07:37', '2025-05-04 21:07:37'),
(514, 514, 129, '2025-05-04 21:07:37', '2025-05-04 21:07:37'),
(515, 515, 129, '2025-05-04 21:07:37', '2025-05-04 21:07:37'),
(516, 516, 129, '2025-05-04 21:07:37', '2025-05-04 21:07:37'),
(517, 517, 130, '2025-05-04 21:07:38', '2025-05-04 21:07:38'),
(518, 518, 130, '2025-05-04 21:07:38', '2025-05-04 21:07:38'),
(519, 519, 130, '2025-05-04 21:07:38', '2025-05-04 21:07:38'),
(520, 520, 130, '2025-05-04 21:07:38', '2025-05-04 21:07:38'),
(521, 521, 131, '2025-05-04 21:07:39', '2025-05-04 21:07:39'),
(522, 522, 131, '2025-05-04 21:07:39', '2025-05-04 21:07:39'),
(523, 523, 131, '2025-05-04 21:07:39', '2025-05-04 21:07:39'),
(524, 524, 131, '2025-05-04 21:07:39', '2025-05-04 21:07:39'),
(525, 525, 132, '2025-05-04 21:07:41', '2025-05-04 21:07:41'),
(526, 526, 132, '2025-05-04 21:07:41', '2025-05-04 21:07:41'),
(527, 527, 132, '2025-05-04 21:07:41', '2025-05-04 21:07:41'),
(528, 528, 132, '2025-05-04 21:07:41', '2025-05-04 21:07:41'),
(529, 529, 133, '2025-05-04 21:07:42', '2025-05-04 21:07:42'),
(530, 530, 133, '2025-05-04 21:07:42', '2025-05-04 21:07:42'),
(531, 531, 133, '2025-05-04 21:07:42', '2025-05-04 21:07:42'),
(532, 532, 133, '2025-05-04 21:07:42', '2025-05-04 21:07:42'),
(533, 533, 134, '2025-05-04 21:07:43', '2025-05-04 21:07:43'),
(534, 534, 134, '2025-05-04 21:07:43', '2025-05-04 21:07:43'),
(535, 535, 134, '2025-05-04 21:07:43', '2025-05-04 21:07:43'),
(536, 536, 134, '2025-05-04 21:07:43', '2025-05-04 21:07:43'),
(537, 537, 135, '2025-05-04 21:07:45', '2025-05-04 21:07:45'),
(538, 538, 135, '2025-05-04 21:07:45', '2025-05-04 21:07:45'),
(539, 539, 135, '2025-05-04 21:07:45', '2025-05-04 21:07:45'),
(540, 540, 135, '2025-05-04 21:07:45', '2025-05-04 21:07:45'),
(541, 541, 136, '2025-05-04 21:07:46', '2025-05-04 21:07:46'),
(542, 542, 136, '2025-05-04 21:07:46', '2025-05-04 21:07:46'),
(543, 543, 136, '2025-05-04 21:07:46', '2025-05-04 21:07:46'),
(544, 544, 136, '2025-05-04 21:07:46', '2025-05-04 21:07:46'),
(545, 545, 137, '2025-05-04 21:07:47', '2025-05-04 21:07:47'),
(546, 546, 137, '2025-05-04 21:07:47', '2025-05-04 21:07:47'),
(547, 547, 137, '2025-05-04 21:07:47', '2025-05-04 21:07:47'),
(548, 548, 137, '2025-05-04 21:07:47', '2025-05-04 21:07:47'),
(549, 549, 138, '2025-05-04 21:07:48', '2025-05-04 21:07:48'),
(550, 550, 138, '2025-05-04 21:07:48', '2025-05-04 21:07:48'),
(551, 551, 138, '2025-05-04 21:07:48', '2025-05-04 21:07:48'),
(552, 552, 138, '2025-05-04 21:07:48', '2025-05-04 21:07:48'),
(553, 553, 139, '2025-05-04 21:07:51', '2025-05-04 21:07:51'),
(554, 554, 139, '2025-05-04 21:07:51', '2025-05-04 21:07:51'),
(555, 555, 139, '2025-05-04 21:07:51', '2025-05-04 21:07:51'),
(556, 556, 139, '2025-05-04 21:07:51', '2025-05-04 21:07:51'),
(557, 557, 140, '2025-05-04 21:07:52', '2025-05-04 21:07:52'),
(558, 558, 140, '2025-05-04 21:07:52', '2025-05-04 21:07:52'),
(559, 559, 140, '2025-05-04 21:07:52', '2025-05-04 21:07:52'),
(560, 560, 140, '2025-05-04 21:07:52', '2025-05-04 21:07:52'),
(561, 561, 141, '2025-05-04 21:07:53', '2025-05-04 21:07:53'),
(562, 562, 141, '2025-05-04 21:07:53', '2025-05-04 21:07:53'),
(563, 563, 141, '2025-05-04 21:07:53', '2025-05-04 21:07:53'),
(564, 564, 141, '2025-05-04 21:07:53', '2025-05-04 21:07:53'),
(565, 565, 142, '2025-05-04 21:07:54', '2025-05-04 21:07:54'),
(566, 566, 142, '2025-05-04 21:07:54', '2025-05-04 21:07:54'),
(567, 567, 142, '2025-05-04 21:07:54', '2025-05-04 21:07:54'),
(568, 568, 142, '2025-05-04 21:07:54', '2025-05-04 21:07:54'),
(569, 569, 143, '2025-05-04 21:07:56', '2025-05-04 21:07:56'),
(570, 570, 143, '2025-05-04 21:07:56', '2025-05-04 21:07:56'),
(571, 571, 143, '2025-05-04 21:07:56', '2025-05-04 21:07:56'),
(572, 572, 143, '2025-05-04 21:07:56', '2025-05-04 21:07:56'),
(573, 573, 144, '2025-05-04 21:07:57', '2025-05-04 21:07:57'),
(574, 574, 144, '2025-05-04 21:07:57', '2025-05-04 21:07:57'),
(575, 575, 144, '2025-05-04 21:07:57', '2025-05-04 21:07:57'),
(576, 576, 144, '2025-05-04 21:07:57', '2025-05-04 21:07:57'),
(577, 577, 145, '2025-05-04 21:07:59', '2025-05-04 21:07:59'),
(578, 578, 145, '2025-05-04 21:07:59', '2025-05-04 21:07:59'),
(579, 579, 145, '2025-05-04 21:07:59', '2025-05-04 21:07:59'),
(580, 580, 145, '2025-05-04 21:07:59', '2025-05-04 21:07:59'),
(581, 581, 146, '2025-05-04 21:08:00', '2025-05-04 21:08:00'),
(582, 582, 146, '2025-05-04 21:08:00', '2025-05-04 21:08:00'),
(583, 583, 146, '2025-05-04 21:08:00', '2025-05-04 21:08:00'),
(584, 584, 146, '2025-05-04 21:08:00', '2025-05-04 21:08:00'),
(585, 585, 147, '2025-05-04 21:08:02', '2025-05-04 21:08:02'),
(586, 586, 147, '2025-05-04 21:08:02', '2025-05-04 21:08:02'),
(587, 587, 147, '2025-05-04 21:08:02', '2025-05-04 21:08:02'),
(588, 588, 147, '2025-05-04 21:08:02', '2025-05-04 21:08:02'),
(589, 589, 148, '2025-05-04 21:08:03', '2025-05-04 21:08:03'),
(590, 590, 148, '2025-05-04 21:08:03', '2025-05-04 21:08:03'),
(591, 591, 148, '2025-05-04 21:08:03', '2025-05-04 21:08:03'),
(592, 592, 148, '2025-05-04 21:08:03', '2025-05-04 21:08:03'),
(593, 593, 149, '2025-05-04 21:08:04', '2025-05-04 21:08:04'),
(594, 594, 149, '2025-05-04 21:08:04', '2025-05-04 21:08:04'),
(595, 595, 149, '2025-05-04 21:08:04', '2025-05-04 21:08:04'),
(596, 596, 149, '2025-05-04 21:08:04', '2025-05-04 21:08:04'),
(597, 597, 150, '2025-05-04 21:08:05', '2025-05-04 21:08:05'),
(598, 598, 150, '2025-05-04 21:08:05', '2025-05-04 21:08:05'),
(599, 599, 150, '2025-05-04 21:08:05', '2025-05-04 21:08:05'),
(600, 600, 150, '2025-05-04 21:08:05', '2025-05-04 21:08:05'),
(601, 601, 151, '2025-05-04 21:08:07', '2025-05-04 21:08:07'),
(602, 602, 151, '2025-05-04 21:08:07', '2025-05-04 21:08:07'),
(603, 603, 151, '2025-05-04 21:08:07', '2025-05-04 21:08:07'),
(604, 604, 151, '2025-05-04 21:08:07', '2025-05-04 21:08:07'),
(605, 605, 152, '2025-05-04 21:08:08', '2025-05-04 21:08:08'),
(606, 606, 152, '2025-05-04 21:08:08', '2025-05-04 21:08:08'),
(607, 607, 152, '2025-05-04 21:08:08', '2025-05-04 21:08:08'),
(608, 608, 152, '2025-05-04 21:08:08', '2025-05-04 21:08:08'),
(609, 609, 153, '2025-05-04 21:08:09', '2025-05-04 21:08:09'),
(610, 610, 153, '2025-05-04 21:08:09', '2025-05-04 21:08:09'),
(611, 611, 153, '2025-05-04 21:08:09', '2025-05-04 21:08:09'),
(612, 612, 153, '2025-05-04 21:08:09', '2025-05-04 21:08:09'),
(613, 613, 154, '2025-05-04 21:08:10', '2025-05-04 21:08:10'),
(614, 614, 154, '2025-05-04 21:08:10', '2025-05-04 21:08:10'),
(615, 615, 154, '2025-05-04 21:08:10', '2025-05-04 21:08:10'),
(616, 616, 154, '2025-05-04 21:08:10', '2025-05-04 21:08:10'),
(617, 617, 155, '2025-05-04 21:08:14', '2025-05-04 21:08:14'),
(618, 618, 155, '2025-05-04 21:08:14', '2025-05-04 21:08:14'),
(619, 619, 155, '2025-05-04 21:08:14', '2025-05-04 21:08:14'),
(620, 620, 155, '2025-05-04 21:08:14', '2025-05-04 21:08:14'),
(621, 621, 156, '2025-05-04 21:08:15', '2025-05-04 21:08:15'),
(622, 622, 156, '2025-05-04 21:08:15', '2025-05-04 21:08:15'),
(623, 623, 156, '2025-05-04 21:08:15', '2025-05-04 21:08:15'),
(624, 624, 156, '2025-05-04 21:08:15', '2025-05-04 21:08:15'),
(625, 625, 157, '2025-05-04 21:08:16', '2025-05-04 21:08:16'),
(626, 626, 157, '2025-05-04 21:08:16', '2025-05-04 21:08:16'),
(627, 627, 157, '2025-05-04 21:08:16', '2025-05-04 21:08:16'),
(628, 628, 157, '2025-05-04 21:08:16', '2025-05-04 21:08:16'),
(629, 629, 158, '2025-05-04 21:08:18', '2025-05-04 21:08:18'),
(630, 630, 158, '2025-05-04 21:08:18', '2025-05-04 21:08:18'),
(631, 631, 158, '2025-05-04 21:08:18', '2025-05-04 21:08:18'),
(632, 632, 158, '2025-05-04 21:08:18', '2025-05-04 21:08:18'),
(633, 633, 159, '2025-05-04 21:08:19', '2025-05-04 21:08:19'),
(634, 634, 159, '2025-05-04 21:08:19', '2025-05-04 21:08:19'),
(635, 635, 159, '2025-05-04 21:08:19', '2025-05-04 21:08:19'),
(636, 636, 159, '2025-05-04 21:08:19', '2025-05-04 21:08:19'),
(637, 637, 160, '2025-05-04 21:08:20', '2025-05-04 21:08:20'),
(638, 638, 160, '2025-05-04 21:08:20', '2025-05-04 21:08:20'),
(639, 639, 160, '2025-05-04 21:08:20', '2025-05-04 21:08:20'),
(640, 640, 160, '2025-05-04 21:08:20', '2025-05-04 21:08:20'),
(641, 641, 161, '2025-05-04 21:08:22', '2025-05-04 21:08:22'),
(642, 642, 161, '2025-05-04 21:08:22', '2025-05-04 21:08:22'),
(643, 643, 161, '2025-05-04 21:08:22', '2025-05-04 21:08:22'),
(644, 644, 161, '2025-05-04 21:08:22', '2025-05-04 21:08:22'),
(645, 645, 162, '2025-05-04 21:08:59', '2025-05-04 21:08:59'),
(646, 646, 162, '2025-05-04 21:08:59', '2025-05-04 21:08:59'),
(647, 647, 162, '2025-05-04 21:08:59', '2025-05-04 21:08:59'),
(648, 648, 162, '2025-05-04 21:08:59', '2025-05-04 21:08:59'),
(649, 649, 163, '2025-05-04 21:09:00', '2025-05-04 21:09:00'),
(650, 650, 163, '2025-05-04 21:09:00', '2025-05-04 21:09:00'),
(651, 651, 163, '2025-05-04 21:09:00', '2025-05-04 21:09:00'),
(652, 652, 163, '2025-05-04 21:09:00', '2025-05-04 21:09:00'),
(653, 653, 164, '2025-05-04 21:09:02', '2025-05-04 21:09:02'),
(654, 654, 164, '2025-05-04 21:09:02', '2025-05-04 21:09:02'),
(655, 655, 164, '2025-05-04 21:09:02', '2025-05-04 21:09:02'),
(656, 656, 164, '2025-05-04 21:09:02', '2025-05-04 21:09:02'),
(657, 657, 165, '2025-05-04 21:09:03', '2025-05-04 21:09:03'),
(658, 658, 165, '2025-05-04 21:09:03', '2025-05-04 21:09:03'),
(659, 659, 165, '2025-05-04 21:09:03', '2025-05-04 21:09:03'),
(660, 660, 165, '2025-05-04 21:09:03', '2025-05-04 21:09:03'),
(661, 661, 166, '2025-05-04 21:09:04', '2025-05-04 21:09:04'),
(662, 662, 166, '2025-05-04 21:09:04', '2025-05-04 21:09:04'),
(663, 663, 166, '2025-05-04 21:09:04', '2025-05-04 21:09:04'),
(664, 664, 166, '2025-05-04 21:09:04', '2025-05-04 21:09:04'),
(665, 665, 167, '2025-05-04 21:09:06', '2025-05-04 21:09:06'),
(666, 666, 167, '2025-05-04 21:09:06', '2025-05-04 21:09:06'),
(667, 667, 167, '2025-05-04 21:09:06', '2025-05-04 21:09:06'),
(668, 668, 167, '2025-05-04 21:09:06', '2025-05-04 21:09:06'),
(669, 669, 168, '2025-05-04 21:09:09', '2025-05-04 21:09:09'),
(670, 670, 168, '2025-05-04 21:09:09', '2025-05-04 21:09:09'),
(671, 671, 168, '2025-05-04 21:09:09', '2025-05-04 21:09:09'),
(672, 672, 168, '2025-05-04 21:09:09', '2025-05-04 21:09:09'),
(673, 673, 169, '2025-05-04 21:09:11', '2025-05-04 21:09:11'),
(674, 674, 169, '2025-05-04 21:09:11', '2025-05-04 21:09:11'),
(675, 675, 169, '2025-05-04 21:09:11', '2025-05-04 21:09:11'),
(676, 676, 169, '2025-05-04 21:09:11', '2025-05-04 21:09:11'),
(677, 677, 170, '2025-05-04 21:09:14', '2025-05-04 21:09:14'),
(678, 678, 170, '2025-05-04 21:09:14', '2025-05-04 21:09:14'),
(679, 679, 170, '2025-05-04 21:09:14', '2025-05-04 21:09:14'),
(680, 680, 170, '2025-05-04 21:09:14', '2025-05-04 21:09:14'),
(681, 681, 171, '2025-05-04 21:09:17', '2025-05-04 21:09:17'),
(682, 682, 171, '2025-05-04 21:09:17', '2025-05-04 21:09:17'),
(683, 683, 171, '2025-05-04 21:09:17', '2025-05-04 21:09:17'),
(684, 684, 171, '2025-05-04 21:09:17', '2025-05-04 21:09:17'),
(685, 685, 172, '2025-05-04 21:09:19', '2025-05-04 21:09:19'),
(686, 686, 172, '2025-05-04 21:09:19', '2025-05-04 21:09:19'),
(687, 687, 172, '2025-05-04 21:09:19', '2025-05-04 21:09:19'),
(688, 688, 172, '2025-05-04 21:09:19', '2025-05-04 21:09:19'),
(689, 689, 173, '2025-05-04 21:09:20', '2025-05-04 21:09:20'),
(690, 690, 173, '2025-05-04 21:09:20', '2025-05-04 21:09:20'),
(691, 691, 173, '2025-05-04 21:09:20', '2025-05-04 21:09:20'),
(692, 692, 173, '2025-05-04 21:09:20', '2025-05-04 21:09:20'),
(693, 693, 174, '2025-05-04 21:09:21', '2025-05-04 21:09:21'),
(694, 694, 174, '2025-05-04 21:09:21', '2025-05-04 21:09:21'),
(695, 695, 174, '2025-05-04 21:09:21', '2025-05-04 21:09:21'),
(696, 696, 174, '2025-05-04 21:09:21', '2025-05-04 21:09:21'),
(697, 697, 175, '2025-05-04 21:09:23', '2025-05-04 21:09:23'),
(698, 698, 175, '2025-05-04 21:09:23', '2025-05-04 21:09:23'),
(699, 699, 175, '2025-05-04 21:09:23', '2025-05-04 21:09:23'),
(700, 700, 175, '2025-05-04 21:09:23', '2025-05-04 21:09:23'),
(701, 701, 176, '2025-05-04 21:09:24', '2025-05-04 21:09:24'),
(702, 702, 176, '2025-05-04 21:09:24', '2025-05-04 21:09:24'),
(703, 703, 176, '2025-05-04 21:09:24', '2025-05-04 21:09:24'),
(704, 704, 176, '2025-05-04 21:09:24', '2025-05-04 21:09:24'),
(705, 705, 177, '2025-05-04 21:09:27', '2025-05-04 21:09:27'),
(706, 706, 177, '2025-05-04 21:09:27', '2025-05-04 21:09:27'),
(707, 707, 177, '2025-05-04 21:09:27', '2025-05-04 21:09:27'),
(708, 708, 177, '2025-05-04 21:09:27', '2025-05-04 21:09:27'),
(709, 709, 178, '2025-05-04 21:09:30', '2025-05-04 21:09:30'),
(710, 710, 178, '2025-05-04 21:09:30', '2025-05-04 21:09:30'),
(711, 711, 178, '2025-05-04 21:09:30', '2025-05-04 21:09:30'),
(712, 712, 178, '2025-05-04 21:09:30', '2025-05-04 21:09:30'),
(713, 713, 179, '2025-05-04 21:09:33', '2025-05-04 21:09:33'),
(714, 714, 179, '2025-05-04 21:09:33', '2025-05-04 21:09:33'),
(715, 715, 179, '2025-05-04 21:09:33', '2025-05-04 21:09:33'),
(716, 716, 179, '2025-05-04 21:09:33', '2025-05-04 21:09:33'),
(717, 717, 180, '2025-05-04 21:09:36', '2025-05-04 21:09:36'),
(718, 718, 180, '2025-05-04 21:09:36', '2025-05-04 21:09:36'),
(719, 719, 180, '2025-05-04 21:09:36', '2025-05-04 21:09:36'),
(720, 720, 180, '2025-05-04 21:09:36', '2025-05-04 21:09:36'),
(721, 721, 181, '2025-05-04 21:09:38', '2025-05-04 21:09:38'),
(722, 722, 181, '2025-05-04 21:09:38', '2025-05-04 21:09:38'),
(723, 723, 181, '2025-05-04 21:09:38', '2025-05-04 21:09:38'),
(724, 724, 181, '2025-05-04 21:09:38', '2025-05-04 21:09:38'),
(725, 725, 182, '2025-05-04 21:09:42', '2025-05-04 21:09:42'),
(726, 726, 182, '2025-05-04 21:09:42', '2025-05-04 21:09:42'),
(727, 727, 182, '2025-05-04 21:09:42', '2025-05-04 21:09:42'),
(728, 728, 182, '2025-05-04 21:09:42', '2025-05-04 21:09:42'),
(729, 729, 183, '2025-05-04 21:09:45', '2025-05-04 21:09:45'),
(730, 730, 183, '2025-05-04 21:09:45', '2025-05-04 21:09:45'),
(731, 731, 183, '2025-05-04 21:09:45', '2025-05-04 21:09:45'),
(732, 732, 183, '2025-05-04 21:09:45', '2025-05-04 21:09:45'),
(733, 733, 184, '2025-05-04 21:09:47', '2025-05-04 21:09:47'),
(734, 734, 184, '2025-05-04 21:09:47', '2025-05-04 21:09:47'),
(735, 735, 184, '2025-05-04 21:09:47', '2025-05-04 21:09:47'),
(736, 736, 184, '2025-05-04 21:09:47', '2025-05-04 21:09:47'),
(737, 737, 185, '2025-05-04 21:09:50', '2025-05-04 21:09:50'),
(738, 738, 185, '2025-05-04 21:09:50', '2025-05-04 21:09:50'),
(739, 739, 185, '2025-05-04 21:09:50', '2025-05-04 21:09:50'),
(740, 740, 185, '2025-05-04 21:09:50', '2025-05-04 21:09:50'),
(741, 741, 186, '2025-05-04 21:09:52', '2025-05-04 21:09:52'),
(742, 742, 186, '2025-05-04 21:09:52', '2025-05-04 21:09:52'),
(743, 743, 186, '2025-05-04 21:09:52', '2025-05-04 21:09:52'),
(744, 744, 186, '2025-05-04 21:09:52', '2025-05-04 21:09:52'),
(745, 745, 187, '2025-05-04 21:09:53', '2025-05-04 21:09:53'),
(746, 746, 187, '2025-05-04 21:09:53', '2025-05-04 21:09:53'),
(747, 747, 187, '2025-05-04 21:09:53', '2025-05-04 21:09:53'),
(748, 748, 187, '2025-05-04 21:09:53', '2025-05-04 21:09:53'),
(749, 749, 188, '2025-05-04 21:09:56', '2025-05-04 21:09:56'),
(750, 750, 188, '2025-05-04 21:09:56', '2025-05-04 21:09:56'),
(751, 751, 188, '2025-05-04 21:09:56', '2025-05-04 21:09:56'),
(752, 752, 188, '2025-05-04 21:09:56', '2025-05-04 21:09:56'),
(753, 753, 189, '2025-05-04 21:10:00', '2025-05-04 21:10:00'),
(754, 754, 189, '2025-05-04 21:10:00', '2025-05-04 21:10:00'),
(755, 755, 189, '2025-05-04 21:10:00', '2025-05-04 21:10:00'),
(756, 756, 189, '2025-05-04 21:10:00', '2025-05-04 21:10:00'),
(757, 757, 190, '2025-05-04 21:10:02', '2025-05-04 21:10:02'),
(758, 758, 190, '2025-05-04 21:10:02', '2025-05-04 21:10:02'),
(759, 759, 190, '2025-05-04 21:10:02', '2025-05-04 21:10:02'),
(760, 760, 190, '2025-05-04 21:10:02', '2025-05-04 21:10:02'),
(761, 761, 191, '2025-05-04 21:10:05', '2025-05-04 21:10:05'),
(762, 762, 191, '2025-05-04 21:10:05', '2025-05-04 21:10:05'),
(763, 763, 191, '2025-05-04 21:10:05', '2025-05-04 21:10:05'),
(764, 764, 191, '2025-05-04 21:10:05', '2025-05-04 21:10:05'),
(765, 765, 192, '2025-05-04 21:10:07', '2025-05-04 21:10:07'),
(766, 766, 192, '2025-05-04 21:10:07', '2025-05-04 21:10:07'),
(767, 767, 192, '2025-05-04 21:10:07', '2025-05-04 21:10:07'),
(768, 768, 192, '2025-05-04 21:10:07', '2025-05-04 21:10:07'),
(769, 769, 193, '2025-05-04 21:10:08', '2025-05-04 21:10:08'),
(770, 770, 193, '2025-05-04 21:10:08', '2025-05-04 21:10:08'),
(771, 771, 193, '2025-05-04 21:10:08', '2025-05-04 21:10:08'),
(772, 772, 193, '2025-05-04 21:10:08', '2025-05-04 21:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `sku`, `slug`, `name`, `properties`, `price`, `discount_price`, `stock`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ALWH', 'macbook-air-m4-13-inch-alwh', 'Macbook Air M4 13-inch Sky Blue 2024', '\"{\\n    \\\"gpu\\\": \\\"8-Core GPU\\\",\\n    \\\"chip\\\": \\\"M4\\\",\\n    \\\"core\\\": \\\"10-Core CPU\\\",\\n    \\\"colors\\\": \\\"Sky Blue\\\",\\n    \\\"memory\\\": \\\"16GB Unified Memory\\\",\\n    \\\"screen\\\": \\\"13.6-inch Liquid Retina display with True Tone\\\",\\n    \\\"storage\\\": \\\"256GB SSD Storage\\\",\\n    \\\"release_year\\\": 2024,\\n    \\\"neural_engine\\\": \\\"16-core Neural Engine\\\",\\n    \\\"power_adapter\\\": \\\"30W USB-C Power Adapter\\\"\\n}\"', 59.89, NULL, 17, NULL, '2025-05-04 19:37:46', '2025-05-24 21:17:14'),
(2, 1, 'D4PH', 'macbook-air-m4-13-inch-d4ph', 'Macbook Air M4 13-inch Silver 2024', '\"{\\n    \\\"gpu\\\": \\\"8-Core GPU\\\",\\n    \\\"chip\\\": \\\"M4\\\",\\n    \\\"core\\\": \\\"10-Core CPU\\\",\\n    \\\"colors\\\": \\\"Silver\\\",\\n    \\\"memory\\\": \\\"16GB Unified Memory\\\",\\n    \\\"screen\\\": \\\"13.6-inch Liquid Retina display with True Tone\\\",\\n    \\\"storage\\\": \\\"256GB SSD Storage\\\",\\n    \\\"release_year\\\": 2024,\\n    \\\"neural_engine\\\": \\\"16-core Neural Engine\\\",\\n    \\\"power_adapter\\\": \\\"30W USB-C Power Adapter\\\"\\n}\"', 15.00, 10.50, 26, NULL, '2025-05-04 19:37:46', '2025-05-24 21:17:19'),
(3, 1, '5N2I', 'macbook-air-m4-13-inch-5n2i', 'Macbook Air M4 13-inch Starlight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Starlight\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"13.6-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 72.27, 65.04, 85, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(4, 1, 'JA7O', 'macbook-air-m4-13-inch-ja7o', 'Macbook Air M4 13-inch Midnight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Midnight\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"13.6-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 70.28, 63.25, 45, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(5, 1, 'T8YI', 'macbook-air-m4-13-inch-t8yi', 'Macbook Air M4 13-inch Sky Blue 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Sky Blue\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13.6-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 79.82, NULL, 38, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(6, 1, 'TRC2', 'macbook-air-m4-13-inch-trc2', 'Macbook Air M4 13-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13.6-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 3.57, 3.21, 68, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(7, 1, '6DAN', 'macbook-air-m4-13-inch-6dan', 'Macbook Air M4 13-inch Starlight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Starlight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13.6-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 73.08, NULL, 34, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(8, 1, 'OAX9', 'macbook-air-m4-13-inch-oax9', 'Macbook Air M4 13-inch Midnight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Midnight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13.6-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 19.65, NULL, 74, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(9, 1, 'KN7V', 'macbook-air-m4-13-inch-kn7v', 'Macbook Air M4 13-inch Sky Blue 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Sky Blue\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13.6-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 86.40, 77.76, 50, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(10, 1, 'HYBV', 'macbook-air-m4-13-inch-hybv', 'Macbook Air M4 13-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13.6-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 60.67, 48.54, 97, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(11, 1, 'LTP4', 'macbook-air-m4-13-inch-ltp4', 'Macbook Air M4 13-inch Starlight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Starlight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13.6-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 81.29, NULL, 59, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(12, 1, 'MANK', 'macbook-air-m4-13-inch-mank', 'Macbook Air M4 13-inch Midnight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Midnight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13.6-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 92.28, 83.05, 69, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(13, 2, '30MZ', 'macbook-air-m4-15-inch-30mz', 'Macbook Air M4 15-inch Sky Blue 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Sky Blue\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 76.18, NULL, 2, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(14, 2, 'ODRW', 'macbook-air-m4-15-inch-odrw', 'Macbook Air M4 15-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 7.43, NULL, 43, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(15, 2, '34J6', 'macbook-air-m4-15-inch-34j6', 'Macbook Air M4 15-inch Starlight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Starlight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 63.94, 44.76, 52, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(16, 2, '0OWF', 'macbook-air-m4-15-inch-0owf', 'Macbook Air M4 15-inch Midnight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Midnight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 63.87, NULL, 13, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(17, 2, 'ILVS', 'macbook-air-m4-15-inch-ilvs', 'Macbook Air M4 15-inch Sky Blue 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Sky Blue\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 30.60, 21.42, 65, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(18, 2, '8Z9N', 'macbook-air-m4-15-inch-8z9n', 'Macbook Air M4 15-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 87.14, NULL, 18, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(19, 2, 'N3UI', 'macbook-air-m4-15-inch-n3ui', 'Macbook Air M4 15-inch Starlight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Starlight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 69.97, NULL, 81, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(20, 2, 'UKDP', 'macbook-air-m4-15-inch-ukdp', 'Macbook Air M4 15-inch Midnight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Midnight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 8.34, 7.51, 100, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(21, 2, 'CWFP', 'macbook-air-m4-15-inch-cwfp', 'Macbook Air M4 15-inch Sky Blue 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Sky Blue\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 18.51, NULL, 19, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(22, 2, 'G8Q4', 'macbook-air-m4-15-inch-g8q4', 'Macbook Air M4 15-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 13.25, NULL, 19, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(23, 2, '0HTN', 'macbook-air-m4-15-inch-0htn', 'Macbook Air M4 15-inch Starlight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Starlight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 52.64, NULL, 30, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(24, 2, 'DEDK', 'macbook-air-m4-15-inch-dedk', 'Macbook Air M4 15-inch Midnight 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Midnight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"15.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"35W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 29.06, 26.15, 49, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(25, 3, 'RIQ5', 'macbook-pro-m4-14-inch-riq5', 'Macbook Pro M4 14-inch Space Black 2025', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"70W USB-C Power Adapter\\\",\\\"release_year\\\":2025}\"', 95.16, 85.64, 67, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(26, 3, '40R9', 'macbook-pro-m4-14-inch-40r9', 'Macbook Pro M4 14-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"70W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 43.84, 35.07, 81, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(27, 3, 'HXPN', 'macbook-pro-m4-14-inch-hxpn', 'Macbook Pro M4 14-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"70W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 4.81, NULL, 71, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(28, 3, 'M3HD', 'macbook-pro-m4-14-inch-m3hd', 'Macbook Pro M4 14-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"70W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 91.20, 72.96, 65, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(29, 3, 'J6KR', 'macbook-pro-m4-14-inch-j6kr', 'Macbook Pro M4 14-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"70W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 64.80, NULL, 87, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(30, 3, 'CATT', 'macbook-pro-m4-14-inch-catt', 'Macbook Pro M4 14-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"70W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 66.25, NULL, 64, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(31, 4, 'TK4I', 'macbook-pro-m4pro-14-inch-tk4i', 'Macbook Pro M4Pro 14-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"12-Core CPU\\\",\\\"gpu\\\":\\\"16-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"70W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 89.12, NULL, 35, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(32, 4, '8I0M', 'macbook-pro-m4pro-14-inch-8i0m', 'Macbook Pro M4Pro 14-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"12-Core CPU\\\",\\\"gpu\\\":\\\"16-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"70W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 99.36, NULL, 91, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(33, 4, 'HMHX', 'macbook-pro-m4pro-14-inch-hmhx', 'Macbook Pro M4Pro 14-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"20-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"96W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 67.36, 40.42, 33, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(34, 4, '7IEY', 'macbook-pro-m4pro-14-inch-7iey', 'Macbook Pro M4Pro 14-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"20-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"96W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 0.79, NULL, 98, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(35, 4, '4CKZ', 'macbook-pro-m4pro-14-inch-4ckz', 'Macbook Pro M4Pro 14-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"32-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"36GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"96W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 77.09, 53.96, 6, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(36, 4, '8031', 'macbook-pro-m4pro-14-inch-8031', 'Macbook Pro M4Pro 14-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"32-Core GPU\\\",\\\"neural_engine\\\":\\\"36-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"14-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"96W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 42.30, 38.07, 90, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(37, 5, '6R0Q', 'macbook-pro-m4pro-16-inch-6r0q', 'Macbook Pro M4Pro 16-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"20-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"16-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"140W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 9.04, 8.14, 81, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(38, 5, '6IKW', 'macbook-pro-m4pro-16-inch-6ikw', 'Macbook Pro M4Pro 16-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"20-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"16-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"140W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 78.52, 47.11, 91, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(39, 5, 'CCIQ', 'macbook-pro-m4pro-16-inch-space-black-2024-cciq', 'Macbook Pro M4Pro 16-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"20-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Black\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"16-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"140W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 17.25, 10.35, 99, NULL, '2025-05-04 19:37:46', '2025-05-24 20:37:20'),
(40, 5, 'B62O', 'macbook-pro-m4pro-16-inch-b62o', 'Macbook Pro M4Pro 16-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"20-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"48GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"16-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"140W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 0.50, NULL, 83, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(41, 6, '6B2B', 'macbook-pro-m4max-16-inch-6b2b', 'Macbook Pro M4Max 16-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4Max\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"32-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"36GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"16-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"140W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 62.52, NULL, 25, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(42, 6, 'EN5D', 'macbook-pro-m4max-16-inch-en5d', 'Macbook Pro M4Max 16-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4Max\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"32-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"36GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"16-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"140W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 77.41, NULL, 94, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(43, 6, 'IIQT', 'macbook-pro-m4max-16-inch-iiqt', 'Macbook Pro M4Max 16-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4Max\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"32-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"48GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"16-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"140W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 17.07, 11.95, 26, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(44, 6, '3FVW', 'macbook-pro-m4max-16-inch-3fvw', 'Macbook Pro M4Max 16-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4Max\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"32-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"48GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"16-inch Liquid Retina XDR display\\\",\\\"power_adapter\\\":\\\"140W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 77.51, 46.51, 63, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(45, 7, 'WHAH', 'imac-24-inch-whah', 'iMac 24-inch Blue 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 41.95, NULL, 3, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(46, 7, 'SQLI', 'imac-24-inch-sqli', 'iMac 24-inch Pink 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Pink\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 38.59, 34.73, 70, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(47, 7, '9WY8', 'imac-24-inch-9wy8', 'iMac 24-inch Green 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Green\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 37.68, 30.14, 32, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(48, 7, 'HKS1', 'imac-24-inch-hks1', 'iMac 24-inch Yellow 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Yellow\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 75.13, 67.62, 62, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(49, 7, 'BGX8', 'imac-24-inch-bgx8', 'iMac 24-inch Purple 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Purple\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 55.24, NULL, 56, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(50, 7, '6TWS', 'imac-24-inch-6tws', 'iMac 24-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 22.20, NULL, 67, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(51, 7, '6YJF', 'imac-24-inch-6yjf', 'iMac 24-inch Blue 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 88.12, 79.31, 36, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(52, 7, '4IFK', 'imac-24-inch-4ifk', 'iMac 24-inch Pink 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Pink\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 74.56, NULL, 51, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(53, 7, 'TT2X', 'imac-24-inch-tt2x', 'iMac 24-inch Green 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Green\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 33.75, NULL, 80, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(54, 7, 'QM3T', 'imac-24-inch-qm3t', 'iMac 24-inch Yellow 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Yellow\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 44.58, NULL, 92, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(55, 7, 'A9PM', 'imac-24-inch-a9pm', 'iMac 24-inch Purple 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Purple\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 64.88, NULL, 59, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(56, 7, 'RQIW', 'imac-24-inch-rqiw', 'iMac 24-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 62.22, NULL, 39, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(57, 7, 'YUCK', 'imac-24-inch-yuck', 'iMac 24-inch Blue 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 88.88, NULL, 46, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(58, 7, '5TE6', 'imac-24-inch-5te6', 'iMac 24-inch Pink 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Pink\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 31.37, NULL, 0, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(59, 7, 'DE2F', 'imac-24-inch-de2f', 'iMac 24-inch Green 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Green\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 19.26, NULL, 22, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(60, 7, 'N37J', 'imac-24-inch-n37j', 'iMac 24-inch Yellow 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Yellow\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 33.86, 30.47, 46, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(61, 7, 'PVWL', 'imac-24-inch-pvwl', 'iMac 24-inch Purple 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Purple\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 94.81, NULL, 49, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(62, 7, 'GPIW', 'imac-24-inch-gpiw', 'iMac 24-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 64.73, NULL, 98, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(63, 7, 'GBT6', 'imac-24-inch-gbt6', 'iMac 24-inch Blue 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"512TB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 0.51, NULL, 39, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(64, 7, 'WI9X', 'imac-24-inch-wi9x', 'iMac 24-inch Pink 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Pink\\\",\\\"storage\\\":\\\"512TB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 19.25, 11.55, 35, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(65, 7, 'GF6A', 'imac-24-inch-gf6a', 'iMac 24-inch Green 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Green\\\",\\\"storage\\\":\\\"512TB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 38.32, 30.66, 93, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(66, 7, 'RG6G', 'imac-24-inch-rg6g', 'iMac 24-inch Yellow 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Yellow\\\",\\\"storage\\\":\\\"512TB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 28.59, 17.15, 64, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(67, 7, '0FEL', 'imac-24-inch-0fel', 'iMac 24-inch Purple 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Purple\\\",\\\"storage\\\":\\\"512TB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 95.29, NULL, 3, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(68, 7, '10S5', 'imac-24-inch-10s5', 'iMac 24-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512TB SSD Storage\\\",\\\"screen\\\":\\\"24-inch 4.5K Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 12.89, 10.31, 26, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(69, 8, '0G4D', 'mac-mini-m4-0g4d', 'Mac mini M4  2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"front\\\":\\\"Two USB\\\\u2011C ports, headphone jack\\\",\\\"back\\\":\\\"Three Thunderbolt 4 ports, HDMI port, Gigabit Ethernet port\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 66.22, 59.60, 33, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(70, 8, 'ILQC', 'mac-mini-m4-ilqc', 'Mac mini M4  2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"16GB Unified Memory\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"front\\\":\\\"Two USB\\\\u2011C ports, headphone jack\\\",\\\"back\\\":\\\"Three Thunderbolt 4 ports, HDMI port, Gigabit Ethernet port\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 86.52, 69.22, 89, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(71, 8, '66U9', 'mac-mini-m4-66u9', 'Mac mini M4  2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"10-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"storage\\\":\\\"512TB SSD Storage\\\",\\\"front\\\":\\\"Two USB\\\\u2011C ports, headphone jack\\\",\\\"back\\\":\\\"Three Thunderbolt 4 ports, HDMI port, Gigabit Ethernet port\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 72.80, 65.52, 47, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(72, 9, 'J43R', 'mac-mini-m4pro-j43r', 'Mac mini M4Pro  2024', '\"{\\\"chip\\\":\\\"M4Pro\\\",\\\"core\\\":\\\"12-Core CPU\\\",\\\"gpu\\\":\\\"16-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"24GB Unified Memory\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"front\\\":\\\"Two USB\\\\u2011C ports, headphone jack\\\",\\\"back\\\":\\\"Three Thunderbolt 4 ports, HDMI port, Gigabit Ethernet port\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 85.61, NULL, 68, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(73, 10, 'WVVY', 'mac-studio-m3ultra-wvvy', 'Mac Studio M3Ultra  2024', '\"{\\\"chip\\\":\\\"M3Ultra\\\",\\\"core\\\":\\\"28-Core CPU\\\",\\\"gpu\\\":\\\"60-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"32GB Unified Memory\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"front\\\":\\\"Front: Two Thunderbolt 5 ports, one SDXC card slot\\\",\\\"back\\\":\\\"Back: Four Thunderbolt 5 ports, two USB-A ports, HDMI port, 10Gb Ethernet port, headphone jack\\\",\\\"screen\\\":\\\"Support for up to eight displays\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 46.13, 27.68, 61, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(74, 11, 'A3NJ', 'mac-studio-m4max-a3nj', 'Mac Studio M4Max  2024', '\"{\\\"chip\\\":\\\"M4Max\\\",\\\"core\\\":\\\"14-Core CPU\\\",\\\"gpu\\\":\\\"32-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"36GB Unified Memory\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"front\\\":\\\"Front: Two USB-C ports, one SDXC card slot\\\",\\\"back\\\":\\\"Back: Four Thunderbolt 5 ports, two USB-A ports, HDMI port, 10Gb Ethernet port, headphone jack\\\",\\\"screen\\\":\\\"Support for up to five displays\\\",\\\"power_adapter\\\":\\\"30W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 70.80, 63.72, 72, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(75, 12, 'GOJA', 'iphone-16-128gb-goja', 'iPhone 16 128GB Black 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 47.28, NULL, 29, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(76, 12, '0FS5', 'iphone-16-128gb-0fs5', 'iPhone 16 128GB Pink 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Pink\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 36.20, 28.96, 79, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(77, 12, 'D156', 'iphone-16-128gb-d156', 'iPhone 16 128GB White 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 21.84, 13.10, 54, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(78, 12, 'J0E4', 'iphone-16-128gb-j0e4', 'iPhone 16 128GB Ultramarine 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Ultramarine\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 58.72, 35.23, 44, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(79, 13, '0JNB', 'iphone-16-256gb-0jnb', 'iPhone 16 256GB Black 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 13.83, 11.06, 91, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(80, 13, 'OOA4', 'iphone-16-256gb-ooa4', 'iPhone 16 256GB White 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 54.90, NULL, 45, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(81, 13, 'YQAD', 'iphone-16-256gb-yqad', 'iPhone 16 256GB Pink 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Pink\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 3.66, NULL, 55, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(82, 13, '3DJG', 'iphone-16-256gb-3djg', 'iPhone 16 256GB Ultramarine 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Ultramarine\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 41.60, 37.44, 20, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(83, 14, '6HN6', 'iphone-16-512gb-6hn6', 'iPhone 16 512GB Black 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 73.93, NULL, 43, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(84, 14, 'TZ7O', 'iphone-16-512gb-tz7o', 'iPhone 16 512GB White 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 30.85, NULL, 79, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(85, 14, '9VNB', 'iphone-16-512gb-9vnb', 'iPhone 16 512GB Pink 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Pink\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 47.42, 33.19, 68, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(86, 14, 'IROI', 'iphone-16-512gb-iroi', 'iPhone 16 512GB Ultramarine 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Ultramarine\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.1-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 90.17, NULL, 7, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(87, 15, 'V2QR', 'iphone-16-plus-128gb-v2qr', 'iPhone 16 Plus 128GB Black 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 38.20, 34.38, 83, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(88, 15, '7H9X', 'iphone-16-plus-128gb-7h9x', 'iPhone 16 Plus 128GB White 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 49.74, 34.82, 39, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46');
INSERT INTO `product_variants` (`id`, `product_id`, `sku`, `slug`, `name`, `properties`, `price`, `discount_price`, `stock`, `deleted_at`, `created_at`, `updated_at`) VALUES
(89, 15, 'IYT0', 'iphone-16-plus-128gb-iyt0', 'iPhone 16 Plus 128GB Pink 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Pink\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 94.59, NULL, 85, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(90, 15, '6TBI', 'iphone-16-plus-128gb-6tbi', 'iPhone 16 Plus 128GB Ultramarine 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Ultramarine\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 63.61, NULL, 79, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(91, 16, 'IZDY', 'iphone-16-plus-256gb-izdy', 'iPhone 16 Plus 256GB Black 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 39.79, NULL, 95, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(92, 16, 'AF4X', 'iphone-16-plus-256gb-af4x', 'iPhone 16 Plus 256GB White 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 78.28, NULL, 21, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(93, 16, 'EE4F', 'iphone-16-plus-256gb-ee4f', 'iPhone 16 Plus 256GB Pink 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Pink\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 63.61, 50.89, 43, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(94, 16, 'I12M', 'iphone-16-plus-256gb-i12m', 'iPhone 16 Plus 256GB Ultramarine 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Ultramarine\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 45.88, NULL, 55, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(95, 17, 'KFAB', 'iphone-16-plus-512gb-kfab', 'iPhone 16 Plus 512GB Black 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 42.72, 34.18, 46, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(96, 17, 'HM5V', 'iphone-16-plus-512gb-hm5v', 'iPhone 16 Plus 512GB White 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 25.31, NULL, 67, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(97, 17, 'W6E1', 'iphone-16-plus-512gb-w6e1', 'iPhone 16 Plus 512GB Pink 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Pink\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 54.03, NULL, 55, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(98, 17, 'TRJB', 'iphone-16-plus-512gb-trjb', 'iPhone 16 Plus 512GB Ultramarine 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Ultramarine\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.7-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 34.52, 20.71, 85, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(99, 18, 'LXU4', 'iphone-16-pro-256gb-lxu4', 'iPhone 16 Pro 256GB Black Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black Titanium\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 51.50, 36.05, 7, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(100, 18, 'IL0X', 'iphone-16-pro-256gb-il0x', 'iPhone 16 Pro 256GB White Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White Titanium\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 57.62, NULL, 50, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(101, 18, 'MIL0', 'iphone-16-pro-256gb-mil0', 'iPhone 16 Pro 256GB Natural Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Natural Titanium\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 22.34, 13.40, 58, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(102, 18, 'KLWS', 'iphone-16-pro-256gb-klws', 'iPhone 16 Pro 256GB Desert Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Desert Titanium\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 70.82, NULL, 30, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(103, 19, 'DVMB', 'iphone-16-pro-512gb-dvmb', 'iPhone 16 Pro 512GB Black Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black Titanium\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 91.32, 63.92, 80, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(104, 19, '4NSB', 'iphone-16-pro-512gb-4nsb', 'iPhone 16 Pro 512GB White Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White Titanium\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 32.17, NULL, 7, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(105, 19, 'SRSO', 'iphone-16-pro-512gb-srso', 'iPhone 16 Pro 512GB Natural Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Natural Titanium\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 10.43, NULL, 17, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(106, 19, 'EZFQ', 'iphone-16-pro-512gb-ezfq', 'iPhone 16 Pro 512GB Desert Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Desert Titanium\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 40.87, NULL, 50, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(107, 20, 'FKLW', 'iphone-16-pro-1tb-fklw', 'iPhone 16 Pro 1TB Black Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black Titanium\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 88.25, NULL, 59, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(108, 20, 'KBR4', 'iphone-16-pro-1tb-kbr4', 'iPhone 16 Pro 1TB White Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White Titanium\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 91.43, NULL, 16, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(109, 20, 'GAK2', 'iphone-16-pro-1tb-gak2', 'iPhone 16 Pro 1TB Natural Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Natural Titanium\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 7.52, NULL, 33, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(110, 20, 'XI75', 'iphone-16-pro-1tb-xi75', 'iPhone 16 Pro 1TB Desert Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Desert Titanium\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"6.3-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 40.45, NULL, 78, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(111, 21, 'GC8E', 'iphone-16-pro-max-256gb-gc8e', 'iPhone 16 Pro Max 256GB Black Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black Titanium\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 71.71, NULL, 95, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(112, 21, 'D9WL', 'iphone-16-pro-max-256gb-d9wl', 'iPhone 16 Pro Max 256GB White Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White Titanium\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 79.36, NULL, 78, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(113, 21, '1KEO', 'iphone-16-pro-max-256gb-1keo', 'iPhone 16 Pro Max 256GB Natural Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Natural Titanium\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 79.59, 47.75, 28, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(114, 21, '3BHC', 'iphone-16-pro-max-256gb-3bhc', 'iPhone 16 Pro Max 256GB Desert Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Desert Titanium\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 1.71, NULL, 21, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(115, 22, 'F0ZQ', 'iphone-16-pro-max-512gb-f0zq', 'iPhone 16 Pro Max 512GB Black Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black Titanium\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 91.65, 54.99, 42, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(116, 22, 'KL0R', 'iphone-16-pro-max-512gb-kl0r', 'iPhone 16 Pro Max 512GB White Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White Titanium\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 14.54, 11.63, 51, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(117, 22, 'CO25', 'iphone-16-pro-max-512gb-co25', 'iPhone 16 Pro Max 512GB Natural Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Natural Titanium\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 7.27, 5.82, 69, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(118, 22, 'MSIE', 'iphone-16-pro-max-512gb-msie', 'iPhone 16 Pro Max 512GB Desert Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Desert Titanium\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 98.54, NULL, 60, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(119, 23, '3147', 'iphone-16-pro-max-1tb-3147', 'iPhone 16 Pro Max 1TB Black Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Black Titanium\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 98.67, NULL, 27, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(120, 23, 'MHWQ', 'iphone-16-pro-max-1tb-mhwq', 'iPhone 16 Pro Max 1TB White Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"White Titanium\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 23.32, NULL, 27, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(121, 23, 'CAU7', 'iphone-16-pro-max-1tb-cau7', 'iPhone 16 Pro Max 1TB Natural Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Natural Titanium\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 35.94, 21.56, 45, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(122, 23, 'J1AU', 'iphone-16-pro-max-1tb-j1au', 'iPhone 16 Pro Max 1TB Desert Titanium 2024', '\"{\\\"chip\\\":\\\"A18\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"6-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Desert Titanium\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"6.9-inch Super Retina XDR display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 15.36, 10.75, 52, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(123, 24, 'P5MW', 'ipad-pro-11-inch-p5mw', 'iPad Pro 11-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 18.93, 17.04, 45, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(124, 24, 'DFLW', 'ipad-pro-11-inch-dflw', 'iPad Pro 11-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 3.81, 2.67, 59, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(125, 24, 'ZF2E', 'ipad-pro-11-inch-zf2e', 'iPad Pro 11-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 77.15, 61.72, 28, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(126, 24, 'WX93', 'ipad-pro-11-inch-wx93', 'iPad Pro 11-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"2TB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 0.52, NULL, 85, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(127, 24, 'QW19', 'ipad-pro-11-inch-qw19', 'iPad Pro 11-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 28.73, NULL, 13, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(128, 24, 'OQG5', 'ipad-pro-11-inch-oqg5', 'iPad Pro 11-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 82.60, NULL, 77, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(129, 24, 'KSM1', 'ipad-pro-11-inch-ksm1', 'iPad Pro 11-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 22.80, NULL, 36, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(130, 24, 'MSLQ', 'ipad-pro-11-inch-mslq', 'iPad Pro 11-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"2TB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 90.79, NULL, 99, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(131, 25, 'CG21', 'ipad-pro-13-inch-cg21', 'iPad Pro 13-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 50.22, NULL, 63, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(132, 25, 'SCEQ', 'ipad-pro-13-inch-sceq', 'iPad Pro 13-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 99.93, NULL, 49, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(133, 25, '6IBO', 'ipad-pro-13-inch-6ibo', 'iPad Pro 13-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 39.15, 31.32, 79, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(134, 25, 'HBPZ', 'ipad-pro-13-inch-hbpz', 'iPad Pro 13-inch Space Black 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Black\\\",\\\"storage\\\":\\\"2TB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 15.47, 13.92, 79, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(135, 25, '30M9', 'ipad-pro-13-inch-30m9', 'iPad Pro 13-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 55.38, NULL, 88, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(136, 25, 'DTH7', 'ipad-pro-13-inch-dth7', 'iPad Pro 13-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 5.42, NULL, 43, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(137, 25, '52I5', 'ipad-pro-13-inch-52i5', 'iPad Pro 13-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 57.35, NULL, 16, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(138, 25, 'S4EO', 'ipad-pro-13-inch-s4eo', 'iPad Pro 13-inch Silver 2024', '\"{\\\"chip\\\":\\\"M4\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"10-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Silver\\\",\\\"storage\\\":\\\"2TB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 51.68, 36.18, 68, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(139, 26, '2EN9', 'ipad-air-11-inch-2en9', 'iPad Air 11-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 56.68, 34.01, 0, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(140, 26, 'C3FK', 'ipad-air-11-inch-c3fk', 'iPad Air 11-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 43.44, 26.06, 74, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(141, 26, 'GIMR', 'ipad-air-11-inch-gimr', 'iPad Air 11-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 1.84, NULL, 7, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(142, 26, '9HNB', 'ipad-air-11-inch-9hnb', 'iPad Air 11-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 5.83, NULL, 70, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(143, 26, 'TJDZ', 'ipad-air-11-inch-tjdz', 'iPad Air 11-inch Blue 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 49.07, NULL, 14, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(144, 26, '8DYA', 'ipad-air-11-inch-8dya', 'iPad Air 11-inch Blue 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 7.13, 5.70, 49, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(145, 26, '16EJ', 'ipad-air-11-inch-16ej', 'iPad Air 11-inch Blue 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"512G SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 36.89, NULL, 74, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(146, 26, '68UY', 'ipad-air-11-inch-68uy', 'iPad Air 11-inch Blue 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"11-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 88.23, NULL, 70, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(147, 27, 'ZKNG', 'ipad-air-13-inch-zkng', 'iPad Air 13-inch Blue 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 71.46, 64.31, 38, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(148, 27, '1G8L', 'ipad-air-13-inch-1g8l', 'iPad Air 13-inch Blue 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 36.03, 21.62, 51, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(149, 27, 'I8YS', 'ipad-air-13-inch-i8ys', 'iPad Air 13-inch Blue 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 32.99, NULL, 62, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(150, 27, 'QLJ5', 'ipad-air-13-inch-qlj5', 'iPad Air 13-inch Blue 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 97.62, NULL, 21, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(151, 27, 'C4O3', 'ipad-air-13-inch-c4o3', 'iPad Air 13-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 79.74, 63.79, 21, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(152, 27, 'VB2O', 'ipad-air-13-inch-vb2o', 'iPad Air 13-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 96.74, 87.07, 90, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(153, 27, 'YCA9', 'ipad-air-13-inch-yca9', 'iPad Air 13-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"512 SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 34.62, 24.23, 84, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(154, 27, 'TTSK', 'ipad-air-13-inch-ttsk', 'iPad Air 13-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"M3\\\",\\\"core\\\":\\\"8-Core CPU\\\",\\\"gpu\\\":\\\"8-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"8GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"1TB SSD Storage\\\",\\\"screen\\\":\\\"13-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 18.21, NULL, 72, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(155, 28, 'FBBQ', 'ipad-mini-83-inch-fbbq', 'iPad Mini 8.3-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 84.53, NULL, 12, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(156, 28, 'W7O3', 'ipad-mini-83-inch-w7o3', 'iPad Mini 8.3-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 6.73, NULL, 55, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(157, 28, 'Z760', 'ipad-mini-83-inch-z760', 'iPad Mini 8.3-inch Space Gray 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 98.38, NULL, 12, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(158, 28, 'GFXV', 'ipad-mini-83-inch-gfxv', 'iPad Mini 8.3-inch Blue 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 39.00, NULL, 90, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(159, 28, 'VBB1', 'ipad-mini-83-inch-vbb1', 'iPad Mini 8.3-inch Blue 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 23.53, 21.18, 57, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(160, 28, '1EMV', 'ipad-mini-83-inch-1emv', 'iPad Mini 8.3-inch Blue 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Blue\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 66.20, NULL, 51, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(161, 28, 'ZME1', 'ipad-mini-83-inch-zme1', 'iPad Mini 8.3-inch Purple 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Purple\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 5.61, 5.05, 84, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(162, 28, '3HHG', 'ipad-mini-83-inch-3hhg', 'iPad Mini 8.3-inch Purple 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Purple\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 59.57, NULL, 88, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(163, 28, 'LJP5', 'ipad-mini-83-inch-ljp5', 'iPad Mini 8.3-inch Purple 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Purple\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 13.14, NULL, 42, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(164, 28, 'YHWU', 'ipad-mini-83-inch-yhwu', 'iPad Mini 8.3-inch Starlight 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Starlight\\\",\\\"storage\\\":\\\"128GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 96.44, 57.86, 91, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(165, 28, 'R56N', 'ipad-mini-83-inch-r56n', 'iPad Mini 8.3-inch Starlight 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Starlight\\\",\\\"storage\\\":\\\"256GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 53.32, NULL, 49, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(166, 28, '4IGW', 'ipad-mini-83-inch-4igw', 'iPad Mini 8.3-inch Starlight 2024', '\"{\\\"chip\\\":\\\"A17 Pro chip\\\",\\\"core\\\":\\\"6-Core CPU\\\",\\\"gpu\\\":\\\"5-Core GPU\\\",\\\"neural_engine\\\":\\\"16-core Neural Engine\\\",\\\"memory\\\":\\\"6GB Unified Memory\\\",\\\"colors\\\":\\\"Starlight\\\",\\\"storage\\\":\\\"512GB SSD Storage\\\",\\\"screen\\\":\\\"8.3-inch Liquid Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 32.99, NULL, 67, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(167, 29, '39N9', 'apple-watch-series-10-42mm-39n9', 'Apple Watch Series 10 42mm Starlight Aluminum 2024', '\"{\\\"chip\\\":\\\"S10 SiP\\\",\\\"core\\\":\\\"Dual-Core CPU\\\",\\\"colors\\\":\\\"Starlight Aluminum\\\",\\\"storage\\\":\\\"64GB SSD Storage\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 28.96, NULL, 62, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(168, 29, 'VE1L', 'apple-watch-series-10-42mm-ve1l', 'Apple Watch Series 10 42mm Midnight Aluminum 2024', '\"{\\\"chip\\\":\\\"S10 SiP\\\",\\\"core\\\":\\\"Dual-Core CPU\\\",\\\"colors\\\":\\\"Midnight Aluminum\\\",\\\"storage\\\":\\\"64GB SSD Storage\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 16.24, 9.74, 28, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(169, 29, 'AHMR', 'apple-watch-series-10-42mm-ahmr', 'Apple Watch Series 10 42mm Silver Aluminum 2024', '\"{\\\"chip\\\":\\\"S10 SiP\\\",\\\"core\\\":\\\"Dual-Core CPU\\\",\\\"colors\\\":\\\"Silver Aluminum\\\",\\\"storage\\\":\\\"64GB SSD Storage\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 6.47, 5.82, 79, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(170, 29, '4P8Y', 'apple-watch-series-10-42mm-4p8y', 'Apple Watch Series 10 42mm Product Red Aluminum 2024', '\"{\\\"chip\\\":\\\"S10 SiP\\\",\\\"core\\\":\\\"Dual-Core CPU\\\",\\\"colors\\\":\\\"Product Red Aluminum\\\",\\\"storage\\\":\\\"64GB SSD Storage\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 59.52, NULL, 96, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(171, 29, 'IO4Y', 'apple-watch-series-10-42mm-io4y', 'Apple Watch Series 10 42mm Gold Stainless Steel 2024', '\"{\\\"chip\\\":\\\"S10 SiP\\\",\\\"core\\\":\\\"Dual-Core CPU\\\",\\\"colors\\\":\\\"Gold Stainless Steel\\\",\\\"storage\\\":\\\"64GB SSD Storage\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 23.19, 16.23, 98, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(172, 30, 'Z6W9', 'apple-watch-series-10-46mm-z6w9', 'Apple Watch Series 10 46mm Starlight Aluminum 2024', '\"{\\\"chip\\\":\\\"S10 SiP\\\",\\\"core\\\":\\\"Dual-Core CPU\\\",\\\"colors\\\":\\\"Starlight Aluminum\\\",\\\"storage\\\":\\\"64GB SSD Storage\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 19.77, 11.86, 78, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(173, 30, 'WA52', 'apple-watch-series-10-46mm-wa52', 'Apple Watch Series 10 46mm Midnight Aluminum 2024', '\"{\\\"chip\\\":\\\"S10 SiP\\\",\\\"core\\\":\\\"Dual-Core CPU\\\",\\\"colors\\\":\\\"Midnight Aluminum\\\",\\\"storage\\\":\\\"64GB SSD Storage\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 42.07, NULL, 5, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(174, 30, 'Q81L', 'apple-watch-series-10-46mm-q81l', 'Apple Watch Series 10 46mm Silver Aluminum 2024', '\"{\\\"chip\\\":\\\"S10 SiP\\\",\\\"core\\\":\\\"Dual-Core CPU\\\",\\\"colors\\\":\\\"Silver Aluminum\\\",\\\"storage\\\":\\\"64GB SSD Storage\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 49.57, 34.70, 96, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(175, 30, 'GOAO', 'apple-watch-series-10-46mm-goao', 'Apple Watch Series 10 46mm Product Red Aluminum 2024', '\"{\\\"chip\\\":\\\"S10 SiP\\\",\\\"core\\\":\\\"Dual-Core CPU\\\",\\\"colors\\\":\\\"Product Red Aluminum\\\",\\\"storage\\\":\\\"64GB SSD Storage\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 47.47, NULL, 5, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(176, 30, 'PPIF', 'apple-watch-series-10-46mm-ppif', 'Apple Watch Series 10 46mm Gold Stainless Steel 2024', '\"{\\\"chip\\\":\\\"S10 SiP\\\",\\\"core\\\":\\\"Dual-Core CPU\\\",\\\"colors\\\":\\\"Gold Stainless Steel\\\",\\\"storage\\\":\\\"64GB SSD Storage\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 0.33, NULL, 100, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(177, 31, 'KHD8', 'apple-watch-series-ultra-2-49mm-khd8', 'Apple Watch Series Ultra 2 49mm Natural 2023', '\"{\\\"chip\\\":\\\"S9 SiP\\\",\\\"core\\\":\\\"64-bit dual-core processor\\\",\\\"colors\\\":\\\"Natural\\\",\\\"storage\\\":\\\"64GB capacity\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2023}\"', 70.50, 56.40, 16, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46');
INSERT INTO `product_variants` (`id`, `product_id`, `sku`, `slug`, `name`, `properties`, `price`, `discount_price`, `stock`, `deleted_at`, `created_at`, `updated_at`) VALUES
(178, 31, 'JPG1', 'apple-watch-series-ultra-2-49mm-jpg1', 'Apple Watch Series Ultra 2 49mm Black 2024', '\"{\\\"chip\\\":\\\"S9 SiP\\\",\\\"core\\\":\\\"64-bit dual-core processor\\\",\\\"colors\\\":\\\"Black\\\",\\\"storage\\\":\\\"64GB capacity\\\",\\\"screen\\\":\\\"Always-On Retina display with True Tone\\\",\\\"power_adapter\\\":\\\"20W USB-C Power Adapter\\\",\\\"release_year\\\":2024}\"', 42.02, NULL, 5, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(179, 32, '3ZFY', 'airpods-pro-3zfy', 'AirPods Pro White 2022', '\"{\\\"chip\\\":\\\"H2 chip\\\",\\\"colors\\\":\\\"White\\\",\\\"features\\\":\\\"Active Noise Cancellation, Transparency Mode, Spatial Audio\\\",\\\"battery_life\\\":\\\"Up to 6 hours (earbuds), 30 hours (with case)\\\",\\\"weight\\\":\\\"5.4 g (each earbud)\\\",\\\"release_year\\\":2022}\"', 54.99, 43.99, 89, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(180, 33, 'FSON', 'airpods-max-fson', 'AirPods Max Silver 2020', '\"{\\\"chip\\\":\\\"H1 chip\\\",\\\"colors\\\":\\\"Silver\\\",\\\"features\\\":\\\"Active Noise Cancellation, Transparency Mode, Spatial Audio\\\",\\\"battery_life\\\":\\\"Up to 20 hours\\\",\\\"weight\\\":\\\"384.8 g\\\",\\\"release_year\\\":2020}\"', 98.58, 59.15, 29, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(181, 33, 'NK5H', 'airpods-max-nk5h', 'AirPods Max Space Gray 2020', '\"{\\\"chip\\\":\\\"H1 chip\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"features\\\":\\\"Active Noise Cancellation, Transparency Mode, Spatial Audio\\\",\\\"battery_life\\\":\\\"Up to 20 hours\\\",\\\"weight\\\":\\\"384.8 g\\\",\\\"release_year\\\":2020}\"', 48.67, NULL, 51, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(182, 33, 'O97Y', 'airpods-max-o97y', 'AirPods Max Sky Blue 2020', '\"{\\\"chip\\\":\\\"H1 chip\\\",\\\"colors\\\":\\\"Sky Blue\\\",\\\"features\\\":\\\"Active Noise Cancellation, Transparency Mode, Spatial Audio\\\",\\\"battery_life\\\":\\\"Up to 20 hours\\\",\\\"weight\\\":\\\"384.8 g\\\",\\\"release_year\\\":2020}\"', 37.55, NULL, 50, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(183, 33, 'X9BU', 'airpods-max-x9bu', 'AirPods Max Pink 2020', '\"{\\\"chip\\\":\\\"H1 chip\\\",\\\"colors\\\":\\\"Pink\\\",\\\"features\\\":\\\"Active Noise Cancellation, Transparency Mode, Spatial Audio\\\",\\\"battery_life\\\":\\\"Up to 20 hours\\\",\\\"weight\\\":\\\"384.8 g\\\",\\\"release_year\\\":2020}\"', 87.73, NULL, 16, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(184, 33, '33TL', 'airpods-max-33tl', 'AirPods Max Green 2020', '\"{\\\"chip\\\":\\\"H1 chip\\\",\\\"colors\\\":\\\"Green\\\",\\\"features\\\":\\\"Active Noise Cancellation, Transparency Mode, Spatial Audio\\\",\\\"battery_life\\\":\\\"Up to 20 hours\\\",\\\"weight\\\":\\\"384.8 g\\\",\\\"release_year\\\":2020}\"', 65.78, 59.20, 91, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(185, 34, 'EB5D', 'airpods-4-eb5d', 'AirPods 4 White 2024', '\"{\\\"chip\\\":\\\"H2 chip\\\",\\\"colors\\\":\\\"White\\\",\\\"features\\\":\\\"Active Noise Cancellation, Transparency Mode, Spatial Audio\\\",\\\"battery_life\\\":\\\"Up to 6 hours (earbuds), 30 hours (with case)\\\",\\\"weight\\\":\\\"4.5 g (each earbud)\\\",\\\"release_year\\\":2024}\"', 78.11, NULL, 56, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(186, 35, 'V629', 'apple-tv-4k-v629', 'Apple TV 4K Black 2023', '\"{\\\"chip\\\":\\\"A15 Bionic chip\\\",\\\"storage\\\":\\\"64GB\\\",\\\"colors\\\":\\\"Black\\\",\\\"features\\\":\\\"4K HDR, Dolby Vision, Dolby Atmos\\\",\\\"weight\\\":\\\"0.9 kg\\\",\\\"release_year\\\":2023}\"', 43.36, NULL, 78, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(187, 35, 'XSBI', 'apple-tv-4k-xsbi', 'Apple TV 4K Black 2023', '\"{\\\"chip\\\":\\\"A15 Bionic chip\\\",\\\"storage\\\":\\\"128GB\\\",\\\"colors\\\":\\\"Black\\\",\\\"features\\\":\\\"4K HDR, Dolby Vision, Dolby Atmos\\\",\\\"weight\\\":\\\"0.9 kg\\\",\\\"release_year\\\":\\\"2023\\\"}\"', 47.45, 33.22, 21, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(188, 36, 'BKU4', 'homepod-bku4', 'HomePod White 2023', '\"{\\\"chip\\\":\\\"S7 chip\\\",\\\"colors\\\":\\\"White\\\",\\\"features\\\":\\\"Smart speaker with Siri, HomeKit support\\\",\\\"weight\\\":\\\"2.5 kg\\\",\\\"release_year\\\":2023}\"', 18.11, 14.49, 39, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(189, 36, 'MR9E', 'homepod-mr9e', 'HomePod Midnight 2023', '\"{\\\"chip\\\":\\\"S7 chip\\\",\\\"colors\\\":\\\"Midnight\\\",\\\"features\\\":\\\"Smart speaker with Siri, HomeKit support\\\",\\\"weight\\\":\\\"2.5 kg\\\",\\\"release_year\\\":2023}\"', 85.08, NULL, 81, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(190, 37, 'ZGRZ', 'homepod-mini-zgrz', 'HomePod mini White 2020', '\"{\\\"chip\\\":\\\"S5 chip\\\",\\\"colors\\\":\\\"White\\\",\\\"features\\\":\\\"Smart speaker with Siri, HomeKit support\\\",\\\"weight\\\":\\\"345 g\\\",\\\"release_year\\\":2020}\"', 9.04, 7.23, 92, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(191, 37, 'CPYI', 'homepod-mini-cpyi', 'HomePod mini Space Gray 2020', '\"{\\\"chip\\\":\\\"S5 chip\\\",\\\"colors\\\":\\\"Space Gray\\\",\\\"features\\\":\\\"Smart speaker with Siri, HomeKit support\\\",\\\"weight\\\":\\\"345 g\\\",\\\"release_year\\\":2020}\"', 84.64, NULL, 45, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(192, 37, 'FR2S', 'homepod-mini-fr2s', 'HomePod mini Blue 2024', '\"{\\\"chip\\\":\\\"S5 chip\\\",\\\"colors\\\":\\\"Blue\\\",\\\"features\\\":\\\"Smart speaker with Siri, HomeKit support\\\",\\\"weight\\\":\\\"345 g\\\",\\\"release_year\\\":2024}\"', 60.44, NULL, 13, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46'),
(193, 37, 'ML6R', 'homepod-mini-ml6r', 'HomePod mini Yellow 2024', '\"{\\\"chip\\\":\\\"S5 chip\\\",\\\"colors\\\":\\\"Yellow\\\",\\\"features\\\":\\\"Smart speaker with Siri, HomeKit support\\\",\\\"weight\\\":\\\"345 g\\\",\\\"release_year\\\":2024}\"', 70.27, NULL, 31, NULL, '2025-05-04 19:37:46', '2025-05-04 19:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'admin', '2025-05-04 19:58:09', '2025-05-04 19:58:09'),
(2, 'admin', 'admin', '2025-05-04 19:58:09', '2025-05-04 19:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(6, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(1, 2),
(2, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(28, 2),
(29, 2),
(30, 2),
(33, 2),
(34, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1MluxgU3l7OGbJiKy03Z9gnmBwVPFsrnnloMMCBP', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ3RJdW9OTDgwZmgyVUxMTUQ1YkROSm9ocnV5bFluWDliSkVqbTNFMyI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982193),
('1tINpF584Cg8HD3bgiq1baRFxVphzvzW6xmryS9G', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidTAwSTJ2RGt4Q3FZQ3ZRT1h5WkNVdVpzdnc0YzZJU29ZZnczNlBZZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly9sb2NhbGhvc3QvdGVsZXNjb3BlL3RlbGVzY29wZS1hcGkvcmVxdWVzdHMvOWYxMTk0NTktMWIzNC00YjgwLTlmMDUtMGNhYzk5ZmE2MjY1Ijt9fQ==', 1748981325),
('25UHoFOOKxIwVMTzzqkZ2LR21QyBs9UvjOPE3iXU', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidlVSelVzSExxQ1k5alJXWDJ0a1Q1YXhOa1k5a1daa1NtUmpTZ0QxYSI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vYXBpLXVzZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982272),
('28kTGnFWidHxoRrsUq6vMKsQpm2md7pm6GWjMWn1', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSjBaV2FkeVlnNVdOUUpvdVlmZWtYV2ZvQ0NVZWJtOFR4WkJHbUY1bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982174),
('2yeE9VWMQE08WptOxhUe62uK7l30MJFDgVYZsDdU', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVVRtUEN6a3VRTHczUUx4cENyejEyWGVvRWo1d0NHZVhmSVlsZlNMcCI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748982243),
('3wzvLqpqnHgDaEeMBLlKb8jtt116H5sw7kIXkdJ9', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSHkyUEpraXpHaGF0d1pLN0dWZkZ4dFJiQTFsZm0yWndrZ21zVVcyWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982193),
('4dx7L0zhYLVoKihY5fG1xKFF9Ot27JL6H6VCNJty', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNXpHZ1g2N1lMdnhLVDBXaHlLajZFUVRwTTdZTUZqNnNnMkVxaTl0UCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982227),
('5d28IK0u3NuQaZVGqIciQF72AOsceW3kOhK4DcB0', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQTBLWFRJSUloMzl4Z3RpalY2TFFvb0ZPaUhwS2Nra3RuUUxwUlhrdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982191),
('6Ye7x1081LqLFNwLz0BWufKI0UD9nsxdPQrKyI2E', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY2dzSzdzZmFDYWlEV2VUVXVEV0M2Y1Zmc1lsVU9Ob09TS2xFMjRIbSI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982190),
('77r1So3Mx1WahKckf8b2rLyBrMYMtqagZw4Z24T0', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTVJqTkZtM1pqeTFaaW9ENFJiU0NZZUJiOU5ETzhrajdTSnJ6Rk9rRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982263),
('8DqbYFsbB67K31iSs18ANLnCeF1Y80Uiy88CSJix', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQUVnOWZQYW5ORTh3Mkx1ZExLRVZnaFZxMnRQT3Z3YkJOekQzVTZvcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982255),
('9ZhDGupq3grK5ZwqzsoC8LvxXTw9MLHWzXnaYlBl', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR25pNDJSckE2d1RhV2tSQXNlR1dMcW5MWFhvRUhLOHBiQjZESlNRQiI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982178),
('aSc3wYMokNr207XgfN6Tz1FeZPYesDLGF0tlByKF', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMVJPUGxZZW9Fanc5aFBBT0Y3UXY4RHNpdXpsYTdzSG5SN2R5cmtBdSI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vYXBpLXVzZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982268),
('AVpJx1mm5TndLkMIvb083oZmbNvFNXeTSt89aUST', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWE5kYkpRZnFwbTRid3YyYUk4d0JnRkJON2xuR21NYUFpMnRaNHlqSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982193),
('bUrmq1NOcB9ZCzWPQH6Cknv4DKxNJtgmQdMWbqZ7', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOTlWZzRvY0hadTFBTTNwSjNhc0FMMkw5Z1V1NW1hZ09CMUV5bHd5QyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vbG9jYWxob3N0L2FkbWluL3VzZXJzLzEiO31zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxOToicGFzc3dvcmRfaGFzaF9hZG1pbiI7czo2MDoiJDJ5JDEyJDlsck0yQTN4dzgxQUlBN3VEa3N3RGVmdlFKVDh5N1Bla3NlUjEyeEMyWHRGYmNvZmV1SzZLIjt9', 1749068026),
('bZMh8xKH1LoR7EfI61OzAkg1rptoQvb8zxFR2ci5', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYlN5amlnaGJhdkRsczdoNGhuY3MxRnlkeVQ5dDhkcDBLWERDWm9HWiI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982191),
('D74rL2Z0qDKrFSJH6bbzFGTsI8slrtlF1a6snfoa', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiODh2R2ZFcUdSRXh4SDBLUnB4NVYwcUVWekI5MXV2SFdXU0YyQURrSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748981578),
('e9YypNLO4i62TqmJGTqjZ82qISMDUFHsje6by5rz', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiR1puZDFSMTUzaFhXcFJwWEJsNVRYbmZXN05Sd08yQXA4UnBLNEl4NCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982255),
('elbS9fxeO0ca5fOsewmfXYqZM34oNXv1N7JBrVdE', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid1NWa1VhTjNjTTFReHE0M3Q2WmFuMWR0M2hqWGZJNjNqV1hKVHNxZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982241),
('eq5PKZj2CGPs9VIZc3iQTyUSdFKBJZkg3BpjFC7Q', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiclVqdm1qbFo1T0lWdnIxOVpieG14anF5OWRQUDkxQXY0MjJKSVAwdyI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748982250),
('etxlBPkJNCR0rbQj0WwlOYKeeRlzEO57sKTwsQ4C', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMWhWaWZHRVNFQkFLS2VjZE0wbjBsMjdaZkRBT2VJZUJPMjBVUnMyUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982241),
('FFbByVb02bi6QZHx0Pr2aabyykehZO8WIe22q9QL', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSlpKbXlHU09TcVhPamg0U3RSNndzYWVCTDExRWNZS0dJNmhUd2ZYMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982255),
('g4cuUABhuj4vIuwgB2I6PtMXCyHSZW2MU1z7jIBg', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaDd1akFZMG1JNXpLeHBpNDUzQXNVWVpmTXo2OGpLMU03cUpVaFAwRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1749055802),
('gf112GAuCj8FHcO9j8Ju8JJrXUm8hUsP2046R03Z', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibW9JMThGd2ZOMUE2ZWRXSjREazNxcjROZFlzblVIRU9sbll3emlOeiI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982230),
('gmyMrljM0484I9lOqEm0jQY9lYnZgbEJLf8rRTTy', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaWcwZFZ3a1EwZ0VMTFhtSXVHUmdnMjFSanVSTDRUY0NWbVlzcmxXTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982241),
('gRrmOYDZ8YeuNOGzZF0IZAkcy9ouGwHaesSqLFa7', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWTU2eDRNTGo2OFUyYU9BOElCSXZ0YXpXcTN2UHZtNVpBaDFBaVhFbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982176),
('hzk30epHgY2P88AY9HrZ8TGU7MSdtIo0kSGVdqic', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMGtWMWd3YzlJNEd2bEFsMEI2TFJneFdUQldLd1M3TDdGekRjU1dPTCI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982227),
('IJrQZkqgnCBPpGOzxeXjLIb45G5O8qF24exH4ta7', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRzZJT3NXaGFUTG9kUEJhRmZTcERHQ3F0U2NDQ3hadTRsVnhSWnZRbCI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982224),
('J1NlIvVHIkhiDIMQ7z28QncjgvrZ1geIlCSpFlRH', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUXBoak5aZHFjNWk0eWM4UHdLbTZXQ0RleThuTVA0bHJJSElLUmQxQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982191),
('jjfFGUYn9MQ3AT2KkEb84LIGuED29DKMbWOvGtVg', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUnVCN0hxUEo0SHJlbWRnTDUzcmRQZmJsSUlLdWhabElidHlseDRleCI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982185),
('JnpB8EA5VLQsTzx8BaCep86LEvy54Khx42dgROBv', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicXczSEs1azF5VmdVVTlWYnZOZ2NBYUpqNFlxS05vaEdFdFJFTDVzUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982227),
('LGnIO6ZoTrA4Px3BreXecZr2EyKHRV1raxDixRpY', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieEJhZGtrY0NXUUV5Nk1wemtyWU9DWDBKc3hDZE9MdjVoR2pUUVNGbiI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982194),
('Mg0hY6CtFAJa5vpDXH4Q040k8xHvK8Ok1gW50bPk', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiazlwaW1ZWmFiWTZQQktvamg1aUFHN2F4M2MxN0x0TjUxSlBGcU5QViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982196),
('mqZuON7oqh2Ozmxt0KAEPxkpbY5N3K851hoUfgpC', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZzdwVWM2aHhRNW9FT2JKWGtmYzBTRjJmdW5Za29yZldtYjZsV0thciI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJ0YWJsZXMiO2E6MTp7czo0ODoiOTMwMTRkOGViYmI4MDM1OTZmNWRlZWJmZDE5YjU1MDhfdG9nZ2xlZF9jb2x1bW5zIjthOjM6e3M6MTA6ImRlbGV0ZWRfYXQiO2I6MDtzOjEwOiJjcmVhdGVkX2F0IjtiOjE7czoxMDoidXBkYXRlZF9hdCI7YjowO319fQ==', 1748983785),
('mTqqboCUkLr9CtO3u8Z1DtmYEQokD1zBjaVU3gJP', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiY3kxRGpydEM4eGNKN0dqemJXYTc2R2k2c1VCeWtKdUx1M09RTVgxbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982189),
('mzf6jAXIhOLg7TTAK5tCHQhWIeiw69q2BIpW1Cb7', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNDZuSE4zUk9abzhTQmdYdEF2dWloTUFrbXNWQ3VQU0lhZmNwNnVlTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982178),
('N9JsPbaBDlHUWYtaWxKOynA4nww4mrFh3yLij3fs', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTDJ3NW9hc0g2eFZVbmxNUHU1QWx2M1d3ajRGejlZeG9UR204UUt5ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982176),
('OGymrzPVZck3OLj14B0ArVf8BCjIv4op2VEqEtxG', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY2VjcEh1cVRFdkdaUmxxUldTbXNEZ2hrc1ZSTGk4OXBzUmpFbFJUZiI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982263),
('OIkXouI2vPIz19R1krECOSy5WrOhOvTINZNaFcPk', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUnVvYVpoblgxSGx0RXQ3V1RaNko0bk5GT2JsS3pLV0ZURkpWS0wxNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982241),
('olgkUXY7SbF27tSJbfjWGle4QXZbvSsRqFnfbrGh', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiejFQV3VETjhsbWdzTHl6YmplNnlURmFEeGxuZktjMXNLMVRCZlUyYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982279),
('ouF44B5hRvJQiK2kB22RLV9Lvaq8xgBF697ePq5D', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUHR6Wjl1S0xkMVhmdHJHYms0cDljc1ROU2g4aXN5QTAwZUNnT1BLaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982241),
('qBrXbpapBndpsYPViemQfNdP4UCV6FvjqLSzO8l9', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibVV6WE15YW5IZGVydFcxM0hzUnlicUV0dklsZ01VTmF3cVBKYjFwNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982178),
('qfsOBmMZAjpwTkIsZpOvKdEfpLSZdfbKb9qdN6uc', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia0VZOUF3ekxybjBXeWtTWHdnUmFBbDZsTEVxZmxyQWxydEJ3VThvTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982189),
('QKomPGBnELxIoK6u4ZAm5bQ4LilSuxpj1JlvajvG', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQ1Z2dzZwUWhmQXpEZHhIU3htVjA2RjhOcDVNbXhTVWlaZjlERlhMNiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982272),
('QrDyc0QmG8ttj1cbT6lPug75v4npLhx0ieH9RVBL', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidXg0SXM0anZ4WTlsUmg0dlpHTGFmQTl2ZkdrRHhJVjdkVkRrNTB1QiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982255),
('R6HbrCOgc1iVOmp3PFTkjFh0r2eXt27j7mIIbLPE', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYmtaSWF1MWJCM0d6T3Frb0E2UEgxMzB1SlBqM21nUGxsclRyQTJkWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748981505),
('rx9g0QZiUkF4ts1XaRP7uvC1vHInJoUeY6x6wjbi', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSmJYU0tNY2Nkb3g5OEJBUW5qcVJPTDVMN1ppZXdSbnFGVHZNMFJraSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982241),
('soTsND4wSyDyfWltz9HCpt084IPhHlkRiXGRmlMI', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY0RkOUd1UVQ0ZXZ6UDFjbzJjRDdtT3p0dG1wOXNGTDI1cVVobzlINCI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982177),
('sVyof5ITRP916x7IbaxOYAbpwoa4RTAWAp9oXIJH', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieXF6RVZSUDZXRU9meDhHOW9uYVRFNVpCOUJDOTd5aGY1OHc3VUxsZCI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982175),
('TzPu8cuGufLGTDBNv6Prs1YjmGQPZYBLYkyNBLSn', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVUxCQXBjT05hTDdIM2NOMWlQM25ham1yczE3aUhoaGM4T2lxaHBOaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982255),
('TZtk79nh1zfvayj302ijUXlMHinQ3YG97jvHD1sF', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidElBQnU5S3o5SHB6S1dOMnhiRWMwUEJwTDB1c3hzeHBvZ293MGVHVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982230),
('uez3aWlyjkP0fUX8WoKiZ7V3uzxfOKkoHEAP42Wv', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWjA1RGh3dVk3Zm1ETE5ReGFLUW5teUpvOWZIZ1ZnTE1TS1JlZ2ZEWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982230),
('uMDGRd6PvKmXWl6gDzZgEERaypxYL0otER8sACet', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieHJLZDhTR01PV3RNa2FkTGR3R2Nxdm9jWElKVmxEMmFwUVNVWDBhbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982196),
('V0V35AniIkygD2ZrPdJRwzU1ufLzRudwvVnHr3CK', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQlpXTjhYbTRveVZzUmV3ZjViek11c2hKWjdSOFR1ZDhSckhpYTZPdSI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vYXBpLXVzZXJzLzMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748982278),
('xCe3du06tBN0niyipVkjXHvAUpRy3ppNBSp2bWZo', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWUo2alVXY0RQVEZqak5HWkdSYzNiV2Y4OTA0T0xDMTlKTk1JVm1IVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982255),
('YMiiv4uisjlcaqMlPoWXTFzXORS4pPiCZ33uN62m', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidW1wWWFBa3Z6Q3NweTRxQ1JUc3N5SDRtVGRBTXBlQ2lHNHpRakhVMyI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982229),
('Zk3jTU3Ss7ePfQ35NnHeY4iWqAPP1UMp7n3GiZ9m', NULL, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTmhNdTlodW5GcWNpUVNYVURKWnB6TVdHaFVsU2lleGRkeUZkSnhDbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982268),
('ZUwQCBDUCS3kbmnCSymfD5BILa8rA1jFzox612a3', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRlcyaUNhWkdybWttdGlNQ3ROam5lWXZDNnFwNUd1cVZERW55bHNHRiI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9sb2NhbGhvc3QvYWRtaW4vb3JkZXJzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982195),
('ZWYbXdKt64bLXMzxTuDjERWzLGcQQxxWMhVpyco7', 1, '192.168.65.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMVpSa3Fqb0YwZjdVdFJNSEJhclU3QThhcGJyS2docUl0cDMwZEJXSSI7czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMiQ5bHJNMkEzeHc4MUFJQTd1RGtzd0RlZnZRSlQ4eTdQZWtzZVIxMnhDMlh0RmJjb2ZldUs2SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748982241);

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'superadmin@admin.com', '2025-05-04 22:30:35', '$2y$12$9lrM2A3xw81AIA7uDkswDefvQJT8y7PekseR12xC2XtFbcofeuK6K', 'dhCI0ZcR4ioy04q5Vs33Nd8MmHtvUGJ9yZFDRAiSc5xHQlqm9bdVPTkwz81r', NULL, '2025-05-04 19:30:14', '2025-05-04 19:30:14'),
(2, 'admin', 'admin@admin.com', '2025-05-04 22:32:48', '$2y$12$I/IMo5DTHWLqUOMeRPtwm.EIy8yVAsxOlferPw2JZCFaJVYY/BDRy', NULL, NULL, '2025-05-04 19:32:37', '2025-05-04 19:32:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_users`
--
ALTER TABLE `api_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_users_email_unique` (`email`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_api_user_id_foreign` (`api_user_id`);

--
-- Indexes for table `bookmark_product_variant`
--
ALTER TABLE `bookmark_product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmark_product_variant_bookmark_id_foreign` (`bookmark_id`),
  ADD KEY `bookmark_product_variant_product_variant_id_foreign` (`product_variant_id`);

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
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_api_user_id_foreign` (`api_user_id`);

--
-- Indexes for table `cart_product_variant`
--
ALTER TABLE `cart_product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_product_variant_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_product_variant_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_addresses_api_user_id_foreign` (`api_user_id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_api_user_id_foreign` (`api_user_id`),
  ADD KEY `orders_delivery_address_id_foreign` (`delivery_address_id`);

--
-- Indexes for table `order_product_variant`
--
ALTER TABLE `order_product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_variant_order_id_foreign` (`order_id`),
  ADD KEY `order_product_variant_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image_product_variant`
--
ALTER TABLE `product_image_product_variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_image_product_variant_product_image_id_foreign` (`product_image_id`),
  ADD KEY `product_image_product_variant_product_variant_id_foreign` (`product_variant_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variants_sku_unique` (`sku`),
  ADD UNIQUE KEY `product_variants_slug_unique` (`slug`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD PRIMARY KEY (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `telescope_monitoring`
--
ALTER TABLE `telescope_monitoring`
  ADD PRIMARY KEY (`tag`);

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
-- AUTO_INCREMENT for table `api_users`
--
ALTER TABLE `api_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bookmark_product_variant`
--
ALTER TABLE `bookmark_product_variant`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart_product_variant`
--
ALTER TABLE `cart_product_variant`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_product_variant`
--
ALTER TABLE `order_product_variant`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;

--
-- AUTO_INCREMENT for table `product_image_product_variant`
--
ALTER TABLE `product_image_product_variant`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_api_user_id_foreign` FOREIGN KEY (`api_user_id`) REFERENCES `api_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bookmark_product_variant`
--
ALTER TABLE `bookmark_product_variant`
  ADD CONSTRAINT `bookmark_product_variant_bookmark_id_foreign` FOREIGN KEY (`bookmark_id`) REFERENCES `bookmarks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookmark_product_variant_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_api_user_id_foreign` FOREIGN KEY (`api_user_id`) REFERENCES `api_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_product_variant`
--
ALTER TABLE `cart_product_variant`
  ADD CONSTRAINT `cart_product_variant_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_product_variant_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD CONSTRAINT `delivery_addresses_api_user_id_foreign` FOREIGN KEY (`api_user_id`) REFERENCES `api_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_api_user_id_foreign` FOREIGN KEY (`api_user_id`) REFERENCES `api_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_delivery_address_id_foreign` FOREIGN KEY (`delivery_address_id`) REFERENCES `delivery_addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_product_variant`
--
ALTER TABLE `order_product_variant`
  ADD CONSTRAINT `order_product_variant_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_variant_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_image_product_variant`
--
ALTER TABLE `product_image_product_variant`
  ADD CONSTRAINT `product_image_product_variant_product_image_id_foreign` FOREIGN KEY (`product_image_id`) REFERENCES `product_images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_image_product_variant_product_variant_id_foreign` FOREIGN KEY (`product_variant_id`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
