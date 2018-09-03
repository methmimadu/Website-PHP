-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2017 at 06:18 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `sub` varchar(45) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `mat_name` varchar(45) NOT NULL,
  `mat_price` int(11) DEFAULT NULL,
  `mat_price_1km` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `mat_name`, `mat_price`, `mat_price_1km`, `updated_at`, `created_at`) VALUES
(1, 'Sand cube', 16000, 200, NULL, NULL),
(2, 'Metal cube', 14000, 200, NULL, NULL),
(3, 'Bricks Nos', 18, 200, NULL, NULL),
(4, 'Rubble Cube', 3800, 200, NULL, NULL),
(5, 'Soil Cube', 2000, 200, NULL, NULL),
(11, 'Corry Dust Cube', 5500, 200, '2017-11-14 02:36:31', '2017-11-13 08:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `cust_name` varchar(45) NOT NULL,
  `cust_email` varchar(45) NOT NULL,
  `mat_name` varchar(45) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `distance` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cust_name`, `cust_email`, `mat_name`, `qty`, `price`, `distance`, `total`, `updated_at`, `created_at`) VALUES
(14, 'Sunil Rajapakshe', 'sunil1@gmail.com', 'Sand', 1, 12000, 1, 12200, '2017-11-14 02:31:30', '2017-11-14 02:31:30'),
(18, 'abcd', 'abcd@gmail.com', 'Sand', 1, 12000, 1, 12200, '2017-11-14 03:20:36', '2017-11-14 03:20:36'),
(19, 'abcd', 'abcd@gmail.com', 'Sand', 1, 12000, 1, 12200, '2017-11-14 03:50:02', '2017-11-14 03:50:02'),
(21, 'Nimal', 'nimal@gmail.com', 'Sand', 2, 12000, 50, 48000, '2017-11-14 05:11:40', '2017-11-14 05:11:40'),
(22, 'methmi', 'methmi@gmail.com', 'Sand cube', 6, 12000, 50, 132000, '2017-11-19 04:08:07', '2017-11-19 04:08:07'),
(23, 'methmi', 'methmi@gmail.com', 'Bricks Nos', 8, 10000, 100, 240000, '2017-11-19 04:13:44', '2017-11-19 04:13:44'),
(24, 'methmi', 'methmi@gmail.com', 'Sand cube', 2, 12000, 100, 64000, '2017-11-20 00:14:54', '2017-11-20 00:14:54'),
(25, 'methmi', 'methmi@gmail.com', 'Sand cube', 2, 12000, 100, 64000, '2017-11-20 00:16:39', '2017-11-20 00:16:39'),
(26, 'admin', 'admin@gmail.com', 'Metal cube', 1, 10000, 50, 20000, '2017-11-20 00:23:30', '2017-11-20 00:23:30'),
(27, 'methmi', 'methmi@gmail.com', 'Sand cube', 1, 12000, 1, 0, '2017-12-21 22:50:47', '2017-12-21 22:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `admin`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', 1, 'admin@gmail.com', '$2y$10$FH2ad08N9yQBbGkG3gVLq.49HWkL8n1q.9UI2nOo6ATgREJUKgz9a', '0rOZIAo4fnAlcxA3IAMAPX4GahHm0iM8SEtUFnAolVZ2AlWMJa15NZbsFILJ', '2017-11-13 20:44:44', '2017-11-13 20:44:44'),
(4, 'admin1', 1, 'admin1@gmail.com', '$2y$10$4TMDfB2ZJqdhBQOm.gDIc.xuOu0m4xhSCmikBQMQHF/r3.uCfsnYC', 'BClwEyh3vKUlA3FDMyQ6d4hCnqMzEcG9uA3jb8UaQFrVLbzE9XpYnWP4Yp1h', '2017-11-13 20:45:24', '2017-11-13 20:45:24'),
(5, 'admin2', 1, 'admin2@gmail.com', '$2y$10$Jh.dG0YP2K1dpDlgq70OKuZp1WJyx3jxk9iiDDdXoo20pW/6vbIf2', 'Xbi9AkFK0OX1O620zvGutX65NsC8bLkb8WXwHjh8D2h5AnvVXd2VNsy4v8rN', '2017-11-13 20:46:00', '2017-11-13 20:46:00'),
(6, 'abcd', 0, 'abcd@gmail.com', '$2y$10$wnEibm2UGzV4YolzZXJPp.339OPZf/ZIh.7WAcJbCE/fEJnqogTNC', '30MVTUYS5S0IoYgbGng97uyOsBD0KMzRgA3GyhsIvuYOjn29mFnwXpeO1BcC', '2017-11-14 02:01:17', '2017-11-14 02:01:17'),
(7, 'Sunil Rajapakshe', 0, 'sunil1@gmail.com', '$2y$10$eyc6AbShMg8oZyD1iCvXRek6ASDSOkRJZ.mydfDUKDWG/hFhjjx1q', 'xmbJUYOGNfYyeY5goIFjxhZ0v6i1FJCQ6SjBWNZqpsGmv9CVYie6szDzfHAT', '2017-11-14 02:23:34', '2017-11-14 02:23:34'),
(8, 'Manel', 0, 'manel@gmail.com', '$2y$10$83.ztvbNqlsK8KsoFFz/4O6GihBdm6U551RO7GCuspcPF2SRGdRfe', 'W0jJYwcxTlpAXC2GEeGaX1H5G4NGV3kVPfmoft2r1wkmixxUd5xGD3ZPiZr6', '2017-11-14 04:46:18', '2017-11-14 04:46:18'),
(9, 'Nimal', 0, 'nimal@gmail.com', '$2y$10$1wldF.XcJ1ftNSrSzRemCOKdCLdOsywdkl3NFNpt2F4futCQk6Ksm', 'SHOYTYY6lJBNlrZKqcWgz9RQnBCFqQpUwLSgs5rojxsIRVxVz8JjgyfyWTLA', '2017-11-14 05:06:53', '2017-11-14 05:06:53'),
(11, 'methmi', 0, 'methmi@gmail.com', '$2y$10$c3Qz5SP3F4k5tLtS.oghMeHUDfSB6Bn4rKtiB52MsoNEcnXviLx8C', 'i8odWqs6YRuGmiAV4KgBBLJq6z32J0NTyKJpx2SPsHUcg2FDGLa0AGSMUpJF', '2017-11-19 08:08:29', '2017-11-19 08:08:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
