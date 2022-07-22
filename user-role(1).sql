-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 06:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user-role`
--

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
(5, '2022_07_15_072917_create_roles_table', 1),
(6, '2014_10_12_000000_create_users_table', 2),
(7, '2014_10_12_100000_create_password_resets_table', 2),
(8, '2019_08_19_000000_create_failed_jobs_table', 2),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 2);

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
(5, 'App\\Models\\User', 1, 'myapptoken', '77e55d54e589605f5a832ff5bb715bd75f787c236cab89700ed475f769ea5be3', '[\"*\"]', '2022-07-21 19:25:23', '2022-07-21 18:07:46', '2022-07-21 19:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'can register, create, delete, update, assign role to all users', NULL, NULL),
(3, 'manager', 'higher authority than the staff, can create new info aside from what the staff can do but not the same as admin user', NULL, '2022-07-21 18:23:50'),
(4, 'staff', 'a regular user that can only edit, update, create his own info', NULL, NULL);

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
  `role_id` int(11) NOT NULL DEFAULT 2,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Megane Gutkowski', 'herminio03@example.net', '2022-07-21 14:38:43', '$2y$10$41B70VnCjsHbaTK6JLLJJOZo4MmMDRe.V9CphIlq6sq0O.jCT7qS6', 1, '2qlrPgjAf4', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(2, 'Tommie Weber', 'wframi@example.net', '2022-07-21 14:38:43', '$2y$10$3WJcM.ah0bLUuIgVjyxBuOAAb3qebVCTdx7H8Hv54FjLbR4OkreL6', 1, 'PnQmTIsCgs', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(3, 'Humberto Yundt', 'runte.nicklaus@example.com', '2022-07-21 14:38:43', '$2y$10$C3IzZ1xYNzybV91qxAyEc.pbvTzwhFesaL595ZZ5xo1WXiMMFmVBu', 4, 'a3bEZxr6j0', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(4, 'Sabryna Fadel DVV', 'dschuster@example.com', '2022-07-21 14:38:43', '$2y$10$wAvx8uhbr1.mfjqwPah5i.WPcMmQZqWiA1ejJi2qZt7x96Qw6gK2i', 4, 'PmtNdQ9CwI', '2022-07-21 14:38:46', '2022-07-21 19:07:16'),
(5, 'Mrs. Kaia Thompson III', 'wayne16@example.org', '2022-07-21 14:38:43', '$2y$10$wexc5B2r5HchmREr6IY70eq69Fa8/5BsnLUPocrpSXcJuZjGrrUH6', 4, 'TV0oJMUqwo', '2022-07-21 14:38:46', '2022-07-21 19:11:23'),
(6, 'Mack Pfeffer DDS', 'tristin.leannon@example.com', '2022-07-21 14:38:44', '$2y$10$0QNQ9yvIGioGF6hUH96DzObcQztxkhbeXRLp0Gtx97lDqmquLUTOi', 4, 'qLfp4mhNI7', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(7, 'Phoebe Ankunding', 'lauretta92@example.org', '2022-07-21 14:38:44', '$2y$10$3Pwt9/AAh0i0d3.mtwF/BepsFa8IFFuSn2b4mK5gcjVl9JA/HVeYa', 4, 'FAaD1VD50W', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(8, 'Ila Haag', 'icie.ortiz@example.net', '2022-07-21 14:38:44', '$2y$10$fbVol9qcc4s80O.jBst3geUtPpkrkESl5HI3A0e/77rMKoa/a5vJG', 4, 'nEBxE6Pm9c', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(9, 'Lesly McKenzie', 'uriel00@example.org', '2022-07-21 14:38:44', '$2y$10$mCJDfOo0NKYtzOAJWzib9.hlt6mJX0sHG9KTKAQOmGSeIsFwsP1o6', 4, '2JqKQhrxIw', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(10, 'Jude Rowe', 'dwehner@example.com', '2022-07-21 14:38:44', '$2y$10$IPNk3lB.jjLyadV3m6USfOOxxZdiC3.hBVoWjjx93NQ6xs8rlQp5e', 4, '5HkcuFPY1L', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(11, 'Dr. Litzy Sawayn', 'solon.konopelski@example.com', '2022-07-21 14:38:44', '$2y$10$A2vnRCSMXb40HnWQG.NeOOx4kRTyzbf0QfhUT1dtUryLIWZ0CWRHW', 4, 'v0Orubp1dy', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(12, 'Jamir Hamill', 'peyton58@example.net', '2022-07-21 14:38:44', '$2y$10$0u7bqC5eGWe3.HBWUV0.qesE8txqhCaOpJZdk9CjYv7.7QVTpYaN2', 4, 'EX7L0qpj5I', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(13, 'Prof. Ned Strosin', 'retha26@example.org', '2022-07-21 14:38:44', '$2y$10$S0rDkSKbabirgTDM0kj1peMaokSI9XcY9o.ZAi0evsIkU6jtR2MFe', 4, 'UWIZfw0xtg', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(14, 'Prof. Jaquelin McLaughlin', 'hills.anna@example.org', '2022-07-21 14:38:44', '$2y$10$vuJ91zcrUYW4mCBqSWS1uu70Fbok6Ec6DbX7AqpsUtosAiYZsyryi', 4, 'nhFyIKfcAg', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(15, 'Adan Bartell', 'chance.labadie@example.org', '2022-07-21 14:38:44', '$2y$10$T2u8clcllKiQSPPQPmlI/.i7XIjXLqle8rUA1ylQYuc6KiW92JTtC', 4, 'qUV4RcCh9j', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(16, 'Virgie Goyette', 'rosalia18@example.org', '2022-07-21 14:38:44', '$2y$10$dr0FrBTyj2USbqnpl94Dou2bCCrhAmlRXTOcDx04bzO.euB0hExny', 4, 'dRAhaPB2BB', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(17, 'Riley Bauch', 'nicola.stamm@example.com', '2022-07-21 14:38:44', '$2y$10$bzMFH7.nwKGvIAMMHAbISOCUmJPKYsN0FTvwzTCYOCgItqScqKt/2', 4, 'eAq4kpOjYp', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(18, 'Hyman Walter', 'coby.baumbach@example.org', '2022-07-21 14:38:44', '$2y$10$LcMRhmH7ba6DRuEj2f69S.BJZj5sg.g3kBlYVaAqpb2V6Zy1Y.QxW', 4, 'OOa3VfrCnJ', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(19, 'Carmelo Veum', 'qoreilly@example.org', '2022-07-21 14:38:44', '$2y$10$PTf9DKB7UhQtvHDZ3pBmHuNVDe6e98h980IJwbTigrO5hOg6EZ7IK', 4, 'AhnflXSgwq', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(20, 'Bruce Streich', 'krystel.boyle@example.org', '2022-07-21 14:38:44', '$2y$10$B5eGSQbTXVeLIZNkIT8pqOy2pD/U2ZXnal8ZXqGB0DrxwDtjNVa.u', 4, 'AYyzYTcN4T', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(21, 'Brianne Rath', 'dwight95@example.net', '2022-07-21 14:38:44', '$2y$10$eRrP2btZp3fQqg0Ojq.X.OkMcDZQBBaQbdb0t6H0uVWkLYdby3feK', 4, '6HJ8i75NbJ', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(22, 'Francisca Christiansen', 'sokuneva@example.net', '2022-07-21 14:38:44', '$2y$10$/HlI2x0ltVOT4bVfpMavCu4bdkatMlxgnZATEiKuh6KDTYOoWnpui', 4, 'N4zGQLPQrv', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(23, 'Archibald Morar', 'koelpin.ezra@example.com', '2022-07-21 14:38:44', '$2y$10$aEH3PL94zIeEeybp1sHyNOv2JFWVeNV.YjVz7rJtCWRiVdwJTQDpi', 4, 'JGc9k2EA9k', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(24, 'Zita Russel', 'shayne30@example.com', '2022-07-21 14:38:44', '$2y$10$g9TxpVNwBWdo0wDKAXSS9Ovb1KFZsQmv3zzvcMWbdci5oX1VbGxF6', 4, '1LFBs2pGZJ', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(25, 'Miss Rosalind Hirthe I', 'jennie.dibbert@example.com', '2022-07-21 14:38:45', '$2y$10$7yDauoCNk7C/v5wIdbfRYOk.056cjPliXFKoOwGrrWQyOrzxHYuuq', 4, '2nx4Xy8ysC', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(26, 'Dr. Sister Lemke', 'cledner@example.com', '2022-07-21 14:38:45', '$2y$10$cCPvePNJHwmgVMEUCZaKKe5RNMQ7YcTQv03Cia7OqXBu3K6MJOz2G', 4, 'T0LE4w3HYq', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(27, 'Yadira Kutch', 'eldora27@example.org', '2022-07-21 14:38:45', '$2y$10$xRqyo5yss7JCpZnxxHkKT.azsHEXQicTpa6jGBY4aDnHVUaPq2zVK', 4, 'oOKCLfkaip', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(28, 'Ms. Aniya Maggio', 'conn.marvin@example.org', '2022-07-21 14:38:45', '$2y$10$OhfK/GdqLwKu5xjjhgHRmOhKiBfDsaOs5dGopiv60h0z0MlYzIYvG', 4, 'u7caS0uSrb', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(29, 'Aliya Yost', 'kutch.collin@example.org', '2022-07-21 14:38:45', '$2y$10$gaEdQrrE1oCvkIcy2hZNUeBfJbyDj7dMkKH4dVCrH4ezU.ZdtZuDC', 4, 'mb1It2tGfi', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(30, 'Violet Wolf IV', 'rondricka@example.org', '2022-07-21 14:38:45', '$2y$10$gIoCj5I.lupOGOUiQWKOGOWyG3DQSV7iCX2gShT8VAy7UIkedyc9e', 4, 'UVThzbL4UY', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(31, 'Bobbie Jacobi', 'wfeest@example.org', '2022-07-21 14:38:45', '$2y$10$euzcd2Rq2spwoMtzZ1l9buCqxXO8n37dzofsr5qDQrqowAlEm166a', 4, 'OoK91GfeSZ', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(32, 'Hanna Upton', 'miracle.cartwright@example.com', '2022-07-21 14:38:45', '$2y$10$ZOAKUTej6IuTmXHl.SGKhe5dsiGM5SlLyLlxmIVFaqGewGpEiw8Im', 4, 'QYnF6Bo5TP', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(33, 'Kayley Fahey', 'mayer.mark@example.org', '2022-07-21 14:38:45', '$2y$10$R5T8fBTpih.nd88APEkfHueE7q9DCUmGllgZxQtr5yJKF9p4meBGC', 4, 'vT9SByGJSK', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(34, 'Stephania Bashirian', 'lorena67@example.org', '2022-07-21 14:38:45', '$2y$10$NPB5e4Wqfd/RRKv2qjKmEu71a/Rop.7k1QfRqfM5fHIp2AoFsodwy', 4, 'ZPbDyqLtzp', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(35, 'Morris Hackett', 'luettgen.florida@example.net', '2022-07-21 14:38:45', '$2y$10$8G05y8/JQA81X/Lb/YqizuXBKTYR6R4N3J1xFo4U3ebmsjLKjrAGK', 4, '0zYdvK7ioE', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(36, 'Osvaldo Altenwerth', 'mozelle.mcclure@example.com', '2022-07-21 14:38:45', '$2y$10$GqQLRnFKGuM/XAb.LkZx9Op78kxbncxYgeXOK6JneQRCZ8bcdR7Ta', 4, '4CBB6LkKsN', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(37, 'Prof. Luther Mosciski Jr.', 'yrempel@example.net', '2022-07-21 14:38:45', '$2y$10$WoEUiHazhQPrW98OERyW5e0qFeMbjV1mDEExJU4mNDtY6B/1uWt1q', 4, '2CBBaWMM54', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(38, 'Jaunita Von', 'cleveland24@example.org', '2022-07-21 14:38:45', '$2y$10$V3.DO8IPTxW8en0tu7LxbepnplxmRCxT22QKyzgPkzvxzZp4AmYxu', 4, 'yV4Ba0OF8b', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(39, 'Brando Cummings', 'cbosco@example.net', '2022-07-21 14:38:45', '$2y$10$Tq.wOiK4rrJ7tJ9mGzhFeO.nwiBRQ3TlzuLJBFG0o9/RfqoUrLd7S', 4, 'qKtBGn6EXo', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(40, 'Astrid Friesen', 'hollis.cummings@example.net', '2022-07-21 14:38:45', '$2y$10$j4YagrFOAOR5gAOjMA19eeeM46r03gxDVSKPpdaV1GhVqE0.lA1Gu', 4, 'EqbYzjz9WZ', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(41, 'Brooklyn Hammes', 'johnston.joyce@example.com', '2022-07-21 14:38:45', '$2y$10$EeGM.9EYvTDpQ06CjvHG4.ys95nLjxdWSoPUddcwHP7daNowKQo2W', 4, 'ui0sGOs7UV', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(42, 'Augustine Stanton', 'andrew03@example.org', '2022-07-21 14:38:45', '$2y$10$x4ivhYQOBSkLVRmCDgQfRuCxLURc4Eo7tGKhnP0HzhIf7hILLLYbK', 4, 'opFqeuUbM9', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(43, 'Lorine Weissnat', 'ruben93@example.com', '2022-07-21 14:38:46', '$2y$10$6Jl0ghruXWbfiOBRBBsu8unqh8RuVigzERBQU.3hloDq1xzU.HDyG', 4, 'h5oxI5MA88', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(44, 'Karley Olson', 'laurie.kihn@example.com', '2022-07-21 14:38:46', '$2y$10$LGKzNKkX5MxpyEdlWtGXW.lkYhlFvSM78mEKcx1pJZRrkko.MjZ3K', 4, '73yPznPGEg', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(45, 'Darrel Schoen V', 'schaden.buster@example.org', '2022-07-21 14:38:46', '$2y$10$OvdwWS13EPibezstY2Zseub6WHdjnKXDtNYwxXo76GgB.TjV0xhY.', 4, 'BOj6O0slai', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(46, 'Dr. Keira Schuppe', 'vernice94@example.net', '2022-07-21 14:38:46', '$2y$10$W.ht8MLEx6fNuwxfheKn9ed1iaGEU9IEBIgZ.cXGVpDsb5fD6owdu', 4, 'JnbS4PsNvp', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(47, 'Austyn Bauch', 'princess.west@example.org', '2022-07-21 14:38:46', '$2y$10$YwpCzGK4pIw3Jx5d74BSLuj.hTa7mTeTlMA7bAf1A.EuJBGXmm4oy', 4, 'lsRoVwTMfh', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(48, 'Demetrius Christiansen', 'tavares01@example.net', '2022-07-21 14:38:46', '$2y$10$02tmQ2sBAIetcRCGNdmOxuuN8XUsAgj1aWTSppaKh3eDctIqFj8MS', 4, 'CAI3HtyDjI', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(49, 'Aglae Douglas', 'rodriguez.tina@example.net', '2022-07-21 14:38:46', '$2y$10$zwWwkaNrBkF7RP4EDvxEKuDWnHt3NxULAZ3urmyrxhF27eEs8XI.2', 4, '9z9lZ5HGQt', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(50, 'Dr. Jeromy Wehner', 'zboncak.verdie@example.com', '2022-07-21 14:38:46', '$2y$10$Tf8P6//5Hf.IKeyd4QEFX.oDGKxgEyGQ8qA4Mw/vMms6ceDXBJKJO', 4, 'x0XGaShD00', '2022-07-21 14:38:46', '2022-07-21 14:38:46'),
(51, 'Jem', 'mystic@myst.com', NULL, '$2y$10$gmuXDV3jzjFpCNLnlO4tIu6nhhv0G3E6eiyPO04JL1/OLAOV0Y0nm', 2, NULL, '2022-07-21 16:12:00', '2022-07-21 16:12:00'),
(52, 'Mystical', 'mystical@myst.com', NULL, '$2y$10$/5dYiUn7dg93Kl5g3Ef4e.0daZ6EpiZnfCVLiLblH8rRi7sBlT4Ru', 4, NULL, '2022-07-21 18:39:19', '2022-07-21 18:39:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
