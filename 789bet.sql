-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2022 at 11:34 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `789bet`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_bet_forms`
--

CREATE TABLE `lt_bet_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bet_group_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_number_northern` int(11) DEFAULT '0',
  `prize_number_central` int(11) DEFAULT '0',
  `prize_number_south` int(11) DEFAULT '0',
  `prize_number_pay_northern` int(11) DEFAULT '0',
  `prize_number_pay_central` int(11) DEFAULT '0',
  `prize_number_pay_south` int(11) DEFAULT '0',
  `visibility` tinyint(4) DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_bet_groups`
--

CREATE TABLE `lt_bet_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `odds_northern` double DEFAULT '0',
  `odds_central` double DEFAULT '0',
  `odds_south` double DEFAULT '0',
  `description_vi` text COLLATE utf8mb4_unicode_ci,
  `description_en` text COLLATE utf8mb4_unicode_ci,
  `description_classic_vi` text COLLATE utf8mb4_unicode_ci,
  `description_classic_en` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_bet_limit`
--

CREATE TABLE `lt_bet_limit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bet_group_id` int(11) DEFAULT NULL,
  `min` double(8,2) DEFAULT '0.00',
  `max` double(8,2) DEFAULT '0.00',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_history_login_users`
--

CREATE TABLE `lt_history_login_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Web',
  `ip_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_lottery`
--

CREATE TABLE `lt_lottery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `prize_8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prize_special` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_max_per_match`
--

CREATE TABLE `lt_max_per_match` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `bet_form_id` int(11) DEFAULT NULL,
  `max` double(8,2) DEFAULT '0.00',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_messages`
--

CREATE TABLE `lt_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `type_chat` tinyint(4) NOT NULL DEFAULT '0',
  `history_content` text COLLATE utf8mb4_unicode_ci,
  `upload_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` tinyint(4) NOT NULL DEFAULT '0',
  `check_delete` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_package`
--

CREATE TABLE `lt_package` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `bet_group_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comm` double(8,2) DEFAULT '0.00',
  `odds` double(8,2) DEFAULT '0.00',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_package_points`
--

CREATE TABLE `lt_package_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `point` int(11) DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_place_bet`
--

CREATE TABLE `lt_place_bet` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lottery_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bet_form_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(12,2) DEFAULT '0.00',
  `price_number` double(12,2) DEFAULT '0.00',
  `comm` double(8,2) DEFAULT '0.00',
  `odds` double(8,2) DEFAULT '0.00',
  `prize_number_pay` int(11) DEFAULT '0',
  `commission` double(12,2) DEFAULT '0.00',
  `total_price` double(12,2) DEFAULT '0.00',
  `total_price_pay` double(12,2) DEFAULT '0.00',
  `winnings` double(12,2) DEFAULT '0.00',
  `number_winning` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_winning_time` int(11) DEFAULT '0',
  `date` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0-Cancel | 1-New | 2-Pending | 3-Agree | 4-Win| 5-Loss'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_popups`
--

CREATE TABLE `lt_popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_popup_details`
--

CREATE TABLE `lt_popup_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `popup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_active` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_provinces`
--

CREATE TABLE `lt_provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acronym` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_regions`
--

CREATE TABLE `lt_regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_settings`
--

CREATE TABLE `lt_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_translations`
--

CREATE TABLE `lt_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vietnam` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `english` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_users_provinces_not`
--

CREATE TABLE `lt_users_provinces_not` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lt_user_settings`
--

CREATE TABLE `lt_user_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `daily` tinyint(4) NOT NULL DEFAULT '0',
  `mon` tinyint(4) NOT NULL DEFAULT '0',
  `tue` tinyint(4) NOT NULL DEFAULT '0',
  `wed` tinyint(4) NOT NULL DEFAULT '0',
  `thu` tinyint(4) NOT NULL DEFAULT '0',
  `fri` tinyint(4) NOT NULL DEFAULT '0',
  `sat` tinyint(4) NOT NULL DEFAULT '0',
  `sun` tinyint(4) NOT NULL DEFAULT '0',
  `is_auto_transfer` tinyint(4) NOT NULL DEFAULT '0',
  `bet_method_1` tinyint(4) NOT NULL DEFAULT '0',
  `bet_method_2` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_22_075153_create_permission_tables', 1),
