-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 11:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iawdmyproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_coupons`
--

CREATE TABLE `apply_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `use_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apply_coupons`
--

INSERT INTO `apply_coupons` (`id`, `user_id`, `coupon_id`, `use_date`, `created_at`, `updated_at`) VALUES
(4, 2, 1, '2022-04-10', '2022-04-10 10:02:03', '2022-04-10 10:02:03');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `photo`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cum rerum deserunt o', 'Porro voluptas irure', 'cum-rerum-deserunt-o_1646217260.jpg', 1, NULL, '2022-02-25 16:05:19', '2022-03-02 19:46:06'),
(2, 'Eiusmod culpa autem vtyfctr', 'Blanditiis doloribus Blanditiis doloribus Blanditiis doloribus', 'eiusmod-culpa-autem-vtyfctr_1646217275.jpg', 1, NULL, '2022-02-25 19:46:34', '2022-03-02 17:27:34'),
(5, 'Cupiditate reprehend', 'Autem ad cum eveniet', 'cupiditate-reprehend_1645945158.png', 1, '2022-03-02 10:33:28', '2022-02-27 06:59:18', '2022-03-02 10:33:28'),
(6, 'Et optio quam corru', 'Amet dolores ut min', 'et-optio-quam-corru_1646213769.jpg', 1, '2022-03-02 10:33:32', '2022-03-02 09:36:09', '2022-03-02 10:33:32'),
(7, 'Sapiente et qui quib', 'Minus ad ad ex earum', 'sapiente-et-qui-quib_1646217287.jpg', 2, NULL, '2022-03-02 09:40:35', '2022-03-02 13:49:57'),
(8, 'Eiusmod dolor tempor', 'Consectetur commodo', 'eiusmod-dolor-tempor_1646217305.png', 1, NULL, '2022-03-02 09:42:13', '2022-04-06 07:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `color_id`, `size_id`, `sale_price`, `price`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(1, 7, 5, 3, 2, '295.00', '557.00', 1, '295.00', '2022-04-08 10:05:59', '2022-04-08 10:05:59'),
(2, 9, 6, 4, 2, '39.00', '938.00', 1, '39.00', '2022-04-08 10:13:10', '2022-04-08 10:13:10'),
(10, 2, 7, 1, 1, '599.00', '471.00', 1, '599.00', '2022-04-16 08:47:22', '2022-04-16 08:47:22'),
(11, 2, 6, 4, 2, '39.00', '938.00', 3, '117.00', '2022-04-16 08:48:04', '2022-04-16 08:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `description`, `icon`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'Apple', 'apple', NULL, 'It is a long established fact that a reader will be distractedIt is a long established fact that a reader will be distracted', 'icon icon-Starship', 'apple1646647517.png', 1, NULL, '2022-03-07 10:05:17', '2022-03-07 10:05:17'),
(5, 'iPad', 'ipad', NULL, 'It is a long established fact that a reader will be distractedIt is a long established fact that a reader will be distracted', 'icon icon-Starship', 'ipad1646647620.png', 1, NULL, '2022-03-07 10:07:00', '2022-03-07 10:07:00'),
(6, 'iPhone', 'iphone', 4, 'It is a long established fact that a reader will be distractedIt is a long established fact that a reader will be distracted', 'icon icon-Starship', 'iphone1646647710.png', 1, NULL, '2022-03-07 10:08:30', '2022-03-07 10:08:30'),
(7, 'Men\'s Watches', 'mens-watches', NULL, 'It is a long established fact that a reader will be distracted It is a long established fact that a reader will be distracted', 'icon icon-Starship', 'mens-watches1646647773.png', 1, NULL, '2022-03-07 10:09:33', '2022-03-07 10:09:33'),
(8, 'Watches', 'watches', 7, 'dsgdfxcv fd dsg dg  ht hd x f', NULL, 'watches1646649240.png', 1, NULL, '2022-03-07 10:34:01', '2022-03-07 10:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 3, 7, '2022-03-28 18:30:15', '2022-03-28 18:30:15'),
(2, 3, 4, '2022-03-28 18:30:15', '2022-03-28 18:30:15'),
(3, 4, 5, '2022-03-30 15:13:38', '2022-03-30 15:13:38'),
(4, 4, 4, '2022-03-30 15:13:38', '2022-03-30 15:13:38'),
(5, 5, 7, '2022-03-30 15:19:06', '2022-03-30 15:19:06'),
(6, 5, 5, '2022-03-30 15:19:06', '2022-03-30 15:19:06'),
(7, 5, 4, '2022-03-30 15:19:06', '2022-03-30 15:19:06'),
(8, 6, 7, '2022-03-30 15:28:52', '2022-03-30 15:28:52'),
(9, 6, 6, '2022-03-30 15:28:52', '2022-03-30 15:28:52'),
(10, 6, 4, '2022-03-30 15:28:52', '2022-03-30 15:28:52'),
(11, 7, 6, '2022-04-06 15:13:50', '2022-04-06 15:13:50'),
(12, 7, 5, '2022-04-06 15:13:50', '2022-04-06 15:13:50'),
(13, 7, 4, '2022-04-06 15:13:50', '2022-04-06 15:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Green', 1, '2022-03-26 17:29:39', '2022-03-26 17:29:39'),
(2, 'Red', 1, '2022-03-26 17:29:46', '2022-03-26 17:29:46'),
(3, 'Black', 1, '2022-03-26 17:30:01', '2022-03-26 17:30:01'),
(4, 'Pink', 1, '2022-03-26 19:10:27', '2022-03-26 19:10:27'),
(5, 'Pink', 1, '2022-03-26 19:10:29', '2022-03-26 19:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2022-03-28 18:30:17', '2022-03-28 18:30:17'),
(2, 3, 2, '2022-03-28 18:30:17', '2022-03-28 18:30:17'),
(3, 3, 4, '2022-03-28 18:30:17', '2022-03-28 18:30:17'),
(4, 4, 1, '2022-03-30 15:13:39', '2022-03-30 15:13:39'),
(5, 4, 2, '2022-03-30 15:13:39', '2022-03-30 15:13:39'),
(6, 4, 5, '2022-03-30 15:13:39', '2022-03-30 15:13:39'),
(7, 5, 3, '2022-03-30 15:19:07', '2022-03-30 15:19:07'),
(8, 5, 4, '2022-03-30 15:19:07', '2022-03-30 15:19:07'),
(9, 6, 4, '2022-03-30 15:28:52', '2022-03-30 15:28:52'),
(10, 6, 5, '2022-03-30 15:28:52', '2022-03-30 15:28:52'),
(11, 7, 1, '2022-04-06 15:13:50', '2022-04-06 15:13:50'),
(12, 7, 2, '2022-04-06 15:13:50', '2022-04-06 15:13:50'),
(13, 7, 3, '2022-04-06 15:13:50', '2022-04-06 15:13:50'),
(14, 7, 4, '2022-04-06 15:13:50', '2022-04-06 15:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `color_products`
--

CREATE TABLE `color_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `expairy_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `price`, `expairy_date`, `created_at`, `updated_at`) VALUES
(1, 'Happy50', '50.00', '2022-04-14', '2022-04-08 17:43:16', '2022-04-08 17:43:16'),
(2, 'Ex20', '22.00', '2022-04-08', '2022-04-10 05:41:48', '2022-04-10 05:41:48');

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
(5, '2022_02_23_230210_create_banners_table', 2),
(6, '2022_03_03_020310_create_categories_table', 3),
(25, '2022_03_20_231625_create_sizes_table', 4),
(26, '2022_03_20_233911_create_colors_table', 4),
(27, '2022_03_21_113708_create_products_table', 4),
(61, '2022_03_21_125134_create_product_galleries_table', 5),
(62, '2022_03_21_125630_create_product_size_table', 5),
(63, '2022_03_21_131522_create_color_product_table', 5),
(64, '2022_03_25_234823_create_category_product_table', 5),
(66, '2022_03_31_004441_create_permission_tables', 6),
(68, '2022_04_07_173243_create_carts_table', 7),
(69, '2022_04_08_211515_create_coupons_table', 8),
(70, '2022_04_09_213158_create_apply_coupons_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 2);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'all products', 'web', '2022-04-08 05:16:34', '2022-04-08 05:16:34'),
(2, 'add products', 'web', '2022-04-08 05:17:16', '2022-04-08 05:17:16'),
(3, 'delete products', 'web', '2022-04-08 05:18:12', '2022-04-08 05:18:12');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `title`, `short_description`, `description`, `additional_info`, `price`, `sale_price`, `quantity`, `photo`, `status`, `deleted_at`, `created_at`, `updated_at`, `slug`) VALUES
(1, 5, 'Janna Parsons', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.', '<p style=\"font-size: 15px; color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</p><p class=\"mb-0\" style=\"font-size: 15px; color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif;\">Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', '<p style=\"font-size: 15px; color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</p><p class=\"mb-0\" style=\"font-size: 15px; color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif;\">Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', '99.00', '131.00', 654, 'janna-parsons1648411487.png', 1, NULL, '2022-03-27 20:04:48', '2022-03-27 20:04:48', 'janna-parsons'),
(2, 5, 'Kessie Mcneil', 'Veritatis consequatu', NULL, NULL, '456.00', '486.00', 797, 'kessie-mcneil1648471913.png', 1, NULL, '2022-03-28 12:51:53', '2022-03-28 12:51:53', 'kessie-mcneil'),
(3, 5, 'CURREN 8109 Watches', 'It is a long established fact that a reader will be distracted eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate', '<p style=\"font-size: 15px; color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.</p><p class=\"mb-0\" style=\"font-size: 15px; color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif;\">Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.</p>', '<p style=\"font-size: 15px; color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif;\">Return into stiff sections the bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked what\'s happened to me he thought It wasn\'t a dream. His room, a proper human room although a little too small</p><div class=\"additional_info_list\" style=\"margin-bottom: 40px; color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif; font-size: 14px;\"><h4 class=\"info_title\" style=\"margin-bottom: 20px; font-size: 18px; color: rgb(37, 37, 37);\">Additional Info</h4><ul class=\"ul_li_block\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><li style=\"display: block; list-style: none; font-size: 15px; padding-left: 20px; position: relative; margin-bottom: 8px;\">No Side Effects</li><li style=\"display: block; list-style: none; font-size: 15px; padding-left: 20px; position: relative;\">Made in USA</li></ul></div><div class=\"additional_info_list\" style=\"color: rgb(5, 40, 64); font-family: &quot;Aktiv grotesk&quot;, sans-serif; font-size: 14px;\"><h4 class=\"info_title\" style=\"margin-bottom: 20px; font-size: 18px; color: rgb(37, 37, 37);\">Product Features Info</h4><ul class=\"ul_li_block\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><li style=\"display: block; list-style: none; font-size: 15px; padding-left: 20px; position: relative; margin-bottom: 8px;\">Compatible for indoor and outdoor use</li><li style=\"display: block; list-style: none; font-size: 15px; padding-left: 20px; position: relative; margin-bottom: 8px;\">Wide polypropylene shell seat for unrivalled comfort</li><li style=\"display: block; list-style: none; font-size: 15px; padding-left: 20px; position: relative; margin-bottom: 8px;\">Rust-resistant frame</li><li style=\"display: block; list-style: none; font-size: 15px; padding-left: 20px; position: relative; margin-bottom: 8px;\">Durable UV and weather-resistant construction</li><li style=\"display: block; list-style: none; font-size: 15px; padding-left: 20px; position: relative; margin-bottom: 8px;\">Shell seat features water draining recess</li><li style=\"display: block; list-style: none; font-size: 15px; padding-left: 20px; position: relative; margin-bottom: 8px;\">Shell and base are stackable for transport</li><li style=\"display: block; list-style: none; font-size: 15px; padding-left: 20px; position: relative; margin-bottom: 8px;\">Choice of monochrome finishes and colourways</li><li style=\"display: block; list-style: none; font-size: 15px; padding-left: 20px; position: relative;\">Designed by Nagi</li></ul></div>', '777.00', '555.00', 500, 'curren-8109-watches1648492207.png', 1, NULL, '2022-03-28 18:30:11', '2022-03-28 18:30:11', 'curren-8109-watches'),
(4, 5, 'Macbook Pro', 'Apple MacBook Pro13.3″ Laptop with new Touch bar ID', '<p><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">Apple MacBook Pro13.3″ Laptop with new Touch bar ID </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">Apple MacBook Pro13.3″ Laptop with new Touch bar ID </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">Apple MacBook Pro13.3″ Laptop with new Touch bar ID </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">Apple MacBook Pro13.3″ Laptop with new Touch bar ID </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">Apple MacBook Pro13.3″ Laptop with new Touch bar ID </span><br></p>', '<p><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">Apple MacBook Pro13.3″ Laptop with new Touch bar ID </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">Apple MacBook Pro13.3″ Laptop with new Touch bar ID </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">Apple MacBook Pro13.3″ Laptop with new Touch bar ID </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">Apple MacBook Pro13.3″ Laptop with new Touch bar ID </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">Apple MacBook Pro13.3″ Laptop with new Touch bar ID </span><br></p>', '1000.00', '882.00', 100, 'macbook-pro1648653213.png', 1, NULL, '2022-03-30 15:13:38', '2022-03-30 15:13:38', 'macbook-pro'),
(5, 5, 'Abra Keith', 'The ultimate iPad experience all over the world with coll model', '<span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span>', '<span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span>', '557.00', '295.00', 979, 'abra-keith1648653544.png', 1, NULL, '2022-03-30 15:19:05', '2022-03-30 15:19:05', 'abra-keith'),
(6, 5, 'i Pad', 'The ultimate iPad experience all over the world with coll model', '<p><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><br></p>', '<span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span><span style=\"color: rgb(32, 33, 36); font-family: consolas, &quot;lucida console&quot;, &quot;courier new&quot;, monospace; font-size: 12px; white-space: pre-wrap;\">The ultimate iPad experience all over the world with coll model </span>', '938.00', '39.00', 751, 'i-pad1648654131.png', 1, NULL, '2022-03-30 15:28:52', '2022-03-30 15:28:52', 'i-pad'),
(7, 8, 'Apple Watch', 'Apple Watch Series 7 case Pair any band', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla.\r\n\r\nPellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.', 'Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget.\r\n\r\nApple Watch Series 7 case Pair any band\r\nApple Watch Series 7 case Pair any band\r\nApple Watch Series 7 case Pair any band', '471.00', '599.00', 100, 'apple-watch1649258029.png', 1, NULL, '2022-04-06 15:13:50', '2022-04-06 15:13:50', 'apple-watch');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `photo`, `created_at`, `updated_at`) VALUES
(1, 2, 'kessie-mcneil_6241af69cd119.png', '2022-03-28 12:51:54', '2022-03-28 12:51:54'),
(2, 2, 'kessie-mcneil_6241af6a38d36.png', '2022-03-28 12:51:54', '2022-03-28 12:51:54'),
(3, 2, 'kessie-mcneil_6241af6aaa1b3.png', '2022-03-28 12:51:55', '2022-03-28 12:51:55'),
(4, 2, 'kessie-mcneil_6241af6b4815d.png', '2022-03-28 12:51:55', '2022-03-28 12:51:55'),
(5, 3, 'curren-8109-watches_6241feb9d3e3b.png', '2022-03-28 18:30:18', '2022-03-28 18:30:18'),
(6, 3, 'curren-8109-watches_6241feba5face.png', '2022-03-28 18:30:18', '2022-03-28 18:30:18'),
(7, 3, 'curren-8109-watches_6241febae4ca5.png', '2022-03-28 18:30:19', '2022-03-28 18:30:19'),
(8, 3, 'curren-8109-watches_6241febb68ad7.png', '2022-03-28 18:30:19', '2022-03-28 18:30:19'),
(9, 4, 'macbook-pro_624473a3aecc2.png', '2022-03-30 15:13:40', '2022-03-30 15:13:40'),
(10, 4, 'macbook-pro_624473a46e834.png', '2022-03-30 15:13:40', '2022-03-30 15:13:40'),
(11, 4, 'macbook-pro_624473a52e612.png', '2022-03-30 15:13:41', '2022-03-30 15:13:41'),
(12, 5, 'abra-keith_624474eb889a4.png', '2022-03-30 15:19:08', '2022-03-30 15:19:08'),
(13, 5, 'abra-keith_624474ecb3cc4.png', '2022-03-30 15:19:10', '2022-03-30 15:19:10'),
(14, 5, 'abra-keith_624474ee734bb.png', '2022-03-30 15:19:12', '2022-03-30 15:19:12'),
(15, 5, 'abra-keith_624474f02e15a.png', '2022-03-30 15:19:14', '2022-03-30 15:19:14'),
(16, 6, 'i-pad_624477348e3a4.png', '2022-03-30 15:28:52', '2022-03-30 15:28:52'),
(17, 6, 'i-pad_624477350848a.png', '2022-03-30 15:28:53', '2022-03-30 15:28:53'),
(18, 6, 'i-pad_62447735a92fc.png', '2022-03-30 15:28:53', '2022-03-30 15:28:53'),
(19, 7, 'apple-watch_624dae2ed7a51.png', '2022-04-06 15:13:51', '2022-04-06 15:13:51'),
(20, 7, 'apple-watch_624dae2f233da.png', '2022-04-06 15:13:51', '2022-04-06 15:13:51'),
(21, 7, 'apple-watch_624dae2fc0ac8.png', '2022-04-06 15:13:52', '2022-04-06 15:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2022-03-28 18:30:17', '2022-03-28 18:30:17'),
(2, 3, 2, '2022-03-28 18:30:17', '2022-03-28 18:30:17'),
(3, 3, 3, '2022-03-28 18:30:17', '2022-03-28 18:30:17'),
(4, 3, 4, '2022-03-28 18:30:17', '2022-03-28 18:30:17'),
(5, 4, 3, '2022-03-30 15:13:39', '2022-03-30 15:13:39'),
(6, 5, 2, '2022-03-30 15:19:06', '2022-03-30 15:19:06'),
(7, 5, 3, '2022-03-30 15:19:06', '2022-03-30 15:19:06'),
(8, 5, 4, '2022-03-30 15:19:06', '2022-03-30 15:19:06'),
(9, 6, 2, '2022-03-30 15:28:52', '2022-03-30 15:28:52'),
(10, 7, 1, '2022-04-06 15:13:50', '2022-04-06 15:13:50'),
(11, 7, 3, '2022-04-06 15:13:50', '2022-04-06 15:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2022-04-08 05:09:23', '2022-04-08 05:09:23'),
(2, 'Admin', 'web', '2022-04-08 05:10:39', '2022-04-08 05:10:39'),
(3, 'User', 'web', '2022-04-08 05:11:22', '2022-04-08 05:11:22'),
(4, 'Author', 'web', '2022-04-08 05:12:36', '2022-04-08 05:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 2),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'S', 1, '2022-03-26 17:28:42', '2022-03-26 17:28:42'),
(2, 'XXL', 1, '2022-03-26 17:28:54', '2022-03-26 17:28:54'),
(3, 'M', 1, '2022-03-26 17:29:01', '2022-03-26 17:29:01'),
(4, 'XL', 1, '2022-03-26 17:29:12', '2022-03-26 17:29:12');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'saiful islma', 'saiful@mailinator.com', NULL, '$2y$10$TpvJ5oxLBuavFBIRYVI2tOcPKjXCU9vsdGrjl6AlAlZLoptnRwSjS', NULL, '2022-02-20 19:03:23', '2022-02-20 19:03:23'),
(2, 'Quintessa Hoover', 'jywybucozy@mailinator.com', NULL, '$2y$10$BXFxszG.0wK.Vc0Drx47LuuXVefBIeN26Uu6lTurqchDX8c0/2Fle', NULL, '2022-02-20 19:23:36', '2022-02-20 19:23:36'),
(3, 'saiful', 'saifulislamx264@gmail.com', NULL, '$2y$10$BhLfLqN4S2GKjkMZNIVkM.ya3hA3JzyCWgGW2ZJ.A1JSwXxmfB5wG', NULL, '2022-02-21 09:37:29', '2022-02-21 09:37:29'),
(4, 'Reed Romero', 'saifulislam@gmail.com', NULL, '$2y$10$T4qhFokhjf.tMZ7xHFdvoeWnXxyXaQpwC5qJ7XPS4LJ/54HkFK.oi', NULL, '2022-02-21 14:32:36', '2022-02-21 14:32:36'),
(5, 'saiful', 'saiful@gmail.com', NULL, '$2y$10$03ra9iQkJsxRqu/eEGjes.mVRGayhKZoovPEyEjETylNt.UQ0Jt2C', NULL, '2022-02-21 15:41:44', '2022-02-21 15:41:44'),
(6, 'Nolan Melendez', 'duxodakeso@mailinator.com', NULL, '$2y$10$HM4N.n7yRNOsyZRQJEMp/e7KixHEwP5GNwfPOqU9zIhXGFtDnDHD6', NULL, '2022-04-01 14:45:36', '2022-04-01 14:45:36'),
(7, 'Russell Harding', 'kybyr@mailinator.com', NULL, '$2y$10$b4Yy9gh..9EypnlbD8DnWOlJ0TallqZsfuWIYiLFOKDhGBVOVEpPq', NULL, '2022-04-01 14:46:40', '2022-04-01 14:46:40'),
(8, 'Christine Dunn', 'super@super.com', NULL, '$2y$10$NJkrvgK6kq9H1KoxjcMrVewgdPtvRNl0Ujm0rh2z92x6brBX8RAoy', NULL, '2022-04-01 14:48:44', '2022-04-01 14:48:44'),
(9, 'Callum Holder', 'cagig@user.com', NULL, '$2y$10$FyRwTKSuyBMexyUrB3tbs.19I1LwKCRRGjEXtoMsQTklqu.V39iUu', NULL, '2022-04-03 17:48:43', '2022-04-03 17:48:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_coupons`
--
ALTER TABLE `apply_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apply_coupons_user_id_foreign` (`user_id`),
  ADD KEY `apply_coupons_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_color_id_foreign` (`color_id`),
  ADD KEY `carts_size_id_foreign` (`size_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_product_product_id_foreign` (`product_id`),
  ADD KEY `color_product_color_id_foreign` (`color_id`);

--
-- Indexes for table `color_products`
--
ALTER TABLE `color_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_products_product_id_foreign` (`product_id`),
  ADD KEY `color_products_color_id_foreign` (`color_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_galleries_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_product_id_foreign` (`product_id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_sizes_product_id_foreign` (`product_id`),
  ADD KEY `product_sizes_size_id_foreign` (`size_id`);

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
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
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
-- AUTO_INCREMENT for table `apply_coupons`
--
ALTER TABLE `apply_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `color_products`
--
ALTER TABLE `color_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply_coupons`
--
ALTER TABLE `apply_coupons`
  ADD CONSTRAINT `apply_coupons_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apply_coupons_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `color_products`
--
ALTER TABLE `color_products`
  ADD CONSTRAINT `color_products_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `color_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD CONSTRAINT `product_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_size_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Constraints for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_sizes_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

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
