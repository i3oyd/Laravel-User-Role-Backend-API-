-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 01:57 AM
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_15_072917_create_roles_table', 1);

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
(5, 'App\\Models\\User', 55, 'myapptoken', '340ece1d739836e1323321a6619662d270b7b4ab5f46c5ac62f304b0dbf10801', '[\"*\"]', NULL, '2022-07-15 08:56:09', '2022-07-15 08:56:09'),
(6, 'App\\Models\\User', 55, 'myapptoken', 'c15154671339481a737decad539b7489532b6502f8f3c364b3f84bdfa8ee7533', '[\"*\"]', NULL, '2022-07-15 11:55:27', '2022-07-15 11:55:27'),
(7, 'App\\Models\\User', 9, 'myapptoken', 'c1b5c54a8db52bb165861fc9f58df76d4b6a22d16e893a0dd135eb621517c38e', '[\"*\"]', NULL, '2022-07-15 19:34:54', '2022-07-15 19:34:54'),
(15, 'App\\Models\\User', 13, 'myapptoken', '0728a55d2a148ae635c16e80202c52fdea9f422a4923987f05c32cfdf3a0545a', '[\"*\"]', NULL, '2022-07-15 20:18:03', '2022-07-15 20:18:03'),
(16, 'App\\Models\\User', 15, 'myapptoken', '9dfea1cd65ce0d1064e63dc1b9177bbf6075c09560b4221490e60d889ff1b4cb', '[\"*\"]', NULL, '2022-07-15 20:19:08', '2022-07-15 20:19:08'),
(24, 'App\\Models\\User', 7, 'myapptoken', '43ddcaf67c45e2decc36ff0c4628df8eb93e3b79f6361b6e6923d9e0762e5bbc', '[\"*\"]', NULL, '2022-07-16 12:16:27', '2022-07-16 12:16:27'),
(25, 'App\\Models\\User', 9, 'myapptoken', 'e2f53d219b1c85f8926e8074ad0f0f8170288fea777f9dddecde7a8841d8df41', '[\"*\"]', NULL, '2022-07-16 12:19:16', '2022-07-16 12:19:16'),
(26, 'App\\Models\\User', 9, 'myapptoken', '8a2fc4b9bb8fabc9361ce8593b3c9c53194dbb3b0ae64072297a553ce319e0ec', '[\"*\"]', NULL, '2022-07-16 12:20:56', '2022-07-16 12:20:56'),
(27, 'App\\Models\\User', 4, 'myapptoken', 'a2b35172e47c588893a1d6b2a00a6083c520f361c957674c420117ab3f2e6918', '[\"*\"]', NULL, '2022-07-16 12:24:06', '2022-07-16 12:24:06'),
(28, 'App\\Models\\User', 4, 'myapptoken', '27327f4aaccb7794377309c4503a27d46a1183eb959e1cf3668bf1d5ccd6e8b1', '[\"*\"]', NULL, '2022-07-16 12:25:57', '2022-07-16 12:25:57'),
(29, 'App\\Models\\User', 4, 'myapptoken', '3cf4afe5ce31db12bfd8d946b3dac1214fcbe462ba2688eeed7f8e932be7d6ce', '[\"*\"]', NULL, '2022-07-16 12:29:07', '2022-07-16 12:29:07'),
(30, 'App\\Models\\User', 4, 'myapptoken', '1a244024cb5a0ddc6b5a612c7fae8e32b25ed120201636a3d78286f117f2d263', '[\"*\"]', NULL, '2022-07-16 12:31:31', '2022-07-16 12:31:31'),
(31, 'App\\Models\\User', 4, 'myapptoken', 'edb99eb4acf693bcbd6280550fdc054d4a7d376a208f26fa54aa9722d4641bf5', '[\"*\"]', NULL, '2022-07-16 12:37:01', '2022-07-16 12:37:01'),
(32, 'App\\Models\\User', 4, 'myapptoken', '579641649ebba59e7e2c238f096e8d354175ff4aeecc527035a924ba8b603f31', '[\"*\"]', '2022-07-16 15:57:54', '2022-07-16 12:39:40', '2022-07-16 15:57:54'),
(39, 'App\\Models\\User', 9, 'myapptoken', 'd84fb7f432c847d6845c3df4bb68c57a5428de1443604cb1210a151bda47fae0', '[\"*\"]', '2022-07-17 15:20:28', '2022-07-17 15:20:10', '2022-07-17 15:20:28'),
(77, 'App\\Models\\User', 60, 'myapptoken', '5b7eb5d4bbe50c73cae08ba6129a3d91b1479d6f575e4c72d2f15304f999048b', '[\"*\"]', NULL, '2022-07-18 06:31:32', '2022-07-18 06:31:32'),
(90, 'App\\Models\\User', 1, 'myapptoken', '9ad029c4870b64b4b1b139d072b64e5c81e4975a470080dc784b9ae2f651a101', '[\"*\"]', '2022-07-20 15:48:38', '2022-07-20 13:10:57', '2022-07-20 15:48:38'),
(93, 'App\\Models\\User', 7, 'myapptoken', 'b79ca697c8702d6e757f9a15c3c48f1aba2f1b8c3bbe89b7a104eafb0cc7ee69', '[\"*\"]', '2022-07-20 15:24:22', '2022-07-20 13:58:58', '2022-07-20 15:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'admin', 'can register, create, delete, update, assign role to all users'),
(3, 'manager', 'higher authority than the staff, can create new info aside from what the staff can do but not the same as admin'),
(4, 'staff', 'a regular user that can only edit, update, create his own info');

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
  `role_id` int(11) DEFAULT 2,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'ads@gmail.com', NULL, '$2y$10$HqQ1QdZui1/1UH30b.xSdOg2tNeeimxyGx7PGlsVRaAyBFLUZNYMK', 1, NULL, '2022-07-14 23:45:27', '2022-07-14 23:45:27'),