(5, '2021_02_04_090543_create_lt_popups_table', 1),
(6, '2021_02_04_091313_create_lt_popup_details_table', 1),
(7, '2021_02_04_145954_create_lt_messages_table', 1),
(8, '2021_03_30_033742_create_lt_bet_form_table', 1),
(9, '2021_03_30_040925_create_lt_regions_table', 1),
(10, '2021_03_30_063720_create_lt_provinces_table', 1),
(11, '2021_03_30_073226_create_table_lt_settings_table', 1),
(12, '2021_03_30_075726_create_lt_bet_groups_table', 1),
(13, '2021_03_30_080731_create_table_lt_translations_table', 1),
(14, '2021_03_30_080743_create_lt_users_provinces_table', 1),
(15, '2021_03_30_081300_create_lt_bet_limit_table', 1),
(16, '2021_03_30_081913_create_lt_package_table', 1),
(17, '2021_03_30_142740_add_column_lt_bet_forms_table', 1),
(18, '2021_03_31_044338_add_colmn_lt_users_provinces_not_table', 1),
(19, '2021_03_31_070028_add_parent_id_to_users_table', 1),
(20, '2021_04_01_014754_create_lt_lottery_table', 1),
(21, '2021_04_01_025502_add_is_online_to_users_table', 1),
(22, '2021_04_01_025715_add_avatar_to_users_table', 1),
(23, '2021_04_02_035017_create_lt_max_per_match_table', 1),
(24, '2021_04_02_082935_create_lt_place_bet_table', 1),
(25, '2021_04_03_034933_add_column_lt_bet_group_table', 1),
(26, '2021_04_09_094032_create_lt_package_points_table', 1),
(27, '2021_04_09_101747_create_table_lt_history_login_users_table', 1),
(28, '2021_04_11_151207_create_table_lt_user_settings_table', 1),
(29, '2021_04_13_145454_add_description_to_lt_bet_groups_table', 1),
(30, '2021_04_19_110920_add_description_classic_to_lt_bet_groups_table', 1),
(31, '2021_04_26_183433_add_username_to_users_table', 1),
(32, '2021_04_28_075707_add_note_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_name_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_name_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` double(12,2) DEFAULT '0.00',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0-Disabled | 1-Enabled | 2-Pending',
  `type_user` tinyint(4) NOT NULL DEFAULT '2' COMMENT '0-Admin System | 1-Agency | 2-Admin',
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `balance` double(12,2) DEFAULT '0.00',
  `parent_id` int(11) DEFAULT NULL,
  `is_online` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-Offline | 1-Online',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_bet_forms`
--
ALTER TABLE `lt_bet_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_bet_groups`
--
ALTER TABLE `lt_bet_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_bet_limit`
--
ALTER TABLE `lt_bet_limit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_history_login_users`
--
ALTER TABLE `lt_history_login_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_lottery`
--
ALTER TABLE `lt_lottery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_max_per_match`
--
ALTER TABLE `lt_max_per_match`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_messages`
--
ALTER TABLE `lt_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_package`
--
ALTER TABLE `lt_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_package_points`
--
ALTER TABLE `lt_package_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_place_bet`
--
ALTER TABLE `lt_place_bet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_popups`
--
ALTER TABLE `lt_popups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_popup_details`
--
ALTER TABLE `lt_popup_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_provinces`
--
ALTER TABLE `lt_provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_regions`
--
ALTER TABLE `lt_regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_settings`
--
ALTER TABLE `lt_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_translations`
--
ALTER TABLE `lt_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_users_provinces_not`
--
ALTER TABLE `lt_users_provinces_not`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lt_user_settings`
--
ALTER TABLE `lt_user_settings`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_code_unique` (`code`),
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
-- AUTO_INCREMENT for table `lt_bet_forms`
--
ALTER TABLE `lt_bet_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_bet_groups`
--
ALTER TABLE `lt_bet_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_bet_limit`
--
ALTER TABLE `lt_bet_limit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_history_login_users`
--
ALTER TABLE `lt_history_login_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_lottery`
--
ALTER TABLE `lt_lottery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_max_per_match`
--
ALTER TABLE `lt_max_per_match`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_messages`
--
ALTER TABLE `lt_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_package`
--
ALTER TABLE `lt_package`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_package_points`
--
ALTER TABLE `lt_package_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_place_bet`
--
ALTER TABLE `lt_place_bet`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_popups`
--
ALTER TABLE `lt_popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_popup_details`
--
ALTER TABLE `lt_popup_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_provinces`
--
ALTER TABLE `lt_provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_regions`
--
ALTER TABLE `lt_regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_settings`
--
ALTER TABLE `lt_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_translations`
--
ALTER TABLE `lt_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_users_provinces_not`
--
ALTER TABLE `lt_users_provinces_not`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lt_user_settings`
--
ALTER TABLE `lt_user_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
