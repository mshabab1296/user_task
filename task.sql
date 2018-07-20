-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2018 at 08:02 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2018_07_18_105026_create_tasks_table', 1);

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
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Task 1', 'pending', 14, '2018-07-18 10:32:09', '2018-07-18 10:32:09'),
(2, 'Task 2', 'done', 11, '2018-07-19 02:46:31', '2018-07-19 02:46:31'),
(3, 'Task 3', 'pending', 6, '2018-07-19 02:58:09', '2018-07-19 02:58:09'),
(4, 'Task 4', 'done', 5, '2018-07-19 03:08:10', '2018-07-19 03:08:10'),
(5, 'Task 5', 'done', 16, '2018-07-19 10:08:16', '2018-07-19 10:08:16'),
(6, 'Task 6', 'done', 7, '2018-07-19 11:18:49', '2018-07-19 11:18:49'),
(7, 'Task 7', 'done', 8, '2018-07-19 14:14:58', '2018-07-19 14:14:58'),
(8, 'Task 8', 'pending', 22, '2018-07-19 14:36:50', '2018-07-19 14:36:50'),
(9, 'Task 9', 'pending', 9, '2018-07-19 14:46:29', '2018-07-19 14:46:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'Shabab Ali', 'mshabab1296@gmail.com', '9074497768', '2018-07-18 05:54:25', '2018-07-18 05:54:25'),
(2, 'Huzaifa Joseph', 'huzaifajoseph@gmail.com', '7974227305', '2018-07-18 05:59:08', '2018-07-18 05:59:08'),
(3, 'Rahul Kumar', 'rahul@gmail.com', '1234567890', '2018-07-18 06:23:19', '2018-07-18 06:23:19'),
(4, 'Hasan Husain', 'hasan@husain.com', '8767654565', '2018-07-18 06:25:32', '2018-07-18 06:25:32'),
(5, 'Amit Dhamania', 'amit@dhamania.com', '1232434543', '2018-07-18 06:32:41', '2018-07-18 06:32:41'),
(6, 'Anuj Patwa', 'anuj@patwa.com', '1243656787', '2018-07-18 06:53:00', '2018-07-18 06:53:00'),
(7, 'Arman Malik', 'arma@malik.com', '4565234321', '2018-07-18 07:49:53', '2018-07-18 07:49:53'),
(8, 'Ravi Bhushan', 'ravi@bhushan.com', '1234543685', '2018-07-18 07:51:51', '2018-07-18 07:51:51'),
(9, 'Ravish Kumar', 'ravish@ndtv.com', '1232124312', '2018-07-18 07:54:49', '2018-07-18 07:54:49'),
(10, 'Shees Malik', 'shees@malik.com', '1112323434', '2018-07-18 09:27:55', '2018-07-18 09:27:55'),
(11, 'Anas Ashraf', 'anas@ashraf.com', '1122334455', '2018-07-18 09:36:13', '2018-07-18 09:36:13'),
(12, 'Shadab Ali', 'shadab@ali.com', '1199776543', '2018-07-18 09:38:05', '2018-07-18 09:38:05'),
(13, 'Simab Ali', 'simab@ali.com', '2233114455', '2018-07-18 09:38:58', '2018-07-18 09:38:58'),
(14, 'Ahsan Alam', 'ahsan@alam.com', '1029234587', '2018-07-18 09:40:07', '2018-07-18 09:40:07'),
(15, 'Anuj Kumar', 'anuj@kumar.com', '9754323454', '2018-07-18 09:42:13', '2018-07-18 09:42:13'),
(16, 'Shahrukh Khan', 'srk@bollywood.com', '1100110088', '2018-07-18 09:47:13', '2018-07-18 09:47:13'),
(17, 'Arun Kumar', 'arun@kumar.com', '1234987867', '2018-07-18 09:59:24', '2018-07-18 09:59:24'),
(18, 'Shamshad Alam', 'shamshad@alam.com', '9074899877', '2018-07-19 01:02:01', '2018-07-19 01:02:01'),
(19, 'Anjum Shamshad', 'anjum@shams.com', '1324354341', '2018-07-19 01:07:04', '2018-07-19 01:07:04'),
(20, 'Anup Jain', 'anup@jain.com', '1090807809', '2018-07-19 01:09:56', '2018-07-19 01:09:56'),
(21, 'Ankur Thakur', 'ankur@thakur.com', '1010203040', '2018-07-19 10:05:16', '2018-07-19 10:05:16'),
(22, 'Salman Khan', 'salman@bollywood.com', '1030506756', '2018-07-19 10:05:55', '2018-07-19 10:05:55'),
(23, 'Aniket Chaudhry', 'aniket@chaudhry.com', '1043879087', '2018-07-19 10:06:48', '2018-07-19 10:06:48');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