(2, 'Dr. Amani Black', 'mherman@example.org', '2022-07-15 04:37:44', '12345678', 4, 's1ZkEWaKXO', '2022-07-15 04:37:47', '2022-07-20 13:49:29'),
(5, 'Dr. Karlie Hayes IV', 'marilyne85@example.net', '2022-07-15 04:37:44', '$2y$10$1NAd3.99DEM.skdJ0tpJiubhucm.HXMEaTuwHTgNRZveEQcb5QUYe', 3, 'yRrkJ4Ig5g', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(6, 'Cheyenne Funk', 'alda86@example.com', '2022-07-15 04:37:44', '$2y$10$BOyscIL/zX2aEEeWB5rC0Ocy9cNR3A5J214tGWKdhge6C9bXjsSfa', 4, '1CFi9cR3X0', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(8, 'Shanon Zieme', 'amy52@example.com', '2022-07-15 04:37:44', '$2y$10$YK9T8s7BDCSr9MD8Mbar5uKeIMn4k.w9CEc890M73eC8ZzFrsiUTG', 4, 'nbwq5zWvVD', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(10, 'Jayce Cremin I', 'antwon43@example.net', '2022-07-15 04:37:45', '$2y$10$xWzhHxFc4Z3Ri4y.5/EPAOg.5W8pCpasXk65lFghD.iH10l0yxjBi', 4, 'tSzuMowc3s', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(11, 'Lonny Pagac', 'maritza.hartmann@example.com', '2022-07-15 04:37:45', '$2y$10$FFdGMZQBkOY5Fq9sUP0/veBKIBMI6U68cjxktJ2.yQ4GQmXPVEVNe', 4, 'syj9ttrCPy', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(12, 'Dr. Zachariah Wiza', 'ibergstrom@example.com', '2022-07-15 04:37:45', '$2y$10$uiSOoU/JrYZeRV7/0eKBOef4OhPM.U2BoG2vj0esTQCPyrtVk7FBC', 4, 'nckNwv1gyn', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(13, 'Burley Mills', 'chance77@example.com', '2022-07-15 04:37:45', '$2y$10$7cidLksshDTP2YQWkonwce3oj.HuKNi0Snb2eqhqb4VInDjnmWSmO', 4, '3oTAlNBk2Q', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(14, 'Holly Stehr', 'boehm.dusty@example.net', '2022-07-15 04:37:45', '$2y$10$X87MjTqDemf70edZYLgz3OF5VWXRH6osyeEV6CK.L5.gNKHg/iomS', 4, 'Ra8KIdrb3r', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(15, 'Rod Stoltenberg', 'arjun.jakubowski@example.com', '2022-07-15 04:37:45', '$2y$10$wbnIdsEhjXvf51yRCXRngum.R.vxLd2h/TkdSfNv40gWp2jaLljmy', 4, 'iFb8lkmUPV', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(16, 'Prof. Estrella Swift', 'pkessler@example.org', '2022-07-15 04:37:45', '$2y$10$JhKSfMOC.r.HJBDYlInK7OJtKjcLtIsQTf8AaIw7SXgXrIiS64AxO', 4, 'kRrcpCnM2H', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(17, 'Caitlyn Hegmann', 'dee.waelchi@example.com', '2022-07-15 04:37:45', '$2y$10$uodVMkwzf37by7FTgpANP.8dNIWBhNAp492zNIo0IVKaUKak8lEv.', 4, 'mpXRBVHmLE', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(18, 'Ocie Mayer', 'schmeler.aliyah@example.com', '2022-07-15 04:37:45', '$2y$10$gobfjMnwhwAM49a25oLHM.dy07s26.0k3fTvKmKE568Ck1Ko57xIK', 4, 'fau4Fzj4DK', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(19, 'Jaqueline Price', 'heather.kirlin@example.com', '2022-07-15 04:37:45', '$2y$10$IfYGnJYCTrhxAlDrZ8jEZuHenXoaQNKA2WSP.6rKaAbnqZFTln3Ey', 4, '80vQVQbGrI', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(20, 'Donato Wunsch IV', 'kzieme@example.com', '2022-07-15 04:37:45', '$2y$10$Lu5Ni13Z5ti5/qQVKBqvCesIftmYK9vyN6Tje8ISONnDUhE58aAJm', 4, 'X9JaW3O2f8', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(21, 'Alfonso Nitzsche', 'gcassin@example.net', '2022-07-15 04:37:45', '$2y$10$1xeWkeMqgQwsbHGUKZktE.0LLZbvchvAiTg7tvlUaveCsOgcQCoNq', 4, 'dEApPjAs86', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(22, 'Prof. Robin Gerlach', 'kunze.elfrieda@example.org', '2022-07-15 04:37:45', '$2y$10$8nrwma3fW5gvP7znBGyVBuYOacI1QV1/nSdBnAK1IANdjVjEZaaxm', 4, 'DF8K0PabLN', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(23, 'Prof. Afton Bergstrom', 'eprohaska@example.net', '2022-07-15 04:37:45', '$2y$10$Cp7RUDcK5UzpZ7az7/nI6uE.Apfvny6epAzg.mrMwQe1hX0poASC2', 4, 'I9vT2MdafI', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(24, 'Ole Padberg', 'hilton16@example.com', '2022-07-15 04:37:45', '$2y$10$fHek54Ntc4Ah3VmiwMP5aeXwnBq2vipp91KLsNVApO05Od3sC4aoi', 4, 'HwUgsGB8vL', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(25, 'Hugh Morissette II', 'bergnaum.adolphus@example.net', '2022-07-15 04:37:45', '$2y$10$GAeMT2tPMNZTB7YNSvPUa.ATHfuuJsaSeInaAVVo8/r2U.ER10aYC', 4, '4malsZ082x', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(26, 'Dr. Dorcas Stracke', 'ada40@example.com', '2022-07-15 04:37:45', '$2y$10$J.caDqw1siEWctKGRcnJtedhu/q.w2fNQYO1LF8Tk2MH53U.E3UJy', 4, '30Qu6ZvMV9', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(27, 'Ariel Gleichner', 'bridget44@example.org', '2022-07-15 04:37:45', '$2y$10$M.GfivG.OQbBAN7kwGOEr.Db6TUFWfH2v5R9bokRCXpLVflT6TEYm', 4, 'EpIJbjgO3S', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(28, 'Kaitlyn Parisian', 'koepp.golden@example.com', '2022-07-15 04:37:45', '$2y$10$fpW.RzS/V2Vva.ApFAa5eO2zz7Wok4MPwHUPak3Axy9iWojLhzc22', 4, 'Qk3ALlndvb', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(29, 'Prof. Halie Lockman', 'elian.corwin@example.net', '2022-07-15 04:37:46', '$2y$10$LfoSGxkllKyTRpRPnyi8L..2zTi0fh.B/DsyvLnfF0T4RTxqHcKwS', 4, 'bBTKZ5ghwR', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(30, 'Dr. Deborah Reichel III', 'gunnar28@example.net', '2022-07-15 04:37:46', '$2y$10$54c6rwufxD8vOxznudpwV.H/l1XazHQR9103/ZJyVLsscfjgoIMKq', 4, 'wgD2JoMIw5', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(31, 'Mr. Lyric Runolfsdottir Jr.', 'pking@example.com', '2022-07-15 04:37:46', '$2y$10$n8TDl/VVARLYN3i.MyfsbOGC6b5B9SFVHBl4EXZFLa4CHqojxVDQ.', 4, 'qnMTyrtqsX', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(32, 'Dayne Price', 'abel.wehner@example.com', '2022-07-15 04:37:46', '$2y$10$n2nrFL.6VcZV6cylfEykT.MTyPeeFnCKTMHN4v2ilBdpM3CzZbhve', 4, 'i9chSGImBy', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(33, 'Vanessa Skiles Jr.', 'dickinson.annabel@example.com', '2022-07-15 04:37:46', '$2y$10$GJfO3SWPz61NhxMxaoytA.XZWXP5iemsujBtchcZDcSmab5qX517a', 4, 'zOhoAWxt1t', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(34, 'Frieda Strosin', 'schaefer.aidan@example.net', '2022-07-15 04:37:46', '$2y$10$BsRZuhtBsLRa.38uTetqSuK3JVQVD8qM0TC4771ebdqCGDJyXBygu', 4, 'Zibc3nisHa', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(35, 'Lila Hickle', 'joannie.hermiston@example.org', '2022-07-15 04:37:46', '$2y$10$EnhCg4qCR4TwNhqmlH/zgOouXfAfsXIvYN8BaiphL92fmOt.Mzldm', 4, 'd28fPGft9V', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(36, 'Mandy Cormier', 'davin88@example.org', '2022-07-15 04:37:46', '$2y$10$10r6h3GPP82z4edTTJjbRO6lsk/aT2LqVdFqL0bdvHsHz47M.7EuC', 4, 'JIdk2rBaaE', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(37, 'Ms. Kaya Fritsch', 'eoconner@example.com', '2022-07-15 04:37:46', '$2y$10$gu9SkawJaTN9ZSKEzkbsZ.fx.rkNQ4ij4nlHOZb28HP7ZC1FDN9HW', 4, '7C8hltbNyC', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(38, 'Mrs. Abbey Hahn', 'orlo.feeney@example.net', '2022-07-15 04:37:46', '$2y$10$MuUxpX4btYQquhLYHxiMEeqL5JozPrLLxANDnEkSybRi3sCiyRmim', 4, 'nT47pKgwHm', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(39, 'Augusta Donnelly', 'brandt.kshlerin@example.com', '2022-07-15 04:37:46', '$2y$10$rb0JZX3HQ1tEX34oeEcIX.TVA1afB.sIWUX/D8ow5oNo8Z6xI5KS6', 4, 'Xx8ZWmeNZq', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(40, 'Delphine Schumm Sr.', 'anne11@example.net', '2022-07-15 04:37:46', '$2y$10$/n8upU531XHmylKL0.TrCO2yytQ1BPRBDe6GuL84.QfNnMCpBtO3u', 4, 'YJWtwNzzZm', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(41, 'Mr. Jonatan Weissnat PhD', 'dauer@example.com', '2022-07-15 04:37:46', '$2y$10$4H2YX302aXNH4/WfnPmvJeIT3.6bp2B90h.6ObXekIs6kjXR0Awl6', 4, '2BtM4iC4Nk', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(42, 'Dorcas Wisozk', 'naomi.okuneva@example.org', '2022-07-15 04:37:46', '$2y$10$J3pO3bkbmYCHnS6QfNS8puduWcghEi.8PbTNxRj.nhIoeawYwG2iG', 4, 'j7VdPaeAjR', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(43, 'Neil Braun', 'arlie95@example.com', '2022-07-15 04:37:46', '$2y$10$MX4//Wpf6SHyjlcRhs5OUurTqI/UJa3Cyibf17wnRQh0cmdDwRPqu', 4, 'M7r5f53OCK', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(44, 'Berniece Welch', 'idell.koss@example.org', '2022-07-15 04:37:46', '$2y$10$Ipk4XQMGzQk00JFYtrXuHe9fQRVcAKFShdx8aFp9.jdHMsgVJYYqq', 4, 'ByXnG3sqDm', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(45, 'Dr. Reed Olson', 'bernhard.murl@example.org', '2022-07-15 04:37:46', '$2y$10$ZuPvIYMZQyzWAGrldYciqO1sDhtYWQgoH9H7Tvq.ZCFHSZDh4Pp/K', 4, 'HBXdY4nP8T', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(46, 'Miss Meaghan Schumm', 'xauer@example.net', '2022-07-15 04:37:46', '$2y$10$gIaM.POnqPpF/RXJOEF58Ot5ZiVDgdAzORs1A97mduSJDFBhmXUh2', 4, '87iXPm7kjx', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(47, 'Stefanie Kling', 'orpha.homenick@example.net', '2022-07-15 04:37:46', '$2y$10$VEMwEsLCjPMcRvWmG3EFYub/4A4Cv0qFJ0f5XGn96woGXVRkxGOmu', 4, 'k5CwZFR1Oi', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(48, 'Hortense Crooks', 'brady80@example.com', '2022-07-15 04:37:47', '$2y$10$UC7bplV/mlc7zrQ7FVGfOe/0zHjic2Sw0ceRP6N5yW5g5si5q/M3e', 4, 'DAo9788oFA', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(49, 'Ernie Mante', 'herbert.daniel@example.org', '2022-07-15 04:37:47', '$2y$10$N3DNLCKQK5vulpit4mhkPOzwOwqClxcUu42CLJizX0olTtFE1/bPu', 4, 'eX0IuRowXK', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(50, 'Mr. Royce Ernser', 'cletus.marks@example.com', '2022-07-15 04:37:47', '$2y$10$ESo2r.Two7SiuYvWzsxT2.3hVPxq7RbgZ9/cwZ7FU0HFzcZmrz0Qa', 4, 'WTEDj794Eh', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(51, 'Shannon Gusikowski', 'xgoyette@example.org', '2022-07-15 04:37:47', '$2y$10$EYl6go9aUsXP2gKvXuVKeeWMp2etWN./7RaQMN5H4I3rBMWNjd5sO', 4, 'J0e04jEK66', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(52, 'Miss Selina McDermott', 'goldner.douglas@example.com', '2022-07-15 04:37:47', '$2y$10$zT.Tew7yVkDCetQ6WKTvRu.rfrpvCrax6fidMLMICbhuh87e71e5u', 4, 'PR22hKNSOz', '2022-07-15 04:37:47', '2022-07-15 04:37:47'),
(53, 'admin2', 'admin2@user-role.com', NULL, '$2y$10$cR0pFaMBNp6nHplsmVSdGeMfyUDirkXDROFNC717oOznwnl3AYFoW', 3, NULL, '2022-07-15 05:26:10', '2022-07-15 08:27:46'),
(55, 'Jem', 'ads@hmail.com', NULL, '$2y$10$B7lMzhjdwiTs06Ia3wB4ZujUmC2ms3Dpxo6.mOWppIluSvsKS9dJu', 4, NULL, '2022-07-15 08:56:09', '2022-07-15 08:56:09'),
(56, 'Admin3 Trump', 'trump@gmail.com', NULL, '$2y$10$A4fR6qDn6YXPp7J39hRI7ezqIiAql//17.MSnywmz49Qzg1im7peW', 4, NULL, '2022-07-16 03:59:23', '2022-07-16 03:59:23'),
(57, 'Mystikal', 'mystika@myst.com', NULL, '12345678', 4, NULL, '2022-07-16 14:41:15', '2022-07-20 13:08:41'),
(58, 'Geri', 'geri@Geri.com', NULL, '$2y$10$v6xBXRztDkrdNCG.8F4TXuS.gRhwSLEOEHOjyqrCWFtFr3pUjB2WS', 4, NULL, '2022-07-16 15:53:27', '2022-07-16 15:53:27'),
(59, 'gar', 'gar@gar.com', NULL, '$2y$10$1HzcsD/pRpGl0j7oXWRSbOGKIcmLxaKh4OqnxIrcJa5mdpG8zIyjO', 4, NULL, '2022-07-16 15:56:10', '2022-07-16 15:56:10'),
(60, 'gasd', 'casd@gh.com', NULL, '$2y$10$5mOy1DYyjf2aIcGwYSj.7ePNCMQPSGDUB3O.RII8QA3y16A6o1LYq', 4, NULL, '2022-07-18 06:31:32', '2022-07-18 06:31:32'),
(61, 'adfdf', 'fsdf@gh.com', NULL, '$2y$10$De8bJqc7GBtChI8LfvLfyu5NsTIh...6..2dywhc8ZYaPw0MHITeG', 4, NULL, '2022-07-18 06:32:29', '2022-07-18 06:32:29'),
(62, 'dsfdh', 'dfd@gf..com', NULL, '$2y$10$g07aDDPxWWe/F0dta7tYReTvep2pWOrjgiUFRpP/DatKPIXPQHFa6', 4, NULL, '2022-07-18 06:34:46', '2022-07-18 06:34:46');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
