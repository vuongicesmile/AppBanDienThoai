-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 02:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Điện thoại', 0, 'dien-thoai', '2021-11-27 22:56:30', '2021-11-27 22:56:30', NULL),
(2, 'Tai nghe', 0, 'tai-nghe', '2021-11-27 22:56:36', '2021-11-27 23:09:31', '2021-11-27 23:09:31'),
(3, 'Laptop', 0, 'laptop', '2021-11-27 22:56:42', '2021-11-27 22:56:42', NULL),
(4, 'Đồng hồ', 0, 'dong-ho', '2021-11-27 22:56:50', '2021-11-27 22:56:50', NULL),
(5, 'MacBook', 3, 'macbook', '2021-11-27 23:08:20', '2021-11-27 23:08:20', NULL),
(6, 'Asus', 3, 'asus', '2021-11-27 23:08:30', '2021-11-27 23:08:30', NULL),
(7, 'HP', 3, 'hp', '2021-11-27 23:08:38', '2021-11-27 23:08:38', NULL),
(8, 'Lenovo', 3, 'lenovo', '2021-11-27 23:09:04', '2021-11-27 23:09:04', NULL),
(9, 'Acer', 3, 'acer', '2021-11-27 23:09:12', '2021-11-27 23:09:12', NULL),
(10, 'Iphone', 1, 'iphone', '2021-11-27 23:09:55', '2021-11-27 23:09:55', NULL),
(11, 'SamSung', 1, 'samsung', '2021-11-27 23:10:03', '2021-11-27 23:10:03', NULL),
(12, 'Oppo', 1, 'oppo', '2021-11-27 23:10:12', '2021-11-27 23:10:12', NULL),
(13, 'Vivo', 1, 'vivo', '2021-11-27 23:10:28', '2021-11-27 23:10:28', NULL),
(14, 'Xiao Mi', 1, 'xiao-mi', '2021-11-27 23:10:42', '2021-11-27 23:10:42', NULL),
(15, 'Nokia', 1, 'nokia', '2021-11-27 23:10:56', '2021-11-27 23:10:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `created_at`, `updated_at`) VALUES
(13, 'Nguyễn Khánh Linh', 'linh191az@gmail.com', '$2y$10$kfZUDEC.NmvzrNyfCcQ1iuN4wF/O3MiudAUUjJvKuu53ngdBSah2i', '+84776598805', '2021-11-28 05:45:07', '2021-11-28 05:45:07'),
(14, 'Thành viên mới', 'thanhvienmoi@gmail.com', '$2y$10$f6yjcSGxnLwpKF9m/g94Pe1mWALQIGscZ.LnOyg25qp47Jjn5C48i', '0916702946', '2021-12-09 07:23:02', '2021-12-09 07:23:02'),
(15, 'Nguyen Linh Linh', '1812790@gmail.com', '$2y$10$zMufwl.0DzpvnoKtU8EDN.PGPNpbaRIbNa2N8sIXGM7plk/tI7U76', '+84776598805', '2021-12-14 07:55:40', '2021-12-14 07:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'Menu 1', 0, '2021-11-27 22:58:20', '2021-11-27 22:58:20', 'menu-1', NULL),
(2, 'Menu 1.1', 1, '2021-11-27 22:58:26', '2021-11-27 22:58:26', 'menu-11', NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_03_07_103246_create_categories_table', 1),
(4, '2021_03_09_120247_add_colum_delete_at_table_categories', 1),
(5, '2021_03_09_123722_create_menus_table', 1),
(6, '2021_03_13_065647_add_colum_slug_to_menus_table', 1),
(7, '2021_03_13_080745_add_colum_soft_delete_to_menus', 1),
(8, '2021_03_14_070813_create_products_table', 1),
(9, '2021_03_14_071207_create_product_images_table', 1),
(10, '2021_03_14_071422_create_tags_table', 1),
(11, '2021_03_14_071514_create_product_tags_table', 1),
(12, '2021_03_16_081922_add_colum_feature_image_name', 1),
(13, '2021_04_07_114927_add_colum_images_name_to_table_product_image', 1),
(14, '2021_04_29_065334_add_colum_delete_at_to_product_table', 1),
(15, '2021_04_30_030755_create_sliders_table', 1),
(16, '2021_04_30_052753_add_colum_deleted_at_to_sliders', 1),
(17, '2021_04_30_054543_create_settings_table', 1),
(18, '2021_04_30_083350_add_colum_type_setting_talbe', 1),
(19, '2021_04_30_125947_create_roles_table', 1),
(20, '2021_04_30_130043_create_permissions_table', 1),
(21, '2021_04_30_130338_create_table_user_role', 1),
(22, '2021_04_30_130422_create_table_permission_role', 1),
(23, '2021_05_01_070843_add_colum_delete_at_talbe_users', 1),
(24, '2021_05_01_082733_add_colum_parent_id_table_permission', 1),
(25, '2021_05_01_101233_add_colum_key_permission_table', 1),
(26, '2021_05_02_094437_all_colum_soft_delete_role_table', 1),
(27, '2021_10_06_045648_add_colum_views_count_to_products_table', 1),
(28, '2021_10_06_045828_add_colum_soft_delete_to_setting_table', 1),
(29, '2021_11_28_075956_create_customers_table', 2),
(31, '2021_11_28_114208_create_shippings_table', 3),
(32, '2021_12_03_051518_create_payments_table', 4),
(33, '2021_12_03_051534_create_orders_table', 4),
(34, '2021_12_03_051606_create_order_details_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(1, 'Danh mục sản phẩm', 'Danh mục sản phẩm', NULL, NULL, 0, ''),
(2, 'Thêm danh mục', 'Thêm danh mục', NULL, NULL, 1, 'category-add'),
(3, 'Sửa danh mục', 'Sửa danh mục', NULL, NULL, 1, 'category-edit'),
(4, 'Xoá danh mục', 'Sửa danh mục', NULL, NULL, 1, 'category-delete'),
(5, 'Danh sách danh mục', 'Danh sách danh mục', NULL, NULL, 1, 'category-list'),
(6, 'Menu', 'Menu', NULL, NULL, 0, ''),
(7, 'Danh sách Menu', 'Dách sách Menu', NULL, NULL, 6, 'menu-list'),
(8, 'Thêm Menu', 'Thêm Menu', NULL, NULL, 6, 'menu-add'),
(9, 'Sửa Menu', 'Sửa Menu', NULL, NULL, 6, 'menu-edit'),
(10, 'Xoá Menu', 'Xoá Menu', NULL, NULL, 6, 'menu-delete'),
(11, 'Slider', 'Slider', NULL, NULL, 0, ''),
(12, 'Danh sách Slider', 'Dách sách Slider', NULL, NULL, 11, 'slider-list'),
(13, 'Thêm Slider', 'Thêm Slider', NULL, NULL, 11, 'slider-add'),
(14, 'Sửa Slider', 'Sửa Slider', NULL, NULL, 11, 'slider-edit'),
(15, 'Xoá Slider', 'Xoá Slider', NULL, NULL, 11, 'slider-delete'),
(16, 'Sản phẩm', 'Sản phẩm', NULL, NULL, 0, ''),
(17, 'Danh sách Sản phẩm', 'Danh sách Sản phẩm', NULL, NULL, 16, 'product-list'),
(18, 'Thêm Sản phẩm', 'Thêm Sản phẩm', NULL, NULL, 16, 'product-add'),
(19, 'Sửa Sản phẩm', 'Sửa Sản phẩm', NULL, NULL, 16, 'product-edit'),
(20, 'Xoá Sản phẩm', 'Xoá Sản phẩm', NULL, NULL, 16, 'product-delete'),
(21, 'Settings', 'Settings', NULL, NULL, 0, ''),
(22, 'Danh sách Settings', 'Danh sách Settings', NULL, NULL, 21, 'setting-list'),
(23, 'Thêm Settings', 'Thêm Settings', NULL, NULL, 21, 'setting-add'),
(24, 'Sửa Settings', 'Sửa Settings', NULL, NULL, 21, 'setting-edit'),
(25, 'Xoá Settings', 'Xoá Settings', NULL, NULL, 21, 'setting-delete'),
(26, 'nhân viên', 'nhân viên', NULL, NULL, 0, ''),
(27, 'Danh sách nhân viên', 'Danh sách nhân viên', NULL, NULL, 26, 'list_user'),
(28, 'Thêm nhân viên', 'Thêm nhân viên', NULL, NULL, 26, 'add_user'),
(29, 'Sửa nhân viên', 'Sửa nhân viên', NULL, NULL, 26, 'edit_user'),
(30, 'Xoá nhân viên', 'Xoá nhân viên', NULL, NULL, 26, 'delete_user'),
(31, 'Vai trò', 'Vai trò', NULL, NULL, 0, ''),
(32, 'Danh sách Vai trò', 'Danh sách Vai trò', NULL, NULL, 31, 'role-list'),
(33, 'Thêm Vai trò', 'Thêm Vai trò', NULL, NULL, 31, 'role-add'),
(34, 'Sửa Vai trò', 'Sửa Vai trò', NULL, NULL, 31, 'role-edit'),
(35, 'Xoá Vai trò', 'Xoá Vai trò', NULL, NULL, 31, 'role-delete'),
(47, 'User', 'User', NULL, NULL, 0, ''),
(48, 'Danh sách User', 'Danh sách User', NULL, NULL, 47, 'user-list'),
(49, 'Thêm User', 'Thêm User', NULL, NULL, 47, 'user-add'),
(50, 'Xóa User', 'Xóa User', NULL, NULL, 47, 'user-delete'),
(51, 'Sửa User', 'Sửa User', NULL, NULL, 47, 'user-edit'),
(52, 'Orders', 'Orders', NULL, NULL, 0, ''),
(53, 'Danh sách Orders', 'Danh sách Orders', NULL, NULL, 52, 'order-list'),
(54, 'Xem Orders', 'Xem Orders', NULL, NULL, 52, 'order-view'),
(55, 'Danh sách Permissions', 'Danh sách Permissions', NULL, NULL, 56, 'permission-list'),
(56, 'Permissions', 'Permissions', NULL, NULL, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 5, 2, NULL, NULL),
(2, 5, 3, NULL, NULL),
(3, 5, 4, NULL, NULL),
(4, 5, 5, NULL, NULL),
(5, 5, 7, NULL, NULL),
(6, 5, 8, NULL, NULL),
(7, 6, 2, NULL, NULL),
(8, 6, 3, NULL, NULL),
(9, 6, 4, NULL, NULL),
(10, 6, 5, NULL, NULL),
(11, 6, 7, NULL, NULL),
(12, 6, 8, NULL, NULL),
(17, 1, 5, NULL, NULL),
(22, 1, 12, NULL, NULL),
(23, 1, 13, NULL, NULL),
(24, 1, 14, NULL, NULL),
(25, 1, 15, NULL, NULL),
(28, 1, 19, NULL, NULL),
(30, 1, 22, NULL, NULL),
(31, 1, 23, NULL, NULL),
(32, 1, 24, NULL, NULL),
(33, 1, 25, NULL, NULL),
(34, 1, 27, NULL, NULL),
(35, 1, 28, NULL, NULL),
(36, 1, 29, NULL, NULL),
(37, 1, 30, NULL, NULL),
(38, 1, 32, NULL, NULL),
(39, 1, 33, NULL, NULL),
(40, 1, 34, NULL, NULL),
(41, 1, 35, NULL, NULL),
(42, 1, 42, NULL, NULL),
(43, 1, 43, NULL, NULL),
(44, 1, 44, NULL, NULL),
(45, 1, 45, NULL, NULL),
(46, 2, 2, NULL, NULL),
(47, 2, 5, NULL, NULL),
(48, 2, 7, NULL, NULL),
(49, 2, 8, NULL, NULL),
(50, 2, 9, NULL, NULL),
(51, 2, 10, NULL, NULL),
(52, 2, 12, NULL, NULL),
(53, 2, 13, NULL, NULL),
(54, 2, 14, NULL, NULL),
(55, 2, 15, NULL, NULL),
(59, 1, 17, NULL, NULL),
(60, 1, 7, NULL, NULL),
(61, 1, 18, NULL, NULL),
(62, 1, 20, NULL, NULL),
(65, 1, 8, NULL, NULL),
(68, 1, 2, NULL, NULL),
(71, 1, 3, NULL, NULL),
(72, 1, 4, NULL, NULL),
(73, 1, 9, NULL, NULL),
(74, 1, 10, NULL, NULL),
(75, 3, 2, '2021-11-27 22:41:56', '2021-11-27 22:41:56'),
(76, 3, 3, '2021-11-27 22:41:56', '2021-11-27 22:41:56'),
(77, 3, 4, '2021-11-27 22:41:56', '2021-11-27 22:41:56'),
(78, 3, 5, '2021-11-27 22:41:56', '2021-11-27 22:41:56'),
(79, 3, 7, '2021-11-27 22:41:56', '2021-11-27 22:41:56'),
(80, 3, 8, '2021-11-27 22:41:56', '2021-11-27 22:41:56'),
(81, 3, 9, '2021-11-27 22:41:56', '2021-11-27 22:41:56'),
(82, 3, 10, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(83, 3, 12, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(84, 3, 13, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(85, 3, 14, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(86, 3, 15, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(87, 3, 17, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(88, 3, 18, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(89, 3, 19, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(90, 3, 20, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(91, 3, 22, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(92, 3, 23, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(93, 3, 24, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(94, 3, 25, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(95, 3, 27, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(96, 3, 28, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(97, 3, 29, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(98, 3, 30, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(99, 3, 32, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(100, 3, 33, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(101, 3, 34, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(102, 3, 35, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(103, 3, 42, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(104, 3, 43, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(105, 3, 44, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(106, 3, 45, '2021-11-27 22:41:57', '2021-11-27 22:41:57'),
(107, 1, 48, NULL, NULL),
(108, 1, 49, NULL, NULL),
(109, 1, 50, NULL, NULL),
(110, 1, 51, NULL, NULL),
(111, 1, 53, NULL, NULL),
(112, 1, 54, NULL, NULL),
(113, 1, 55, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `views_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`, `views_count`) VALUES
(1, 'Điện thoại iPhone 12 64GB', '22490000', '/storage/product/1/IZwCRuAvP97cIfeoCOI0.jpg', '<h3>Trong những th&aacute;ng cuối năm 2020,&nbsp;<a title=\"Tham khảo sản phẩm ch&iacute;nh h&atilde;ng của Apple tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/apple\" target=\"_blank\" rel=\"noopener\">Apple</a>&nbsp;đ&atilde; ch&iacute;nh thức giới thiệu đến người d&ugrave;ng cũng như iFan thế hệ iPhone&nbsp;12&nbsp;series&nbsp;mới với h&agrave;ng loạt t&iacute;nh năng bứt ph&aacute;, thiết kế được lột x&aacute;c ho&agrave;n to&agrave;n, hiệu năng đầy mạnh mẽ v&agrave; một trong số đ&oacute; ch&iacute;nh l&agrave;&nbsp;<a title=\"Tham khảo điện thoại iPhone 12 ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd/iphone-12\" target=\"_blank\" rel=\"noopener\">iPhone 12 64GB</a>.</h3>\r\n<h3>Hiệu năng vượt xa mọi giới hạn</h3>\r\n<p>Apple đ&atilde; trang bị con chip mới nhất của h&atilde;ng (t&iacute;nh đến 11/2020) cho iPhone 12 đ&oacute; l&agrave;&nbsp;<a title=\"T&igrave;m hiểu chip A14 Bionic l&agrave; g&igrave;?\" href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\" rel=\"noopener\">A14 Bionic</a>, được sản xuất tr&ecirc;n tiến tr&igrave;nh 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị tr&ecirc;n phi&ecirc;n bản tiền nhiệm&nbsp;<a title=\"Tham khảo điện thoại iPhone 11 ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd/iphone-11\" target=\"_blank\" rel=\"noopener\">iPhone 11</a>.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/213031/iphone-12-144220-044259.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Chip A14 Bionic mạnh mẽ | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-144220-044259.jpg\" alt=\"Chip A14 Bionic mạnh mẽ | iPhone 12\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-144220-044259.jpg\" /></a></p>\r\n<p>Xem th&ecirc;m:&nbsp;<a title=\"T&igrave;m hiểu về chip Apple A14 Bionic tr&ecirc;n iPhone 12 v&agrave; iPad Air 2020\" href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\" rel=\"noopener\">T&igrave;m hiểu về chip Apple A14 Bionic tr&ecirc;n iPhone 12 v&agrave; iPad Air 2020</a></p>\r\n<p>Với CPU Apple A14 Bionic, bạn c&oacute; thể dễ d&agrave;ng trải nghiệm mọi tựa game với những pha chuyển cảnh mượt m&agrave; hay h&agrave;ng loạt hiệu ứng đồ họa tuyệt đẹp ở mức đồ họa cao m&agrave; kh&ocirc;ng lo t&igrave;nh trạng giật lag.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/213031/iphone-12-18.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Chiến game si&ecirc;u mượt, đồ họa tuyệt đẹp | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-18.jpg\" alt=\"Chiến game si&ecirc;u mượt, đồ họa tuyệt đẹp | iPhone 12\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-18.jpg\" /></a></p>\r\n<p>Chưa hết, Apple c&ograve;n g&acirc;y bất ngờ đến người d&ugrave;ng với hệ thống 5G lần đầu ti&ecirc;n được trang bị tr&ecirc;n những chiếc&nbsp;<a title=\"Tham khảo iPhone kinh doanh tại thegioididong.com\" href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" rel=\"noopener\">iPhone</a>, cho tốc độ truyền tải dữ liệu nhanh hơn, ổn định hơn.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/213031/iphone-12-20.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Kết nối 5G truyền tải dữ liệu nhanh ch&oacute;ng | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-20.jpg\" alt=\"Kết nối 5G truyền tải dữ liệu nhanh ch&oacute;ng | iPhone 12\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-20.jpg\" /></a></p>\r\n<p>iPhone 12 sẽ chạy tr&ecirc;n hệ điều h&agrave;nh&nbsp;<a title=\"T&igrave;m hiểu th&ecirc;m những t&iacute;nh năng tr&ecirc;n iOS 14\" href=\"https://www.thegioididong.com/hoi-dap/ios-14-va-5-tinh-nang-moi-thu-vi-khong-the-bo-qua-tren-1268933\" target=\"_blank\" rel=\"noopener\">iOS 14</a>&nbsp;với nhiều t&iacute;nh năng hấp dẫn như hỗ trợ Widget cũng như những n&acirc;ng cấp tối ưu phần mềm đ&aacute;ng kể mang lại những trải nghiệm th&uacute; vị mới lạ đến người d&ugrave;ng.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/213031/iphone-12-13.jpg\"><img class=\" lazyloaded\" title=\"Kh&aacute;m ph&aacute; những t&iacute;nh năng mới hấp dẫn tr&ecirc;n iOS 14 | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-13.jpg\" alt=\"Kh&aacute;m ph&aacute; những t&iacute;nh năng mới hấp dẫn tr&ecirc;n iOS 14 | iPhone 12\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-13.jpg\" /></a></p>\r\n<h3>Cụm camera kh&ocirc;ng ngừng cải tiến</h3>\r\n<p>iPhone 12 được trang bị hệ thống camera k&eacute;p bao gồm&nbsp;<a title=\"Tham khảo điện thoại c&oacute; camera g&oacute;c rộng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" rel=\"noopener\">camera g&oacute;c rộng</a>&nbsp;v&agrave; camera si&ecirc;u rộng c&oacute; c&ugrave;ng độ ph&acirc;n giải l&agrave; 12 MP, chế độ ban đ&ecirc;m (<a title=\"T&igrave;m hiểu chế độ chụp đ&ecirc;m Night Mode l&agrave; g&igrave;?\" href=\"https://www.thegioididong.com/hoi-dap/che-do-chup-dem-night-mode-la-gi-907873\" target=\"_blank\" rel=\"noopener\">Night Mode</a>) tr&ecirc;n bộ đ&ocirc;i camera n&agrave;y cũng đ&atilde; được n&acirc;ng cấp về phần cứng lẫn thuật to&aacute;n xử l&yacute;, khi chụp những bức ảnh thiếu s&aacute;ng bạn sẽ nhận được kết quả ấn tượng với m&agrave;u sắc, độ chi tiết r&otilde; n&eacute;t đ&aacute;ng kinh ngạc.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/213031/iphone-12-040321-030344.jpg\"><img class=\" lazyloaded\" title=\"Cụm camera sau| iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040321-030344.jpg\" alt=\"Cụm camera sau| iPhone 12\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-040321-030344.jpg\" /></a></p>\r\n<p>Bạn c&oacute; thể kh&aacute;m ph&aacute; th&ecirc;m những t&iacute;nh năng của camera tr&ecirc;n iPhone 12 như chế độ smart HDR 3 gi&uacute;p c&acirc;n bằng yếu tố &aacute;nh s&aacute;ng trong ảnh, l&agrave;m nổi bật chi tiết đối tượng v&agrave; c&acirc;y cối trong khi vẫn giữ được m&agrave;u sắc phong ph&uacute; của bầu trời ngay cả v&agrave;o buổi trưa nắng gắt.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/213031/iphone-12-9.jpg\"><img class=\" lazyloaded\" title=\"Chụp ảnh với t&iacute;nh năng smart HDR 3 sắc n&eacute;t, chất lượng | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-9.jpg\" alt=\"Chụp ảnh với t&iacute;nh năng smart HDR 3 sắc n&eacute;t, chất lượng | iPhone 12\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-9.jpg\" /></a></p>\r\n<p>Chế độ chụp ch&acirc;n dung đ&atilde; tốt nay c&ograve;n tốt hơn trong việc l&agrave;m mờ hậu cảnh một c&aacute;ch nghệ thuật để dồn hết sự tập trung v&agrave;o đối tượng m&agrave; bạn muốn chụp.</p>', 1, 10, '2021-11-27 23:39:33', '2021-11-27 23:39:33', 'vi-vn-iphone-12-1.jpg', NULL, 10),
(2, 'Điện thoại iPhone 13 Pro Max 128GB', '33990000', '/storage/product/1/bdzYk8MjiycGISOu7Tyx.jpg', '<h3><a title=\"Tham khảo gi&aacute; điện thoại iPhone 13 Pro Max ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd/iphone-13-pro-max\" target=\"_blank\" rel=\"noopener\">iPhone 13 Pro Max 128GB</a>&nbsp;- si&ecirc;u phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại smartphone iPhone ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/apple\" target=\"_blank\" rel=\"noopener\">Apple</a>. M&aacute;y c&oacute; thiết kế kh&ocirc;ng mấy đột ph&aacute; khi so với người tiền nhiệm, b&ecirc;n trong đ&acirc;y vẫn l&agrave; một sản phẩm c&oacute; m&agrave;n h&igrave;nh si&ecirc;u đẹp, tần số qu&eacute;t được n&acirc;ng cấp l&ecirc;n 120 Hz mượt m&agrave;, cảm biến camera c&oacute; k&iacute;ch thước lớn hơn, c&ugrave;ng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn s&agrave;ng c&ugrave;ng bạn chinh phục mọi thử th&aacute;ch.</h3>\r\n<h3>Thi&ecirc;́t k&ecirc;́ đẳng cấp h&agrave;ng đầu</h3>\r\n<p>iPhone mới kế thừa thiết kế đặc trưng từ&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại iPhone 12 Pro Max ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd/iphone-12-pro-max\" target=\"_blank\" rel=\"noopener\">iPhone 12 Pro Max</a>&nbsp;khi sở hữu khung viền vu&ocirc;ng vức, mặt lưng k&iacute;nh c&ugrave;ng m&agrave;n h&igrave;nh tai thỏ tr&agrave;n viền nằm ở ph&iacute;a trước.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230529/iphone-13-pro-max-3.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Thiết kế vu&ocirc;ng vức đặc trưng - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-3.jpg\" alt=\"Thiết kế vu&ocirc;ng vức đặc trưng - iPhone 13 Pro Max 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-3.jpg\" /></a></p>\r\n<p>Với iPhone 13 Pro Max phần tai thỏ đ&atilde; được thu gọn lại 20% so với thế hệ trước, kh&ocirc;ng chỉ giải ph&oacute;ng nhiều kh&ocirc;ng gian hiển thị hơn m&agrave; c&ograve;n gi&uacute;p mặt trước chiếc&nbsp;<a title=\"Tham khảo điện thoại kinh doanh tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" rel=\"noopener\">điện thoại</a>&nbsp;trở n&ecirc;n hấp dẫn hơn m&agrave; vẫn đảm bảo được hoạt động của c&aacute;c cảm biến.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230529/iphone-13-pro-max-2.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"M&agrave;n h&igrave;nh tai thỏ được tinh giản - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-2.jpg\" alt=\"M&agrave;n h&igrave;nh tai thỏ được tinh giản - iPhone 13 Pro Max 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-2.jpg\" /></a></p>\r\n<p>Đi&ecirc;̉m thay đ&ocirc;̉i dễ d&agrave;ng nhận biết tr&ecirc;n iPhone 13 Pro Max ch&iacute;nh là k&iacute;ch thước của cảm biến camera sau được l&agrave;m to hơn v&agrave; để tăng độ nhận diện cho sản phẩm mới th&igrave; Apple cũng đ&atilde; bổ sung một t&ugrave;y chọn m&agrave;u sắc&nbsp;Sierra Blue (m&agrave;u xanh dương nhạt hơn so với Pacific Blue của iPhone 12 Pro Max).</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230529/iphone-13-pro-max-9.jpg\"><img class=\" lazyloaded\" title=\"Sierra Blue trẻ trung, thanh lịch - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-9.jpg\" alt=\"Sierra Blue trẻ trung, thanh lịch - iPhone 13 Pro Max 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-9.jpg\" /></a></p>\r\n<p>M&aacute;y vẫn tiếp tục sử dụng khung viền th&eacute;p cao cấp cho khả năng chống trầy xước v&agrave; va đập một c&aacute;ch vượt trội, kết hợp với khả năng&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại smartphone chống nước chống bụi\" href=\"https://www.thegioididong.com/dtdd-chong-nuoc-bui\" target=\"_blank\" rel=\"noopener\">kh&aacute;ng bụi, nước</a>&nbsp;chu&acirc;̉n IP68.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230529/iphone-13-pro-max-4.jpg\"><img class=\" lazyloaded\" title=\"Viền th&eacute;p cao cấp - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-4.jpg\" alt=\"Viền th&eacute;p cao cấp - iPhone 13 Pro Max 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-4.jpg\" /></a></p>\r\n<h3>M&agrave;n h&igrave;nh giải tr&iacute; si&ecirc;u mượt c&ugrave;ng tần số qu&eacute;t 120 Hz</h3>\r\n<p>iPhone 13 Pro Max được trang bị m&agrave;n h&igrave;nh k&iacute;ch thước 6.7 inch c&ugrave;ng độ ph&acirc;n giải 1284 x 2778 Pixels, sử dụng tấm nền OLED c&ugrave;ng c&ocirc;ng nghệ Super Retina XDR cho khả năng tiết kiệm năng lượng vượt trội nhưng vẫn đảm bảo hiển thị sắc n&eacute;t sống động ch&acirc;n thực.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230529/iphone-13-pro-max-5.jpg\"><img class=\" lazyloaded\" title=\"M&agrave;n h&igrave;nh k&iacute;ch thước 6.7 inch - iPhone 13 Pro Max 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-5.jpg\" alt=\"M&agrave;n h&igrave;nh k&iacute;ch thước 6.7 inch - iPhone 13 Pro Max 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-5.jpg\" /></a></p>\r\n<p>iPhone Pro Max năm nay đ&atilde; được n&acirc;ng cấp l&ecirc;n tần số qu&eacute;t 120 Hz, mọi thao t&aacute;c chuyển cảnh khi lướt ng&oacute;n tay tr&ecirc;n m&agrave;n h&igrave;nh trở n&ecirc;n mượt m&agrave; hơn đồng thời hiệu ứng thị gi&aacute;c khi ch&uacute;ng ta chơi game hoặc xem video cũng cực kỳ m&atilde;n nh&atilde;n.</p>', 1, 10, '2021-11-27 23:43:26', '2021-11-27 23:43:26', 'iphone-13-pro-max-n.jpg', NULL, 10),
(3, 'Điện thoại iPhone 13 Pro 128GB', '30990000', '/storage/product/1/FyvWZDjFoIkC6mb1k8h9.jpg', '<h3>Mỗi lần ra mắt phi&ecirc;n bản mới l&agrave; mỗi lần&nbsp;<a title=\"Tham khảo điện thoại iPhone tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" rel=\"noopener\">iPhone</a>&nbsp;chiếm s&oacute;ng tr&ecirc;n khắp c&aacute;c mặt trận v&agrave; lần n&agrave;y c&aacute;i t&ecirc;n khiến v&ocirc; số người \"sục s&ocirc;i\" l&agrave;&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại iPhone 13 Pro ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd/iphone-13-pro\" target=\"_blank\" rel=\"noopener\">iPhone 13 Pro</a>, chiếc&nbsp;<a title=\"Điện thoại th&ocirc;ng minh đang b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" rel=\"noopener\">điện thoại th&ocirc;ng minh</a>&nbsp;vẫn giữ nguy&ecirc;n thiết kế cao cấp, cụm 3 camera được n&acirc;ng cấp, cấu h&igrave;nh mạnh mẽ c&ugrave;ng thời lượng pin lớn ấn tượng.&nbsp;</h3>\r\n<h3>Thiết kế đặc trưng với m&agrave;u sắc thời thượng</h3>\r\n<p>iPhone 13 Pro kh&ocirc;ng c&oacute; nhiều sự thay đổi về thiết kế, khi m&aacute;y vẫn sở hữu kiểu d&aacute;ng tương tự như&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại iPhone 12 Pro ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd/iphone-12-pro\" target=\"_blank\" rel=\"noopener\">iPhone 12 Pro</a>&nbsp;với c&aacute;c cạnh viền vu&ocirc;ng vắn v&agrave; hai mặt k&iacute;nh cường lực cao cấp. Sở hữu 4 phi&ecirc;n bản m&agrave;u gồm xanh dương, bạc, v&agrave;ng đồng v&agrave; x&aacute;m cho bạn t&ugrave;y chọn theo sở th&iacute;ch của m&igrave;nh.&nbsp;</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230521/iphone-13-pro-1.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Sở hữu 4 phi&ecirc;n bản m&agrave;u sắc trẻ trung - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-1.jpg\" alt=\"Sở hữu 4 phi&ecirc;n bản m&agrave;u sắc trẻ trung - iPhone 13 Pro 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-1.jpg\" /></a></p>\r\n<p>M&aacute;y đạt ti&ecirc;u chuẩn&nbsp;<a title=\"Tham khảo điện thoại chống nước bụi tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd-chong-nuoc-bui\" target=\"_blank\" rel=\"noopener\">kh&aacute;ng nước và bụi</a>&nbsp;IP68 c&oacute; khả năng chống lại một số hạt bụi, v&agrave; được bảo vệ khi rơi xuống nước ở độ s&acirc;u đến 6 m&eacute;t trong 30 ph&uacute;t&nbsp;theo chuẩn IEC 60529, thoải m&aacute;i nhắn tin khi lỡ ra ngo&agrave;i gặp mưa, chụp ảnh tự tin khi đi hồ bơi, b&atilde;i biển,...</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230521/iphone-13-pro-2.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Khả năng kh&aacute;ng bụi, nước - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-2.jpg\" alt=\"Khả năng kh&aacute;ng bụi, nước - iPhone 13 Pro 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-2.jpg\" /></a></p>\r\n<h3>N&acirc;ng cấp m&agrave;n h&igrave;nh với tần số qu&eacute;t 120 Hz</h3>\r\n<p>Chiếc iPhone 13 Pro vẫn được trang bị m&agrave;n h&igrave;nh k&iacute;ch thước 6.1 inch, với phần tai thỏ được l&agrave;m nhỏ hơn gi&uacute;p hiển thị th&ecirc;m nhiều th&ocirc;ng tin cũng như tăng cường cảm gi&aacute;c trải nghiệm. Bề mặt c&oacute; lớp phủ oleophobic chống b&aacute;m v&acirc;n tay, giữ cho m&agrave;n h&igrave;nh lu&ocirc;n được sạch mới.&nbsp;</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230521/iphone-13-pro-man-hinh.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Trang bị m&agrave;n h&igrave;nh 6.1 inch - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-man-hinh.jpg\" alt=\"Trang bị m&agrave;n h&igrave;nh 6.1 inch - iPhone 13 Pro 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-man-hinh.jpg\" /></a></p>\r\n<p>iPhone 13 Pro đ&atilde; được n&acirc;ng cấp l&ecirc;n tần số qu&eacute;t 120 Hz, với ProMotion c&oacute; thể l&agrave;m mới từ 10 đến 120 khung h&igrave;nh/gi&acirc;y. Với tần số qu&eacute;t cao, mọi thao t&aacute;c chuyển cảnh khi lướt ng&oacute;n tay tr&ecirc;n m&agrave;n h&igrave;nh trở n&ecirc;n mượt m&agrave; hơn đồng thời hiệu ứng thị gi&aacute;c khi ch&uacute;ng ta d&ugrave;ng&nbsp;<a title=\"Tham khảo c&aacute;c mẫu điện thoại chơi game tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd-choi-game\" target=\"_blank\" rel=\"noopener\">điện thoại chơi game</a>&nbsp;hoặc xem video cũng cực kỳ m&atilde;n nh&atilde;n.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230521/iphone-13-pro-5.jpg\"><img class=\" lazyloaded\" title=\"Chuyển động mượt m&agrave; nhờ tần số 120 Hz - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-5.jpg\" alt=\"Chuyển động mượt m&agrave; nhờ tần số 120 Hz - iPhone 13 Pro 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-5.jpg\" /></a></p>\r\n<p>Tốc độ l&agrave;m tươi tự động tăng l&ecirc;n để hiển thị hiệu suất đồ họa, tự động giảm xuống khi kh&ocirc;ng sử dụng để tiết kiệm năng lượng v&agrave; tốc độ l&agrave;m mới cũng được tự tinh chỉnh linh động để ph&ugrave; hợp hơn tốc độ lướt của ng&oacute;n tay bạn.&nbsp;</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230521/iphone-13-pro-4.jpg\"><img class=\" lazyloaded\" title=\"Tốc độ l&agrave;m tươi được tự động h&oacute;a - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-4.jpg\" alt=\"Tốc độ l&agrave;m tươi được tự động h&oacute;a - iPhone 13 Pro 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-4.jpg\" /></a></p>\r\n<p>Sử dụng tấm nền OLED c&oacute; số điểm ảnh l&ecirc;n đến 1170 x 2532 Pixels, độ s&aacute;ng điển h&igrave;nh 1000 nits, khi hiển thị video HDR 1200 nits, tăng l&ecirc;n 25% khi đặt dưới &aacute;nh mặt trời, sắc đen hiển thị s&acirc;u, sắc s&aacute;ng tươi tắn, khung h&igrave;nh sinh động như thực.&nbsp;</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230521/iphone-13-pro-6.jpg\"><img class=\" lazyloaded\" title=\"Độ s&aacute;ng đạt 1200 nits - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-6.jpg\" alt=\"Độ s&aacute;ng đạt 1200 nits - iPhone 13 Pro 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-6.jpg\" /></a></p>\r\n<h3>Quay chụp đỉnh cao với camera Pro</h3>\r\n<p>iPhone 13 Pro có b&ocirc;̣ camera 3 &ocirc;́ng kính 12 MP x&ecirc;́p xen kẽ thành m&ocirc;̣t cụm vu&ocirc;ng, đặt ở góc tr&ecirc;n b&ecirc;n trái của lưng máy gồm camera tele, camera góc si&ecirc;u r&ocirc;̣ng (Ultra&nbsp;Wide) khẩu độ f/1.8, g&oacute;c nh&igrave;n đến 120 độ v&agrave; camera ch&iacute;nh g&oacute;c rộng (Wide) với khẩu độ f/1.5.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230521/iphone-13-pro-7.jpg\"><img class=\" lazyloaded\" title=\"Bộ ba ống k&iacute;nh chuy&ecirc;n nghiệp - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-7.jpg\" alt=\"Bộ ba ống k&iacute;nh chuy&ecirc;n nghiệp - iPhone 13 Pro 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-7.jpg\" /></a></p>\r\n<p>Camera Ultra Wide được l&agrave;m mới c&oacute; thể lấy n&eacute;t tự động trong khoảng c&aacute;ch 2 cm, gi&uacute;p ph&oacute;ng to h&igrave;nh ảnh của giọt sương, l&ocirc;ng chim, c&aacute;t v&agrave;ng,... tạo n&ecirc;n những tuyệt t&aacute;c nghệ thuật chỉ bằng một thao t&aacute;c chụp đơn giản. Camera n&agrave;y cũng cho khả năng quay cảnh chuyển động tua nhanh thời gian hoặc chuyển động chậm linh hoạt để bạn l&agrave;m video giải tr&iacute; cực đẹp.&nbsp;</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230521/iphone-13-pro-8.jpg\"><img class=\" lazyloaded\" title=\"Camera Ultra Wide lấy n&eacute;t cực ấn tượng - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-8.jpg\" alt=\"Camera Ultra Wide lấy n&eacute;t cực ấn tượng - iPhone 13 Pro 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-8.jpg\" /></a></p>\r\n<p>Apple gọi iPhone 13 Pro l&agrave; thiết bị được tạo ra cho &aacute;nh s&aacute;ng yếu, bởi hệ thống camera được hỗ trợ chế độ ban đ&ecirc;m Night Mode, trang bị&nbsp;m&aacute;y qu&eacute;t LiDAR (khả dụng cho chế độ chụp ch&acirc;n dung ban đ&ecirc;m), camera Wide n&acirc;ng cao độ s&aacute;ng đến 2.2 lần, camera Ultra Wide tăng 92% độ s&aacute;ng cho ph&eacute;p quay chụp lại c&aacute;c h&igrave;nh ảnh, thước phim ban đ&ecirc;m cực kỳ chi tiết, sắc n&eacute;t.&nbsp;</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/230521/iphone-13-pro-9.jpg\"><img class=\" lazyloaded\" title=\"Chế độ đ&ecirc;m Night Mode - iPhone 13 Pro 128GB\" src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-9.jpg\" alt=\"Chế độ đ&ecirc;m Night Mode - iPhone 13 Pro 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/230521/iphone-13-pro-9.jpg\" /></a></p>\r\n<p>Hệ thống camera zoom quang học 6x, ri&ecirc;ng camera&nbsp;telephoto c&oacute; thể zoom quang 3x rất tuyệt khi chụp ảnh v&agrave; quay video ở xa. Kết hợp nhiều t&ugrave;y chọn hiệu ứng bokeh v&agrave; c&aacute;c hiệu ứng &aacute;nh s&aacute;ng chất lượng để bạn tạo n&ecirc;n những bức ảnh lung linh như nhiếp ảnh gia chuy&ecirc;n nghiệp.&nbsp;</p>', 1, 10, '2021-11-27 23:45:38', '2021-11-27 23:45:38', 'iphone-13-pro-1.jpg', NULL, 20),
(4, 'Điện thoại Samsung Galaxy A52s 5G', '10990000', '/storage/product/1/oyp3culdoN4ezysH3ZVU.jpg', '<h3><a title=\"Tham khảo c&aacute;c d&ograve;ng sản phảm smartphone, tablet Samsung ch&iacute;nh h&atilde;ng\" href=\"https://thegioididong.com/samsung\" target=\"_blank\" rel=\"noopener\">Samsung</a>&nbsp;đ&atilde; ch&iacute;nh thức giới thiệu chiếc điện thoại&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại Samsung Galaxy A52s 5G ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a52s-5g\" target=\"_blank\" rel=\"noopener\">Galaxy A52s 5G</a>&nbsp;đến người d&ugrave;ng, đ&acirc;y&nbsp;phi&ecirc;n bản n&acirc;ng cấp của&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại Samsung Galaxy A52 5GSamsung Galaxy A52 5G ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a52-5g\" target=\"_blank\" rel=\"noopener\">Galaxy A52 5G</a>&nbsp;ra mắt c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u, với ngoại h&igrave;nh kh&ocirc;ng đổi nhưng được n&acirc;ng cấp đ&aacute;ng kể về th&ocirc;ng số cấu h&igrave;nh b&ecirc;n trong.</h3>\r\n<h3>Thiết kế đặc trưng Galaxy A</h3>\r\n<p>Samsung Galaxy A52s tiếp tục sử dụng ng&ocirc;n ngữ thiết kế nguy&ecirc;n khối theo phong c&aacute;ch trẻ trung với c&aacute;c tuỳ chọn m&agrave;u sắc như: Đen, trắng, t&iacute;m v&agrave; xanh mint.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-3.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Điện thoại Samsung Galaxy A52s 5G | Thiết kế thừa hưỡng từ d&ograve;ng flagship cao cấp\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-3.jpg\" alt=\"Điện thoại Samsung Galaxy A52s 5G | Thiết kế thừa hưỡng từ d&ograve;ng flagship cao cấp\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-3.jpg\" /></a></p>\r\n<p>M&aacute;y sử dụng m&agrave;n h&igrave;nh nốt ruồi Super AMOLED k&iacute;ch thước 6.5 inch, độ ph&acirc;n giải Full HD+ c&ugrave;ng thiết kế tr&agrave;n viền gi&uacute;p mở rộng tối đa kh&ocirc;ng gian hiển thị. Từ đ&oacute; người d&ugrave;ng c&oacute; thể thoải m&aacute;i tận hưởng những chương tr&igrave;nh giải tr&iacute; cực kỳ hấp dẫn.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-2.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Điện thoại Samsung Galaxy A52s 5G | M&agrave;n h&igrave;nh giải tr&iacute; sắc n&eacute;t\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-2.jpg\" alt=\"Điện thoại Samsung Galaxy A52s 5G | M&agrave;n h&igrave;nh giải tr&iacute; sắc n&eacute;t\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-2.jpg\" /></a></p>\r\n<p>M&aacute;y hỗ trợ tần số qu&eacute;t 120 Hz c&ugrave;ng tấm nền chất lượng gi&uacute;p mọi trải nghiệm vuốt chạm tr&ecirc;n m&aacute;y được trở n&ecirc;n mượt m&agrave;, gi&uacute;p mọi h&igrave;nh ảnh, thước phim tr&ecirc;n điện thoại đều được hiển thị tươi tắn v&agrave; v&ocirc; c&ugrave;ng sắc n&eacute;t.&nbsp;</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-5.jpg\"><img class=\" lazyloaded\" title=\"Điện thoại Samsung Galaxy A52s 5G | Trải nghiệm sử dụng vượt m&agrave; sắc n&eacute;t\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-5.jpg\" alt=\"Điện thoại Samsung Galaxy A52s 5G | Trải nghiệm sử dụng vượt m&agrave; sắc n&eacute;t\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-5.jpg\" /></a></p>\r\n<p>Samsung A52s 5G được tăng cường bảo mật với&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại smartphone c&oacute; bảo mật cảm biến v&acirc;n tay\" href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\" rel=\"noopener\">cảm biến v&acirc;n tay</a>&nbsp;được thiết kế đặt ngay dưới m&agrave;n h&igrave;nh, gi&uacute;p bạn c&oacute; thể mở kh&oacute;a điện thoại hay đăng nhập dễ d&agrave;ng bằng v&acirc;n tay m&agrave; kh&ocirc;ng cần nhập mật khẩu.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-4.jpg\"><img class=\" lazyloaded\" title=\"Điện thoại Samsung Galaxy A52s 5G | Cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-4.jpg\" alt=\"Điện thoại Samsung Galaxy A52s 5G | Cảm biến v&acirc;n tay trong m&agrave;n h&igrave;nh\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-4.jpg\" /></a></p>\r\n<p>B&ecirc;n cạnh đ&oacute; Galaxy A52s c&ograve;n sở hữu hệ thống &acirc;m thanh v&ograve;m với vị tr&iacute; ph&acirc;n bổ loa v&ocirc; c&ugrave;ng khoa học gi&uacute;p bạn c&oacute; thể thoải m&aacute;i trải nghiệm những tựa game hay l&agrave; tận hưởng những ph&uacute;t gi&acirc;y giải tr&iacute; khi xem phim với chất &acirc;m cực đ&atilde;.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-11.jpg\"><img class=\" lazyloaded\" title=\"Điện thoại Samsung Galaxy A52s 5G | Hệ th&ocirc;ng &acirc;m thanh chất lượng vượt trội\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-11.jpg\" alt=\"Điện thoại Samsung Galaxy A52s 5G | Hệ th&ocirc;ng &acirc;m thanh chất lượng vượt trội\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-11.jpg\" /></a></p>\r\n<p>Ngo&agrave;i ra, Galaxy A52s cũng được chứng nhận IP67 về khả năng&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại smartphone chống nước chống bụi\" href=\"https://www.thegioididong.com/dtdd-chong-nuoc-bui\" target=\"_blank\" rel=\"noopener\">kh&aacute;ng nước, bụi</a>, c&oacute; thể sống s&oacute;t ở độ s&acirc;u 1 m&eacute;t trong 30 ph&uacute;t người d&ugrave;ng c&oacute; thể thoải m&aacute;i trải nghiệm trong mọi điều kiện thời tiết v&agrave; m&ocirc;i trường kh&aacute;c nhau.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g--6.jpg\"><img class=\" lazyloaded\" title=\"Điện thoại Samsung Galaxy A52s 5G | Khả năng kh&aacute;ng nước bụi bẩn chuẩn IP67\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g--6.jpg\" alt=\"Điện thoại Samsung Galaxy A52s 5G | Khả năng kh&aacute;ng nước bụi bẩn chuẩn IP67\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g--6.jpg\" /></a></p>\r\n<h3>N&acirc;ng tầm sức mạnh với chip rồng Snapdragon 778G</h3>\r\n<p>Điểm n&acirc;ng cấp đ&aacute;ng gi&aacute; nhất của chiếc Samsung Galaxy A52s 5G l&agrave; sử dụng một bộ vi xử l&yacute; mới của nh&agrave; Qualcomm mang t&ecirc;n Snapdragon 778G, được sản xuất tr&ecirc;n tiến tr&igrave;nh 6 nm cho hiệu năng mạnh hơn khoảng 25 - 30% so với người tiền nhiệm.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-.jpg\"><img class=\" lazyloaded\" title=\"Điện thoại Samsung Galaxy A52s 5G | N&acirc;ng tầm sức mạnh với Snapdragon 778G\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-.jpg\" alt=\"Điện thoại Samsung Galaxy A52s 5G | N&acirc;ng tầm sức mạnh với Snapdragon 778G\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-.jpg\" /></a></p>\r\n<p>Kết hợp với đ&oacute; l&agrave;&nbsp;<a title=\"Tham khảo điện thoại c&oacute; dung lượng RAM 8 GB đang b&aacute;n tại TGDĐ\" href=\"https://www.thegioididong.com/dtdd-ram-8gb\" target=\"_blank\" rel=\"noopener\">RAM 8 GB</a>&nbsp;gi&uacute;p bạn thực hiện t&aacute;c vụ đa nhiệm được tốt hơn v&agrave; mượt m&agrave; hơn, c&ugrave;ng bộ giao diện OneUI mới nhiều t&iacute;nh năng đem đến người d&ugrave;ng trải nghiệm sử dụng tốt nhất.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/247507/samsung-galaxy-a52s-5g-1-1.jpg\"><img class=\" lazyloaded\" title=\"Điện thoại Samsung Galaxy A52s 5G | Khe sim\" src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-1-1.jpg\" alt=\"Điện thoại Samsung Galaxy A52s 5G | Khe sim\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247507/samsung-galaxy-a52s-5g-1-1.jpg\" /></a></p>\r\n<p>Ngo&agrave;i ra, m&aacute;y cũng được trang bị&nbsp;<a title=\"Tham khảo điện thoại c&oacute; bộ nhớ trong 128 GB đang b&aacute;n tại TGDĐ\" href=\"https://www.thegioididong.com/dtdd-rom-128gb\" target=\"_blank\" rel=\"noopener\">bộ nhớ trong 128 GB</a>&nbsp;kh&aacute;&nbsp;thoải m&aacute;i để bạn lưu giữ những video, h&igrave;nh ảnh m&agrave; kh&ocirc;ng lo bị đầy bộ nhớ.&nbsp;</p>', 1, 11, '2021-11-27 23:49:48', '2021-11-27 23:49:48', 'vi-vn-samsung-galaxy-a52s-5g-slider-tong-quan.jpg', NULL, 0),
(5, 'Điện thoại Samsung Galaxy A12 4GB (2021)', '4290000', '/storage/product/1/weUSv30yco9iDWsQJNHd.jpg', '<h3><a title=\"Tham khảo điện thoại Galaxy A12 2021 tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a12-2021\" target=\"_blank\" rel=\"noopener\">Galaxy A12 2021</a>&nbsp;chiếc&nbsp;<a title=\"Tham khảo điện thoại ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" rel=\"noopener\">điện thoại th&ocirc;ng minh</a>&nbsp;gi&aacute; rẻ đến từ thương hiệu&nbsp;<a title=\"Tham khảo sản phẩm Samsung ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://www.thegioididong.com/samsung\" target=\"_blank\" rel=\"noopener\">Samsung</a>, n&oacute; sở hữu một cấu h&igrave;nh ổn định c&ugrave;ng với vi&ecirc;n pin dung lượng lớn 5000 mAh đ&aacute;p ứng đa dạng nhu cầu sử dụng của người ti&ecirc;u d&ugrave;ng.</h3>\r\n<h3>M&agrave;n h&igrave;nh lớn, mở rộng kh&ocirc;ng gian trải nghiệm</h3>\r\n<p>Điện thoại sở hữu m&agrave;n h&igrave;nh giọt nước k&iacute;ch thước 6.5 inch tr&agrave;n viền mở ra thế giới rộng lớn, hiển thị được nhiều nội dung hơn cho bạn thoải m&aacute;i tận hưởng kh&ocirc;ng gian giải tr&iacute;.&nbsp;</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/251886/samsung-galaxy-a12-2021-1.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Sở hữu m&agrave;n h&igrave;nh 6.5 inch - Samsung Galaxy A12 2021\" src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-1.jpg\" alt=\"Sở hữu m&agrave;n h&igrave;nh 6.5 inch - Samsung Galaxy A12 2021\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-1.jpg\" /></a></p>\r\n<p>Galaxy A12 (2021) sử dụng tấm nền PLS TFT LCD mang đến khả năng t&aacute;i tạo m&agrave;u tốt hơn, cho c&aacute;c nội dung bạn xem đều đạt được m&agrave;u sắc ch&acirc;n thực v&agrave; sống động như thật.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/251886/samsung-galaxy-a12-2021-2.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Trang bị tấm nền PLS TFT LCD - Samsung Galaxy A12 2021\" src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-2.jpg\" alt=\"Trang bị tấm nền PLS TFT LCD - Samsung Galaxy A12 2021\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-2.jpg\" /></a></p>\r\n<p>Được trang bị m&agrave;n h&igrave;nh&nbsp;c&oacute; độ ph&acirc;n giải HD+ mặc d&ugrave; chưa thực sự qu&aacute; xuất sắc nhưng tr&ecirc;n một thiết bị gi&aacute; rẻ th&igrave; đ&atilde; đ&aacute;p ứng tốt nhu cầu xem th&ocirc;ng thường, tỉ lệ khung h&igrave;nh 20:9 tối ưu trải nghiệm của bạn trong mọi ứng dụng xem phổ biến hiện nay.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/251886/samsung-galaxy-a12-2021-3.jpg\"><img class=\" lazyloaded\" title=\"Độ ph&acirc;n giải HD+ | Samsung Galaxy A12 2021\" src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-3.jpg\" alt=\"Độ ph&acirc;n giải HD+ | Samsung Galaxy A12 2021\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-3.jpg\" /></a></p>\r\n<h3>Hiệu năng ổn định, chạy mượt c&aacute;c t&aacute;c vụ</h3>\r\n<p>Galaxy A12 (2021) được trang bị con chip Exynos 850 8 nh&acirc;n cho tốc độ xử l&yacute; l&agrave; 2 GHz. Con chip n&agrave;y được x&acirc;y dựng tr&ecirc;n tiến tr&igrave;nh 8 nm v&agrave; l&otilde;i CPU Cortex-A55 mang lại khả năng xử l&yacute; c&aacute;c t&aacute;c vụ dễ d&agrave;ng, bạn c&oacute; thể giải tr&iacute; bằng c&aacute;ch lướt web, xem phim hoặc chơi game v&ocirc; c&ugrave;ng mượt m&agrave; v&agrave; ổn định. B&ecirc;n cạnh đ&oacute;, n&oacute; c&ograve;n tiết kiệm năng lượng khi vận h&agrave;nh một c&aacute;ch hiệu quả gi&uacute;p k&eacute;o d&agrave;i thời gian sử dụng.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/251886/samsung-galaxy-a12-2021-4.jpg\"><img class=\" lazyloaded\" title=\"Sức mạnh đến từ con chip Exynos 850 - Samsung Galaxy A12 2021\" src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-4.jpg\" alt=\"Sức mạnh đến từ con chip Exynos 850 - Samsung Galaxy A12 2021\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-4.jpg\" /></a></p>\r\n<p>GPU Mali-G52 mang đến sự cải thiện về hiệu suất đồ hoạ cho giao diện hiển thị ở độ ph&acirc;n giải cao, giảm mức ti&ecirc;u thụ điện năng v&agrave; mức nhiệt cho thiết bị.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/251886/samsung-galaxy-a12-2021-5.jpg\"><img class=\" lazyloaded\" title=\"N&acirc;ng cao trải nghiệm đồ họa - Samsung Galaxy A12 2021\" src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-5.jpg\" alt=\"N&acirc;ng cao trải nghiệm đồ họa - Samsung Galaxy A12 2021\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-5.jpg\" /></a></p>\r\n<p>Galaxy A12 (2021) được trang bị RAM 4 GB hỗ trợ chạy đa nhiệm mượt m&agrave;, bạn c&oacute; thể chuyển đổi giữa c&aacute;c ứng dụng một c&aacute;ch ổn định.</p>\r\n<p>Bạn c&oacute; thể thỏa sức lưu trữ h&igrave;nh ảnh, c&aacute;c ứng dụng, nội dung y&ecirc;u th&iacute;ch với&nbsp;<a title=\"Tham khảo điện thoại c&oacute; rom 128 gb tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd-rom-128gb\" target=\"_blank\" rel=\"noopener\" type=\"Tham khảo th&ecirc;m c&aacute;c d&ograve;ng smartphone c&oacute; bộ nhớ trong từ 128GB đến 256GB tại thegioididong.com\">bộ nhớ trong 128 GB</a>&nbsp;v&agrave; hỗ trợ cả thẻ nhớ MicroSD tối đa 1 TB, giờ đ&acirc;y bạn kh&ocirc;ng c&ograve;n phải đau đầu nghĩ xem n&ecirc;n x&oacute;a ứng dụng n&agrave;o kh&ocirc;ng cần thiết nữa.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/251886/samsung-galaxy-a12-2021-6.jpg\"><img class=\" lazyloaded\" title=\"Dung lượng bộ nhớ - Samsung Galaxy A12 2021\" src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-6.jpg\" alt=\"Dung lượng bộ nhớ - Samsung Galaxy A12 2021\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-6.jpg\" /></a></p>\r\n<p>M&aacute;y sẽ được chạy tr&ecirc;n hệ điều h&agrave;nh Android 11, sẵn s&agrave;ng trải nghiệm những đột ph&aacute; tr&ecirc;n giao diện One UI Core mang đến hiệu suất ấn tượng, dễ sử dụng. Dễ d&agrave;ng chuyển đổi tone tối cho thiết bị mang lại cảm gi&aacute;c tự nhi&ecirc;n v&agrave; dễ chịu hơn cho mắt.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/251886/samsung-galaxy-a12-2021-16.jpg\"><img class=\" lazyloaded\" title=\"Giao diện One UI Core - Samsung Galaxy A12 2021\" src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-16.jpg\" alt=\"Giao diện One UI Core - Samsung Galaxy A12 2021\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/251886/samsung-galaxy-a12-2021-16.jpg\" /></a></p>\r\n<h3>Sử dụng cả ng&agrave;y với vi&ecirc;n pin khủng 5000 mAh</h3>\r\n<p>Galaxy A12 (2021) sẽ đ&aacute;p ứng nhu cầu sử dụng l&acirc;u d&agrave;i của bạn nhờ được trang bị vi&ecirc;n pin dung lượng 5000 mAh, thoải m&aacute;i sử dụng smartphone cả ng&agrave;y m&agrave; kh&ocirc;ng lo hết pin, khi ra ngo&agrave;i cũng kh&ocirc;ng cần đem theo củ sạc hoặc pin dự ph&ograve;ng nữa.</p>', 1, 11, '2021-11-27 23:51:42', '2021-11-27 23:51:42', 'vi-vn-samsung-galaxy-a12-2021-slider-tong-quan.jpg', NULL, 0);
INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`, `views_count`) VALUES
(6, 'Điện thoại Samsung Galaxy Z Fold3 5G 512GB', '44990000', '/storage/product/1/7SNMNDTcTnFVLcIyNP0f.jpg', '<h3><a title=\"Tham khảo gi&aacute; điện thoại Samsung Galaxy Z Fold3 5G 512GB ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-fold-3-512gb\" target=\"_blank\" rel=\"noopener\">Galaxy Z Fold3 5G</a>&nbsp;đ&aacute;nh dấu bước tiến mới của&nbsp;<a title=\"Tham khảo sản phẩm Samsung ch&iacute;nh h&atilde;ng tại Thegioididong.com\" href=\"https://thegioididong.com/samsung\" target=\"_blank\" rel=\"noopener\">Samsung</a>&nbsp;trong ph&acirc;n kh&uacute;c&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại smartphone ch&iacute;nh h&atilde;ng\" href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" rel=\"noopener\">điện thoại</a>&nbsp;gập cao cấp khi được cải tiến về độ bền c&ugrave;ng những n&acirc;ng cấp đ&aacute;ng gi&aacute; về cấu h&igrave;nh hiệu năng, hứa hẹn sẽ mang đến trải nghiệm sử dụng đột ph&aacute; cho người d&ugrave;ng.</h3>\r\n<h3>Đột ph&aacute; thiết kế m&agrave;n h&igrave;nh gập</h3>\r\n<p>Đầu ti&ecirc;n, khung viền Galaxy Z Fold3 được ho&agrave;n thiện bằng chất liệu Armor Aluminum cao cấp nhất từ trước đến giờ nhằm tăng cường được độ bền, m&agrave; vẫn đảm bảo được trọng lượng c&acirc;n đối đem tới cảm gi&aacute;c v&ocirc; c&ugrave;ng chắc chắn v&agrave; cao cấp.&nbsp;</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-23.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | Thiết kế khung viền cao cấp\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-23.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | Thiết kế khung viền cao cấp\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-23.jpg\" /></a></p>\r\n<p>Nhờ đ&oacute;, tổng thể m&aacute;y cũng đ&atilde; mỏng nhẹ hơn khi trọng lượng giảm xuống c&ograve;n 271 g, độ d&agrave;y phần bản lề khi gập lại c&ograve;n 16 mm cho cảm gi&aacute;c cầm nắm, sử dụng điện thoại Z Fold3 giờ đ&acirc;y đ&atilde; thoải m&aacute;i v&agrave; dễ chịu hơn rất nhiều.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-2.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | Trọng lượng giảm so với tiền nhiệm\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-2.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | Trọng lượng giảm so với tiền nhiệm\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-2.jpg\" /></a></p>\r\n<p>Khi kh&ocirc;ng d&ugrave;ng c&oacute; thể gấp gọn như một cuốn sổ ghi ch&uacute; nhỏ dễ d&agrave;ng bỏ t&uacute;i mang theo b&ecirc;n m&igrave;nh mọi l&uacute;c mọi nơi.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102514.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | Trạng th&aacute;i khi gập\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102514.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | Trạng th&aacute;i khi gập\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102514.jpg\" /></a></p>\r\n<p>Đồng thời, Samsung c&ograve;n tăng cường&nbsp;khả năng kh&aacute;ng nước tr&ecirc;n Galaxy Fold3 chuẩn IPX8 khả dụng ở độ s&acirc;u 1.5 m&eacute;t tối đa trong 30 ph&uacute;t, người d&ugrave;ng c&oacute; thể an t&acirc;m sử dụng tại hồ bơi, thậm ch&iacute; l&agrave; dưới trời mưa.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-21.jpg\"><img class=\" lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | Khả năng kh&aacute;ng nước chuẩn IPX8\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-21.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | Khả năng kh&aacute;ng nước chuẩn IPX8\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-21.jpg\" /></a></p>\r\n<p>Ngo&agrave;i ra, với&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại smartphone c&oacute; bảo mật cảm biến v&acirc;n tay\" href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\" rel=\"noopener\">cảm biến v&acirc;n tay</a>&nbsp;ở cạnh b&ecirc;n, người d&ugrave;ng c&oacute; thể nhanh ch&oacute;ng mở kh&oacute;a v&agrave; sử dụng chỉ bằng thao t&aacute;c chạm nhẹ.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102533.jpg\"><img class=\" lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | Cảm biến v&acirc;n tay ở cạnh viền\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102533.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | Cảm biến v&acirc;n tay ở cạnh viền\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102533.jpg\" /></a></p>\r\n<p>Hệ thống loa k&eacute;p stereo k&iacute;ch thước lớn ở 2 cạnh tr&ecirc;n dưới t&iacute;ch hợp c&ocirc;ng nghệ Dolby Atmos cho trải nghiệm chơi game, xem phim đ&atilde; tai với &acirc;m lượng lớn, r&otilde; r&agrave;ng v&agrave; sống động.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102545.jpg\"><img class=\" lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | Hệ thống loa k&eacute;p, giải tr&iacute; ấn tượng\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102545.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | Hệ thống loa k&eacute;p, giải tr&iacute; ấn tượng\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102545.jpg\" /></a></p>\r\n<h3>Cụm camera đỉnh cao c&ocirc;ng nghệ</h3>\r\n<p>Kế đ&oacute;, cụm camera tr&ecirc;n Galaxy Z Fold3 bao gồm 3 ống k&iacute;nh: Camera g&oacute;c rộng,&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại smartphone camera chụp h&igrave;nh g&oacute;c rộng\" href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" rel=\"noopener\">camera g&oacute;c si&ecirc;u rộng</a>,&nbsp;<a title=\"Tham khảo điện thoại c&oacute; camera tele kinh doanh tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd-camera-zoom\" target=\"_blank\" rel=\"noopener\">camera tele</a>&nbsp;t&iacute;ch hợp chống rung OIS v&agrave; đều sở hữu độ ph&acirc;n giải 12 MP đặt trong cụm m&ocirc;-đun h&igrave;nh chữ nhật được bo tr&ograve;n 2 đầu tr&ocirc;ng rất thon gọn v&agrave; đầy tinh tế.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102526.jpg\"><img class=\" lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | Cụm camera đỉnh cao c&ocirc;ng nghệ\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102526.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | Cụm camera đỉnh cao c&ocirc;ng nghệ\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102526.jpg\" /></a></p>\r\n<p>Chất lượng h&igrave;nh ảnh theo đ&aacute;nh gi&aacute; nhanh l&agrave; kh&aacute; ổn, m&agrave;u sắc tươi tắn, đặc biệt khả năng xử l&yacute;&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại smartphone camera chụp h&igrave;nh xo&aacute; ph&ocirc;ng\" href=\"https://www.thegioididong.com/dtdd-camera-xoa-phong\" target=\"_blank\" rel=\"noopener\">x&oacute;a ph&ocirc;ng</a>&nbsp;cũng đ&atilde; cải thiện đ&aacute;ng kể, &iacute;t t&igrave;nh trạng bị lem như trước đ&acirc;y.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-3.jpg\"><img class=\" lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | Giao diện camera\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-3.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | Giao diện camera\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-3.jpg\" /></a></p>\r\n<p>Ngo&agrave;i ra, m&aacute;y c&ograve;n sở hữu camera trước ở m&agrave;n h&igrave;nh ngo&agrave;i c&oacute; độ ph&acirc;n giải 10 MP v&agrave; camera trước ở m&agrave;n h&igrave;nh trong sẽ được đặt ẩn dưới m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải 4 MP tất cả đều cho chất lượng ảnh tốt ngo&agrave;i mong đợi.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-15.jpg\"><img class=\" lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | Khả năng chụp ảnh selfie \" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-15.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | Khả năng chụp ảnh selfie \" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-15.jpg\" /></a></p>\r\n<p>Đặc biệt, c&oacute; chế độ Flex Mode khi gập m&agrave;n h&igrave;nh theo nhiều g&oacute;c độ, c&oacute; thể chia ra 2 m&agrave;n h&igrave;nh khi chụp ảnh, cho ph&eacute;p người d&ugrave;ng vừa chụp vừa xem lại c&aacute;c ảnh đ&atilde; chụp, tr&aacute;nh sự tr&ugrave;ng lặp, cũng dễ hơn trong việc tương t&aacute;c với người hay vật mẫu để điều khiển c&aacute;c tư thế tạo d&aacute;ng.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-13.jpg\"><img class=\" lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | Ảnh chụp tr&ecirc;n camera\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-13.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | Ảnh chụp tr&ecirc;n camera\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-13.jpg\" /></a></p>\r\n<h3>N&acirc;ng tầm giải tr&iacute; m&agrave;n h&igrave;nh gập với camera ẩn</h3>\r\n<p>M&agrave;n h&igrave;nh ch&iacute;nh tr&ecirc;n Z Fold3 c&oacute; k&iacute;ch thước 7.6 inches, sử dụng tấm nền Dynamic AMOLED 2X cho độ ph&acirc;n giải 1768 x 2208 Pixels hỗ trợ khả năng hiển thị HDR10+ c&ugrave;ng độ s&aacute;ng cao l&ecirc;n tới 1200 nits cho chất lượng hiển thị sắc n&eacute;t, m&agrave;u sắc sống động ch&acirc;n thực trong mọi điều kiện.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102520.jpg\"><img class=\" lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | N&acirc;ng tầm giải tr&iacute; m&agrave;n h&igrave;nh tr&agrave;n viền với camera ẩn\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102520.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | N&acirc;ng tầm giải tr&iacute; m&agrave;n h&igrave;nh tr&agrave;n viền với camera ẩn\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-060921-102520.jpg\" /></a></p>\r\n<p>Z Fold3 ch&iacute;nh l&agrave; chiếc&nbsp;<a title=\"Tham khảo gi&aacute; điện thoại smartphone Samsung ch&iacute;nh h&atilde;ng\" href=\"https://thegioididong.com/dtdd-samsung\" target=\"_blank\" rel=\"noopener\">điện thoại Samsung</a>&nbsp;đầu ti&ecirc;n sử dụng c&ocirc;ng nghệ camera selfie ẩn dưới m&agrave;n h&igrave;nh gập, đem tới khả năng hiển thị si&ecirc;u tr&agrave;n viền gần như kh&ocirc;ng c&oacute; khiếm khuyết, những t&aacute;c vụ tr&ecirc;n Samsung Galaxy Z Fold3 đều hiển thị một c&aacute;ch trọn vẹn sắc n&eacute;t, từ v&agrave;o mạng x&atilde; hội, lướt web cho đến xem phim, chơi game.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/248284/samsung-galaxy-z-fold3-5g-512gb-25.jpg\"><img class=\" lazyloaded\" title=\"Samsung Galaxy Z Fold3 5G | M&agrave;n h&igrave;nh giải tr&iacute; tr&agrave;n viền\" src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-25.jpg\" alt=\"Samsung Galaxy Z Fold3 5G | M&agrave;n h&igrave;nh giải tr&iacute; tr&agrave;n viền\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/248284/samsung-galaxy-z-fold3-5g-512gb-25.jpg\" /></a></p>\r\n<p>B&ecirc;n cạnh đ&oacute;, m&agrave;n h&igrave;nh ngo&agrave;i tr&ecirc;n Z Fold3 5G c&oacute; k&iacute;ch thước 6.2 inch cũng sử dụng tấm nền Dynamic AMOLED 2X, độ ph&acirc;n giải 832 x 2268 Pixels v&agrave; thiết kế Infinity-O tr&agrave;n viền, được n&acirc;ng cấp l&ecirc;n tần số qu&eacute;t 120 Hz cho khả năng vuốt chạm mượt m&agrave;.</p>', 1, 11, '2021-11-27 23:53:19', '2021-11-27 23:53:19', 'samsung-galaxy-z-fold-3-slider-tong-quan-1020x570.jpg', NULL, 0),
(7, 'Điện thoại Samsung Galaxy S21 Ultra 5G 128GB', '25990000', '/storage/product/1/bN03OrLcDHSHUk32TagN.jpg', '<h3>Sự đẳng cấp được&nbsp;<a title=\"Tham khảo sản phẩm Samsung kinh doanh tại thegioididong.com\" href=\"https://www.thegioididong.com/samsung\" target=\"_blank\" rel=\"noopener\">Samsung</a>&nbsp;gửi gắm th&ocirc;ng qua chiếc&nbsp;<a title=\"Tham khảo điện thoại smartphone ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" rel=\"noopener\">smartphone</a>&nbsp;Galaxy S21 Ultra 5G với h&agrave;ng loạt sự n&acirc;ng cấp v&agrave; cải tiến kh&ocirc;ng chỉ ngoại h&igrave;nh b&ecirc;n ngo&agrave;i m&agrave; c&ograve;n sức mạnh b&ecirc;n trong, hứa hẹn đ&aacute;p ứng trọn vẹn nhu cầu ng&agrave;y c&agrave;ng cao của người d&ugrave;ng.</h3>\r\n<h3>Đột ph&aacute; trong thiết kế thời thượng</h3>\r\n<p>Kh&ocirc;ng chỉ đơn thuần phục vụ giao tiếp v&agrave; giải tr&iacute;,&nbsp;<a title=\"Tham khảo điện thoại Samsung Galaxy S21 Ultra 5G ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s21-ultra\" target=\"_blank\" rel=\"noopener\">Samsung Galaxy S21 Ultra 5G</a>&nbsp;c&ograve;n ch&iacute;nh l&agrave; m&oacute;n phụ kiện thời trang khẳng định vị thế của người sở hữu. Vẻ ngo&agrave;i mảnh mai v&agrave; thon gọn đến bất ngờ chỉ 165.1 x 75.6 x 8.9 mm v&agrave; trọng lượng 228 g d&ugrave; phải &ldquo;v&aacute;c&rdquo; một vi&ecirc;n pin lớn.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-0023.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Thiết kế tinh tế đẳng cấp | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-0023.jpg\" alt=\"Thiết kế tinh tế đẳng cấp | Samsung Galaxy S21 Ultra 5G\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-0023.jpg\" /></a></p>\r\n<p>Mặt lưng của thiết bị được phủ bởi một lớp nh&aacute;m mờ, sang trọng bền bỉ vừa hạn chế b&aacute;m dấu v&acirc;n tay tối đa vừa tạo n&ecirc;n vẻ ngo&agrave;i tinh xảo v&agrave; cuốn h&uacute;t đến bất ngờ.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-001.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Mặt lưng phủ nh&aacute;m mờ tinh xảo | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-001.jpg\" alt=\"Mặt lưng phủ nh&aacute;m mờ tinh xảo | Samsung Galaxy S21 Ultra 5G\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-001.jpg\" /></a></p>\r\n<p>Ngo&agrave;i ra, Galaxy S21 Ultra 5G l&agrave; mẫu flagship S đầu ti&ecirc;n của Samsung hỗ trợ chiếc b&uacute;t S Pen, một c&ocirc;ng cụ vốn đ&atilde; quen thuộc với nhiều người d&ugrave;ng&nbsp;<a title=\"Tham khảo điện thoại d&ograve;ng Samsung Galaxy Note ch&iacute;nh h&atilde;ng tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dtdd-samsung-galaxy-note\" target=\"_blank\" rel=\"noopener\">Galaxy Note</a>. Bằng việc sử dụng c&ocirc;ng nghệ Wacom, chiếc b&uacute;t mang đến cảm gi&aacute;c cầm thoải m&aacute;i hơn v&agrave; thật hơn.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-5g-20.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Hỗ trợ chiếc b&uacute;t S Pen sử dụng c&ocirc;ng nghệ Wacom | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-5g-20.jpg\" alt=\"Hỗ trợ chiếc b&uacute;t S Pen sử dụng c&ocirc;ng nghệ Wacom | Samsung Galaxy S21 Ultra 5G\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-5g-20.jpg\" /></a></p>\r\n<p>M&aacute;y c&oacute; hỗ trợ khả năng kh&aacute;ng nước, kh&aacute;ng bụi theo ti&ecirc;u chuẩn IP68. Nhờ đ&oacute;, n&oacute; c&oacute; thể ng&acirc;m nước ở độ s&acirc;u 1.5 m trong 30 ph&uacute;t.</p>\r\n<h3>Thỏa m&atilde;n thị gi&aacute;c hơn bao giờ hết</h3>\r\n<p>Samsung Galaxy S21 Ultra 5G sở hữu m&agrave;n h&igrave;nh k&iacute;ch thước lớn l&ecirc;n đến 6.8 inch. M&agrave;n h&igrave;nh v&ocirc; cực &ldquo;&iacute;t cong&rdquo; hơn v&agrave; viền bezel mỏng xung quanh, c&ugrave;ng camera selfie đục lỗ Infinity-O kh&aacute; nhỏ gi&uacute;p m&aacute;y đạt tỉ lệ m&agrave;n h&igrave;nh tới 20:9 đ&aacute;ng mơ ước.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-006.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"M&agrave;n h&igrave;nh k&iacute;ch thước lớn l&ecirc;n đến 6.8 inch | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-006.jpg\" alt=\"M&agrave;n h&igrave;nh k&iacute;ch thước lớn l&ecirc;n đến 6.8 inch | Samsung Galaxy S21 Ultra 5G\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-006.jpg\" /></a></p>\r\n<p>Tấm nền Dynamic AMOLED 2X với c&ocirc;ng nghệ hiển thị m&agrave;u sắc rực rỡ, độ s&aacute;ng tối đa l&ecirc;n tới 1500 nits mang đến trải nghiệm giải tr&iacute; sống động đầy cảm x&uacute;c với dung lượng m&agrave;u 100% cho m&agrave;u sắc ch&iacute;nh x&aacute;c v&agrave; ch&acirc;n thật, ngay cả khi sử dụng dưới điều kiện ngo&agrave;i trời.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-5g-6.jpg\"><img class=\" lazyloaded\" title=\"Tấm nền Dynamic AMOLED 2X hiển thị m&agrave;u sắc rực rỡ | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-5g-6.jpg\" alt=\"Tấm nền Dynamic AMOLED 2X hiển thị m&agrave;u sắc rực rỡ | Samsung Galaxy S21 Ultra 5G\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-5g-6.jpg\" /></a></p>\r\n<p>Đặc biệt, m&aacute;y hỗ trợ c&ocirc;ng nghệ HDR10+ v&agrave; tần số qu&eacute;t 120 Hz gi&uacute;p thao t&aacute;c, cuộn mượt m&agrave; c&ugrave;ng khả năng tự điều chỉnh tần số để tiết kiệm pin.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-192421-082411.jpg\"><img class=\" lazyloaded\" title=\"Trang bị k&iacute;nh cường lực Gorilla Glass Victus | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-192421-082411.jpg\" alt=\"Trang bị k&iacute;nh cường lực Gorilla Glass Victus | Samsung Galaxy S21 Ultra 5G\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-192421-082411.jpg\" /></a></p>\r\n<p>Kh&ocirc;ng chỉ được bảo vệ bởi k&iacute;nh cường lực Gorilla Glass Victus, m&agrave;n h&igrave;nh của Samsung Galaxy S21 Ultra 5G cũng đạt chứng nhận bảo vệ mắt (Eye care) từ SGS nhằm ngăn chặn đ&aacute;ng kể t&aacute;c hại của &aacute;nh s&aacute;ng xanh, nổi bật với t&iacute;nh năng Eye Comfort Shield.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-008.jpg\"><img class=\" lazyloaded\" title=\"Cảm biến v&acirc;n tay quang học | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-008.jpg\" alt=\"Cảm biến v&acirc;n tay quang học | Samsung Galaxy S21 Ultra 5G\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-008.jpg\" /></a></p>\r\n<p>Galaxy S21 Ultra 5G trang bị cảm biến v&acirc;n tay ẩn dưới m&agrave;n h&igrave;nh cho tốc độ mở kh&oacute;a nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c ở độ bảo mật cao.&nbsp;</p>\r\n<h3>Sức mạnh kinh khủng từ chip Exynos 2100</h3>\r\n<p>Samsung Galaxy S21 Ultra 5G được t&iacute;ch hợp vi xử l&yacute; Exynos 2100, sản xuất tr&ecirc;n tiến tr&igrave;nh 5 nm bao gồm 8 l&otilde;i c&oacute; tốc độ xung nhịp l&ecirc;n đến 2.9 GHz, tối ưu h&oacute;a hiệu suất năng lượng đồng thời tiết kiệm điện năng hết sức c&oacute; thể.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-190821-100857.jpg\"><img class=\" lazyloaded\" title=\"T&iacute;ch hợp vi xử l&yacute; Exynos 2100 mạnh mẽ | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-190821-100857.jpg\" alt=\"T&iacute;ch hợp vi xử l&yacute; Exynos 2100 mạnh mẽ | Samsung Galaxy S21 Ultra 5G\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-190821-100857.jpg\" /></a></p>\r\n<p>Chipset n&agrave;y cải thiện hiệu suất AI nhanh hơn 2 lần, CPU tăng 20% v&agrave; GPU tăng 35% so với Exynos 990. Ngo&agrave;i ra, m&aacute;y sử dụng&nbsp;<a title=\"Tham khảo điện thoại c&oacute; RAM 12 GB tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd-ram-12gb\" target=\"_blank\" rel=\"noopener\">RAM 12 GB</a>&nbsp;cho bạn đa nhiệm mượt m&agrave; v&agrave;&nbsp;<a title=\"Tham khảo điện thoại c&oacute; bộ nhớ 128 GB tại Thegioididong.com\" href=\"https://www.thegioididong.com/dtdd-rom-128gb\" target=\"_blank\" rel=\"noopener\">bộ nhớ trong 128 GB</a>&nbsp;mang đến kh&ocirc;ng gian lưu trữ rộng lớn&nbsp;.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/42/226316/samsung-galaxy-s21-ultra-005.jpg\"><img class=\" lazyloaded\" title=\"Khay sim | Samsung Galaxy S21 Ultra 5G\" src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-005.jpg\" alt=\"Khay sim | Samsung Galaxy S21 Ultra 5G\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/226316/samsung-galaxy-s21-ultra-005.jpg\" /></a></p>\r\n<p>Với cấu h&igrave;nh n&agrave;y, người d&ugrave;ng ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m mọi t&aacute;c vụ được xử l&yacute; nhanh ch&oacute;ng, thoải m&aacute;i đa nhiệm c&ugrave;ng l&uacute;c nhiều ứng dụng nặng như chơi game, mạng x&atilde; hội m&agrave; kh&ocirc;ng bị giật lag.</p>\r\n<p>Hơn thế nữa, chipset mạnh mẽ n&agrave;y cũng tương th&iacute;ch với cả 5G, WiFi HyperFast v&agrave; Wifi 6E mới nhất, gi&uacute;p bạn lu&ocirc;n kết nối trong thời gian thực, tốc độ tải chỉ trong nh&aacute;y mắt.</p>\r\n<p>&nbsp;</p>', 1, 11, '2021-11-28 00:00:05', '2021-11-28 00:00:05', 'samsung-galaxy-s21-ultra-5G-slider-780x433.jpg', NULL, 0),
(8, 'Laptop Apple MacBook Pro M1 2020 16GB/1TB SSD (Z11C000CJ)', '52990000', '/storage/product/1/og6evxL3fhCRvsmALl9a.jpg', '<h3><a title=\"Laptop Apple Macbook Pro M1 2020 (Z11C000CJ) \" href=\"https://www.thegioididong.com/laptop/apple-macbook-pro-m1-2020-z11c000cj\" target=\"_blank\" rel=\"noopener\">Laptop Apple Macbook Pro M1 2020 (Z11C000CJ)</a>&nbsp;với chip M1 d&agrave;nh ri&ecirc;ng cho MacBook đưa hiệu năng của MacBook Pro 2020 l&ecirc;n một tầm cao mới. M&agrave;n h&igrave;nh Retina si&ecirc;u n&eacute;t, thời lượng pin ấn tượng v&agrave; h&agrave;ng loạt c&aacute;c t&iacute;nh năng hiện đại gi&uacute;p bạn c&oacute; được trải nghiệm l&agrave;m việc chuy&ecirc;n nghiệp nhất.</h3>\r\n<h3>Vi xử l&iacute; M1 mạnh mẽ đột ph&aacute;&nbsp;</h3>\r\n<p>Sức mạnh vượt trội của MacBook Pro đến từ con chip<strong>&nbsp;<a title=\"T&igrave;m hiểu về chip Apple M1: Con chip ARM 5nm đầu ti&ecirc;n d&agrave;nh cho m&aacute;y Mac\" href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-m1-con-chip-arm-5nm-dau-tien-danh-1305955\" target=\"_blank\" rel=\"noopener\">Apple M1</a></strong>,<strong>&nbsp;</strong>bộ vi xử l&yacute; đầu ti&ecirc;n được ch&iacute;nh Apple chế tạo cho d&ograve;ng Mac của m&igrave;nh, được t&iacute;ch hợp tr&iacute; tuệ nh&acirc;n tạo th&ocirc;ng minh, khả năng vận h&agrave;nh mạnh mẽ, thỏa sức s&aacute;ng tạo mọi nội dung, đ&aacute;p ứng tốt mọi nhu cầu của người d&ugrave;ng.</p>\r\n<p>M1 c&ograve;n được t&iacute;ch hợp card đồ họa&nbsp;<strong>8 nh&acirc;n GPU</strong>&nbsp;c&oacute; khả năng xử l&yacute; c&aacute;c t&aacute;c vụ đồ họa như mở c&ugrave;ng l&uacute;c nhiều video với độ ph&acirc;n giải cao, dựng h&igrave;nh 2D, 3D chuy&ecirc;n nghiệp. Bạn c&oacute; thể render video độ ph&acirc;n giải cao tr&ecirc;n Adobe Premiere hay Final Cut trong thời gian nhanh ch&oacute;ng. Apple tự tin khẳng định rằng M1 l&agrave; con chip đồ hoạ mạnh nhất hiện nay.</p>\r\n<p>Bộ nhớ&nbsp;<strong><a title=\"Xem th&ecirc;m một số laptop RAM 16 GB đang được b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop?g=16-gb\" target=\"_blank\" rel=\"noopener\">RAM 16 GB</a></strong>&nbsp;cho tốc độ đa nhiệm nhanh ch&oacute;ng, chuyển đổi mượt m&agrave; giữa nhiều ứng dụng c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng xảy ra hiện tượng giật, lag.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/44/236131/apple-macbook-pro-m1-2020-z11c000cj-04.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Macbook Pro M1 2020/16GB/1TB SSD (Z11C000CJ) - Cấu h&igrave;nh\" src=\"https://cdn.tgdd.vn/Products/Images/44/236131/apple-macbook-pro-m1-2020-z11c000cj-04.jpg\" alt=\"Macbook Pro M1 2020/16GB/1TB SSD (Z11C000CJ) - Cấu h&igrave;nh\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/236131/apple-macbook-pro-m1-2020-z11c000cj-04.jpg\" /></a></p>\r\n<p>Đặc biệt,<strong>&nbsp;<a title=\"Xem th&ecirc;m một số laptop c&oacute; Ổ cứng SSD đang được b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop-o-cung-ssd\" target=\"_blank\" rel=\"noopener\">ổ cứng SSD</a></strong>&nbsp;với dung lượng l&ecirc;n đến&nbsp;<a title=\"Xem th&ecirc;m c&aacute;c sản phẩm laptop SSD 1TB đang kinh doanh tại thegioididong.com\" href=\"https://www.thegioididong.com/laptop-ssd-1-tb\" target=\"_blank\" rel=\"noopener\"><strong>1 TB</strong></a>&nbsp;đem đến cho người d&ugrave;ng kh&ocirc;ng gian lưu trữ lớn m&agrave; tốc độ lại cực nhanh. Th&ocirc;ng thường, bạn sẽ chỉ mất khoảng 3 - 5 gi&acirc;y để mở ứng dụng cũng như khởi động MacBook chỉ cần khoảng 10 gi&acirc;y.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/44/236131/apple-macbook-pro-m1-2020-z11c000cj-05.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Macbook Pro M1 2020/16GB/1TB SSD (Z11C000CJ) - SSD\" src=\"https://cdn.tgdd.vn/Products/Images/44/236131/apple-macbook-pro-m1-2020-z11c000cj-05.jpg\" alt=\"Macbook Pro M1 2020/16GB/1TB SSD (Z11C000CJ) - SSD\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/236131/apple-macbook-pro-m1-2020-z11c000cj-05.jpg\" /></a></p>\r\n<p>Theo h&atilde;ng,&nbsp;<a title=\"Xem th&ecirc;m một số mẫu MacBook Pro đang được b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop-apple-macbook-pro\" target=\"_blank\" rel=\"noopener\">MacBook Pro</a>&nbsp;c&oacute; thời lượng pin sử dụng khoảng<strong>&nbsp;10 giờ&nbsp;</strong>l&agrave;m việc, lướt web, cũng như xem video với mỗi lần sạc đầy.&nbsp;</p>\r\n<h3>Kh&ocirc;ng gian hiển thị tuyệt mĩ tr&ecirc;n&nbsp;<a title=\"Xem th&ecirc;m laptop m&agrave;n h&igrave;nh 13.3 inch đang kinh doanh tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/laptop-13-inch\" target=\"_blank\" rel=\"noopener\">m&agrave;n h&igrave;nh 13.3 inch</a></h3>\r\n<p>M&agrave;n h&igrave;nh&nbsp;<a title=\"Xem th&ecirc;m một số laptop c&oacute; m&agrave;n h&igrave;nh Retina đang được b&aacute;n tại Thegioididong.com\" href=\"https://www.thegioididong.com/laptop-retina\" target=\"_blank\" rel=\"noopener\">Retina</a>&nbsp;<strong>(2560 x 1600)</strong>&nbsp;mang đến những h&igrave;nh ảnh, văn bản sắc n&eacute;t, những thước phim sống động nhất. Tấm nền&nbsp;<strong>IPS&nbsp;</strong>cho g&oacute;c nh&igrave;n rộng, hiển thị đồng nhất qua từng g&oacute;c nh&igrave;n.&nbsp;<strong>C&ocirc;ng nghệ True Tone</strong>&nbsp;c&acirc;n bằng m&agrave;u trắng tự động để ph&ugrave; hợp với nhiệt độ m&agrave;u của &aacute;nh s&aacute;ng tự nhi&ecirc;n xung quanh, đem đến trải nghiệm xem tự nhi&ecirc;n nhất.</p>\r\n<p>Đặc biệt, với độ s&aacute;ng m&agrave;n h&igrave;nh&nbsp;<strong>500 nits</strong>, m&aacute;y t&iacute;nh hiển thị h&igrave;nh ảnh rực rỡ, độ s&aacute;ng cao để hiển thị tốt kể cả trong điều kiện sử dụng ngo&agrave;i trời.</p>', 1, 5, '2021-11-28 00:06:35', '2021-11-28 00:06:35', 'vi-vn-apple-macbook-pro-m1-2020-z11c000cj-04.jpg', NULL, 0),
(9, 'Laptop Apple MacBook Air M1 2020 8GB/256GB/7-core GPU (MGN63SA/A)', '28990000', '/storage/product/1/2nUaIiWTYWoc3ATvIsNe.jpg', '<h3>Laptop Apple MacBook Air M1 2020 thuộc d&ograve;ng&nbsp;<a title=\"Xem th&ecirc;m c&aacute;c mẫu laptop cao cấp tại Thế Giới DI Động\" href=\"https://www.thegioididong.com/laptop?g=cao-cap-sang-trong\" target=\"_blank\" rel=\"noopener\">laptop cao cấp sang trọng</a>&nbsp;c&oacute; cấu h&igrave;nh mạnh mẽ, chinh phục được c&aacute;c t&iacute;nh năng văn ph&ograve;ng lẫn đồ hoạ m&agrave; bạn mong muốn, thời lượng pin d&agrave;i, thiết kế mỏng nhẹ sẽ đ&aacute;p ứng tốt c&aacute;c nhu cầu l&agrave;m việc của bạn.</h3>\r\n<h3>Chip Apple M1 tốc độ xử l&yacute; nhanh gấp 3.5 lần thế hệ trước</h3>\r\n<p>Chiếc<a title=\"C&aacute;c sản phẩm Laptop hiện đang b&aacute;n tại thegioididong.com\" href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" rel=\"noopener\">&nbsp;laptop</a>&nbsp;n&agrave;y được trang bị con chip&nbsp;<a title=\"T&igrave;m hiểu th&ecirc;m về chip Apple M1\" href=\"https://www.thegioididong.com/tin-tuc/apple-m1-la-gi-1305904\" target=\"_blank\" rel=\"noopener\">Apple M1&nbsp;</a>được sản xuất độc quyền bởi Nh&agrave; T&aacute;o&nbsp;tr&ecirc;n t&iacute;nh tr&igrave;nh&nbsp;<strong>5 nm</strong>,&nbsp;<strong>8 l&otilde;i</strong>&nbsp;bao gồm&nbsp;<strong>4 l&otilde;i</strong>&nbsp;tiết kiệm điện v&agrave;&nbsp;<strong>4 l&otilde;i</strong>&nbsp;hiệu suất cao, mang đến một hiệu năng kinh ngạc, xử l&yacute; mọi t&aacute;c vụ văn ph&ograve;ng một c&aacute;ch mượt m&agrave; như Word, Excel, Powerpoint,... thực hiện tốt c&aacute;c nhiệm vụ chỉnh sửa h&igrave;nh ảnh, kết xuất 2D tr&ecirc;n c&aacute;c phần mềm Photoshop, AI,... m&aacute;y c&ograve;n hỗ trợ tiết kiệm được điện năng cao.</p>\r\n<p><strong>Đi c&ugrave;ng CPU l&agrave;&nbsp;</strong><a title=\"Card đồ họa t&iacute;ch hợp l&agrave; g&igrave;?\" href=\"https://www.thegioididong.com/hoi-dap/card-do-hoa-tich-hop-la-gi-950047\" target=\"_blank\" rel=\"noopener\">Card đồ họa t&iacute;ch hợp&nbsp;</a><strong>7 nh&acirc;n GPU</strong>&nbsp;c&oacute; hiệu năng vượt trội sau nhiều b&agrave;i thử nghiệm hiệu năng đồ họa của benchmark, bạn c&oacute; thể sử dụng nhiều phần mềm đồ họa chuy&ecirc;n nghiệp, thoả sức s&aacute;ng tạo nội dung, render video ổn định với chất lượng h&igrave;nh ảnh cao.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/44/231244/apple-macbook-air-2020-mgn63saa-010920-090916.jpg\"><img class=\" ls-is-cached lazyloaded\" title=\"Apple Macbook Air M1 (MGN73SA/A) - CPU\" src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-010920-090916.jpg\" alt=\"Apple Macbook Air M1 (MGN73SA/A) - CPU\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-010920-090916.jpg\" /></a></p>\r\n<p>M&aacute;y được trang bị&nbsp;<a title=\"Xem laptop RAM 8 GB Tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/laptop-8-gb\" target=\"_blank\" rel=\"noopener\">RAM 8 GB</a>&nbsp;cho khả năng đa nhiệm cao, bạn c&oacute; thể mở c&ugrave;ng l&uacute;c nhiều cửa sổ hoặc ứng dụng để phục vụ cho c&ocirc;ng việc, giải tr&iacute; của m&igrave;nh v&iacute; dụ như vừa mở Chrome tra cứu th&ocirc;ng tin vừa mở Word để l&agrave;m việc cực kỳ tiện lợi m&agrave; kh&ocirc;ng cần lo lắng l&agrave; m&aacute;y sẽ bị đơ.</p>\r\n<p><a title=\"Xem th&ecirc;m một số mẫu Macbook đang kinh doanh tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\" rel=\"noopener\">MacBook&nbsp;</a>sở hữu ổ cứng&nbsp;<a title=\"Tham khảo th&ecirc;m một số mẫu laptop c&oacute; SSD 256 GB tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/laptop?g=ssd-256-gb\" target=\"_blank\" rel=\"noopener\">SSD 256 GB</a>&nbsp;cho tốc độ xử l&yacute; nhanh ch&oacute;ng, thao t&aacute;c cuộn trong Safari cực mượt, đ&aacute;nh thức m&aacute;y đang trong chế độ ngủ chỉ mất v&agrave;i gi&acirc;y v&agrave; đem đến kh&ocirc;ng gian lưu trữ rộng r&atilde;i bạn cứ thoải m&aacute;i lưu lại những bộ phim hay m&agrave; kh&ocirc;ng lo n&oacute; sẽ chiếm chỗ của c&aacute;c tệp t&agrave;i liệu c&ocirc;ng việc.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/44/231244/Slider/apple-macbook-air-2020-mgn63saa-130121-0959360.jpg\"><img class=\" ls-is-cached lazyloaded\" src=\"https://cdn.tgdd.vn/Products/Images/44/231244/Slider/apple-macbook-air-2020-mgn63saa-130121-0959360.jpg\" alt=\"aptop Apple MacBook Air M1 2020 (MGN63SA/A)  - SSD\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/231244/Slider/apple-macbook-air-2020-mgn63saa-130121-0959360.jpg\" /></a></p>\r\n<p>B&ecirc;n cạnh sử dụng con chip mới Apple c&ograve;n ra mắt phi&ecirc;n bản hệ điều h&agrave;nh macOS Big Sur với giao diện ho&agrave;n hảo hơn, c&aacute;c chuyển động cuộn, ph&oacute;ng to v&agrave; chuyển tiếp m&agrave;n h&igrave;nh mượt m&agrave;. Ngo&agrave;i đổi mới giao diện&nbsp;<strong>macOS Big Sur</strong>&nbsp;c&ograve;n mang đến khả năng phản hồi nhanh ch&oacute;ng v&agrave; kho ứng dụng khổng lồ.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/44/231244/apple-macbook-air-2020-mgn63saa-102320-082331.jpg\"><img class=\" lazyloaded\" title=\"Apple Macbook Air M1 (MGN73SA/A) - Hệ điều h&agrave;nh\" src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-102320-082331.jpg\" alt=\"Apple Macbook Air M1 (MGN73SA/A) - Hệ điều h&agrave;nh\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-102320-082331.jpg\" /></a></p>\r\n<p>Xem th&ecirc;m:&nbsp;<a title=\"Danh s&aacute;ch ứng dụng chạy được tr&ecirc;n Macbook chip Apple M1\" href=\"https://www.thegioididong.com/game-app/danh-sach-ung-dung-chay-duoc-tren-macbook-chip-apple-m1-1310311\" target=\"_blank\" rel=\"noopener\">Danh s&aacute;ch ứng dụng chạy được tr&ecirc;n Macbook chip Apple M1</a>.</p>\r\n<h3>Thiết kế sang trọng, tinh tế</h3>\r\n<p><a title=\"Xem th&ecirc;m c&aacute;c mẫu laptop MacBook Air tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/laptop-apple-macbook-air\" target=\"_blank\" rel=\"noopener\">MacBook Air</a>&nbsp;2020 kh&ocirc;ng những thừa hưởng thiết kế mỏng nhẹ, hiện đại của c&aacute;c thế hệ trước m&agrave; c&ograve;n học hỏi th&ecirc;m phong c&aacute;ch hiện đại của c&aacute;c d&ograve;ng Macbook Pro. Trọng lượng m&aacute;y chỉ vỏn vẹn&nbsp;<strong>1.29 kg</strong>&nbsp;v&agrave; mỏng của th&acirc;n m&aacute;y l&agrave;&nbsp;<strong>16.1 mm</strong>&nbsp;c&oacute; t&iacute;nh cơ động cao, dễ đem theo xử l&yacute; c&ocirc;ng việc.</p>\r\n<p>Vỏ m&aacute;y được thiết kế nguy&ecirc;n khối từ nguy&ecirc;n liệu nh&ocirc;m t&aacute;i chế 100% vừa g&oacute;p phần bảo vệ m&ocirc;i trường vừa cho độ bền cao, chịu va đập tốt bảo vệ c&aacute;c linh kiện b&ecirc;n trong an to&agrave;n nếu c&oacute; xảy ra va chạm mạnh.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/44/231244/apple-macbook-air-2020-mgn63saa-011120-091138.jpg\"><img class=\" lazyloaded\" title=\"Apple Macbook Air M1 (MGN73SA/A) - Thiết kế\" src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-011120-091138.jpg\" alt=\"Apple Macbook Air M1 (MGN73SA/A) - Thiết kế\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-011120-091138.jpg\" /></a></p>\r\n<p><strong>Magic Keyboard</strong>&nbsp;c&oacute; h&agrave;nh tr&igrave;nh ph&iacute;m&nbsp;<strong>1 mm</strong>&nbsp;mang lại trải nghiệm g&otilde; nhạy, thoải m&aacute;i v&agrave; y&ecirc;n tĩnh, b&agrave;n ph&iacute;m c&ograve;n được trang bị th&ecirc;m đ&egrave;n nền vừa tạo cảm gi&aacute;c sang trọng vừa hỗ trợ bạn g&otilde; ph&iacute;m ch&iacute;nh x&aacute;c hơn trong m&ocirc;i trường thiếu s&aacute;ng.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/44/231244/apple-macbook-air-2020-mgn63saa-011220-091223.jpg\"><img class=\" lazyloaded\" title=\"Apple Macbook Air M1 (MGN73SA/A) - B&agrave;n ph&iacute;m\" src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-011220-091223.jpg\" alt=\"Apple Macbook Air M1 (MGN73SA/A) - B&agrave;n ph&iacute;m\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-011220-091223.jpg\" /></a></p>\r\n<p><a title=\"Xem th&ecirc;m một số mẫu laptop đang kinh doanh tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" rel=\"noopener\">Laptop</a>&nbsp;được trang bị 2 cổng kết nối&nbsp;<strong>Thunderbolt 3&nbsp;</strong>với tốc độ truyền tải l&ecirc;n đến&nbsp;<strong>40 Gb/s</strong>&nbsp;cho tốc độ truyền tải nhanh gấp 2 lần so với thế hệ Thunderbolt 2 trước đ&acirc;y. B&ecirc;n cạnh Thunderbolt 3 m&aacute;y c&ograve;n được trang bị th&ecirc;m kết nối kh&ocirc;ng d&acirc;y l&agrave;&nbsp;<strong><a title=\"Xem th&ecirc;m một số mẫu laptop c&oacute; Wi-Fi 6 tại thegioididong.com\" href=\"https://www.thegioididong.com/laptop-wifi-6\" target=\"_blank\" rel=\"noopener\">Wi-Fi 6</a>&nbsp;</strong>cho tốc độ truyền tải dữ liệu nhanh ch&oacute;ng l&ecirc;n đến&nbsp;<strong>10.000 Mbps</strong>&nbsp;cao hơn Wi-Fi 5 chỉ c&oacute;&nbsp;<strong>7.000 Mbps</strong>&nbsp;v&agrave;&nbsp;<strong>Bluetooth v5.0&nbsp;</strong>c&oacute; tốc độ tối đa l&agrave;&nbsp;<strong>50 Mbps</strong>&nbsp;cho bạn trải nghiệm mượt m&agrave; hơn.</p>\r\n<p><a class=\"preventdefault\" href=\"https://www.thegioididong.com/images/44/231244/apple-macbook-air-2020-mgn63saa-011320-091301.jpg\"><img class=\" lazyloaded\" title=\"Apple Macbook Air M1 (MGN73SA/A) - Kết nối\" src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-011320-091301.jpg\" alt=\"Apple Macbook Air M1 (MGN73SA/A) - Kết nối\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/231244/apple-macbook-air-2020-mgn63saa-011320-091301.jpg\" /></a></p>\r\n<p>Apple trang bị cho chiếc&nbsp;<a title=\"Xem th&ecirc;m Macbook M1 tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/laptop-apple-macbook-m1\" target=\"_blank\" rel=\"noopener\">Macbook M1&nbsp;</a>n&agrave;y&nbsp;<strong>bảo mật&nbsp;</strong><strong>v&acirc;n tay&nbsp;</strong>gi&uacute;p bạn mở kh&oacute;a nhanh ch&oacute;ng chỉ với một c&aacute;i chạm nhẹ. B&ecirc;n cạnh đ&oacute;, v&acirc;n tay của bạn sẽ được t&iacute;ch hợp v&agrave;o việc x&aacute;c nhận th&ocirc;ng tin khi mua sắm online hay truy cập v&agrave;o c&aacute;c t&agrave;i liệu c&oacute; bảo mật m&agrave; kh&ocirc;ng cần phải nhập mật khẩu cực kỳ tiện lợi.</p>', 1, 5, '2021-11-28 00:08:36', '2021-11-28 00:08:36', 'apple-macbook-air-2020-mgn63saa-180121-1057300.jpg', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(1, '/storage/product/1/GVilrTXAaEWsAnUV4WS9.jpg', 1, '2021-11-27 23:39:33', '2021-11-27 23:39:33', 'iphone-12-18.jpg'),
(2, '/storage/product/1/zI7ONGC7K6tOLHvxEE0f.jpg', 1, '2021-11-27 23:39:33', '2021-11-27 23:39:33', 'iphone-12-note.jpg'),
(3, '/storage/product/1/HWmHBq2Q8EcDzX1M93JY.jpg', 1, '2021-11-27 23:39:33', '2021-11-27 23:39:33', 'vi-vn-iphone-12-1.jpg'),
(4, '/storage/product/1/TMQoyV4d4Fst372D5df1.jpg', 2, '2021-11-27 23:43:26', '2021-11-27 23:43:26', 'iphone-13-pro-max-2.jpg'),
(5, '/storage/product/1/R9DZW0nSE0TTPAaYt0gl.jpg', 2, '2021-11-27 23:43:26', '2021-11-27 23:43:26', 'iphone-13-pro-max-3.jpg'),
(6, '/storage/product/1/ItjuRMhfZ0QCtywxIpaA.jpg', 2, '2021-11-27 23:43:26', '2021-11-27 23:43:26', 'iphone-13-pro-max-4.jpg'),
(7, '/storage/product/1/drKXEhrAXVfUIgShuR1p.jpg', 2, '2021-11-27 23:43:27', '2021-11-27 23:43:27', 'iphone-13-pro-max-9.jpg'),
(8, '/storage/product/1/Ex9LC9bLp8Qmr5MLTRuF.jpg', 2, '2021-11-27 23:43:27', '2021-11-27 23:43:27', 'iphone-13-pro-max-n.jpg'),
(9, '/storage/product/1/hdJPMGrmEturQiAjSblm.jpg', 3, '2021-11-27 23:45:38', '2021-11-27 23:45:38', 'iphone-13-pro-1.jpg'),
(10, '/storage/product/1/c7RLBHzPkUH2chFAgGx4.jpg', 3, '2021-11-27 23:45:38', '2021-11-27 23:45:38', 'iphone-13-pro-2.jpg'),
(11, '/storage/product/1/kJJeZXVY9roX8O2Xt4ZO.jpg', 3, '2021-11-27 23:45:38', '2021-11-27 23:45:38', 'iphone-13-pro-5.jpg'),
(12, '/storage/product/1/1KpOO6vBtt7Tpi6E7S5R.jpg', 3, '2021-11-27 23:45:38', '2021-11-27 23:45:38', 'iphone-13-pro-n.jpg'),
(13, '/storage/product/1/rmHa0xkbwCB5JzjY4JDF.jpg', 4, '2021-11-27 23:49:48', '2021-11-27 23:49:48', 'vi-vn-samsung-galaxy-a52s-5g-slider-camera.jpg'),
(14, '/storage/product/1/Zd9IFNznZ07F2nJxbt0J.jpg', 4, '2021-11-27 23:49:48', '2021-11-27 23:49:48', 'vi-vn-samsung-galaxy-a52s-5g-slider-man-hinh.jpg'),
(15, '/storage/product/1/gdNRg7v5lt88aViYnEXi.jpg', 4, '2021-11-27 23:49:48', '2021-11-27 23:49:48', 'vi-vn-samsung-galaxy-a52s-5g-slider-ois.jpg'),
(16, '/storage/product/1/weFJi59kw5ENZQmtNXIr.jpg', 4, '2021-11-27 23:49:48', '2021-11-27 23:49:48', 'vi-vn-samsung-galaxy-a52s-5g-slider-tong-quan.jpg'),
(17, '/storage/product/1/miovxY4qlqda2cgp6Sqn.jpg', 5, '2021-11-27 23:51:42', '2021-11-27 23:51:42', 'samsung-galaxy-a12-2021-slider-camera-sau-780x433.jpg'),
(18, '/storage/product/1/6T6uQwBjo5w3t6QA6iop.jpg', 5, '2021-11-27 23:51:42', '2021-11-27 23:51:42', 'vi-vn-samsung-galaxy-a12-2021-slider-chan-dung.jpg'),
(19, '/storage/product/1/4PZFXOUq8OaRCR3cDAaM.jpg', 5, '2021-11-27 23:51:42', '2021-11-27 23:51:42', 'vi-vn-samsung-galaxy-a12-2021-slider-goc-sieu-rong.jpg'),
(20, '/storage/product/1/7iYNjxfCBsSuR1x35wOa.jpg', 5, '2021-11-27 23:51:42', '2021-11-27 23:51:42', 'vi-vn-samsung-galaxy-a12-2021-slider-macro.jpg'),
(21, '/storage/product/1/UFn2fazzfkgZkmY0WQmS.jpg', 5, '2021-11-27 23:51:42', '2021-11-27 23:51:42', 'vi-vn-samsung-galaxy-a12-2021-slider-tong-quan.jpg'),
(22, '/storage/product/1/wd2hw26RPiPOM0Om94yv.jpg', 6, '2021-11-27 23:53:19', '2021-11-27 23:53:19', 'samsung-galaxy-z-fold3-5g-512gb-060921-0207381.jpg'),
(23, '/storage/product/1/HLEbSYcuPEMMnl0nm5kL.jpg', 6, '2021-11-27 23:53:19', '2021-11-27 23:53:19', 'samsung-galaxy-z-fold3-5g-512gb-060921-0207382.jpg'),
(24, '/storage/product/1/pDkgFnJx8wyM05bR8JfM.jpg', 6, '2021-11-27 23:53:19', '2021-11-27 23:53:19', 'samsung-galaxy-z-fold3-5g-512gb-060921-0207383.jpg'),
(25, '/storage/product/1/v6Z4z9pTnQKd0tVggsjs.jpg', 6, '2021-11-27 23:53:19', '2021-11-27 23:53:19', 'samsung-galaxy-z-fold3-5g-512gb-060921-0207394.jpg'),
(26, '/storage/product/1/52jHB2iKxl8VLqi7DaTA.jpg', 6, '2021-11-27 23:53:19', '2021-11-27 23:53:19', 'samsung-galaxy-z-fold3-5g-512gb-060921-0207395.jpg'),
(27, '/storage/product/1/LFczjZGxfb0kOVfre8JC.jpg', 6, '2021-11-27 23:53:19', '2021-11-27 23:53:19', 'samsung-galaxy-z-fold3-5g-512gb-060921-0207396.jpg'),
(28, '/storage/product/1/03YtyNXrOPBHhm8YflDn.jpg', 6, '2021-11-27 23:53:19', '2021-11-27 23:53:19', 'samsung-galaxy-z-fold3-5g-512gb-060921-0207409.jpg'),
(29, '/storage/product/1/pS6LcV9ZHrb13tgzfh49.jpg', 6, '2021-11-27 23:53:19', '2021-11-27 23:53:19', 'samsung-galaxy-z-fold3-5g-512gb-060921-02074111.jpg'),
(30, '/storage/product/1/dmAt5dHRJe5tpMHLGpgY.jpg', 6, '2021-11-27 23:53:19', '2021-11-27 23:53:19', 'samsung-galaxy-z-fold-3-slider-tong-quan-1020x570.jpg'),
(31, '/storage/product/1/MLBUsx3Me4jxG1AHh9kQ.jpg', 7, '2021-11-28 00:00:05', '2021-11-28 00:00:05', 'samsung-galaxy-s21-ultra-5G-slider-780x433.jpg'),
(32, '/storage/product/1/LUjrbXjIWrwJMpQMXwpO.jpg', 7, '2021-11-28 00:00:05', '2021-11-28 00:00:05', 'samsung-galaxy-s21-ultra-thumbvideo-780x433.jpg'),
(33, '/storage/product/1/k2Yt100jYnlhBbiFLV8q.jpg', 7, '2021-11-28 00:00:05', '2021-11-28 00:00:05', 'vi-vn-samsung-galaxy-s21-ultra-5g-5g-slider.jpg'),
(34, '/storage/product/1/035VXnSJZD4OQKjTAphe.jpg', 7, '2021-11-28 00:00:05', '2021-11-28 00:00:05', 'vi-vn-samsung-galaxy-s21-ultra-5g-manhinh-slider.jpg'),
(35, '/storage/product/1/6772k0VUTUbVHAkvyqoK.jpg', 7, '2021-11-28 00:00:05', '2021-11-28 00:00:05', 'vi-vn-samsung-galaxy-s21-ultra-5g-thietke-slider.jpg'),
(36, '/storage/product/1/oUR85dKPlKQknvIIRUVs.jpg', 8, '2021-11-28 00:06:35', '2021-11-28 00:06:35', 'apple-macbook-pro-m1-2020-z11c000cj-002-800x444.jpg'),
(37, '/storage/product/1/AnOAwPYP8Dq1VwFR5bPX.jpg', 8, '2021-11-28 00:06:35', '2021-11-28 00:06:35', 'apple-macbook-pro-m1-2020-z11c000cj-006-800x444.jpg'),
(38, '/storage/product/1/qleDxQRHafSQ3hnVa0eE.jpg', 8, '2021-11-28 00:06:35', '2021-11-28 00:06:35', 'vi-vn-apple-macbook-pro-m1-2020-z11c000cj-01.jpg'),
(39, '/storage/product/1/YFX9CFEmb2gzl3L7hJqs.jpg', 8, '2021-11-28 00:06:35', '2021-11-28 00:06:35', 'vi-vn-apple-macbook-pro-m1-2020-z11c000cj-03.jpg'),
(40, '/storage/product/1/Vu4g3g994QhbBbG8aLah.jpg', 8, '2021-11-28 00:06:35', '2021-11-28 00:06:35', 'vi-vn-apple-macbook-pro-m1-2020-z11c000cj-04.jpg'),
(41, '/storage/product/1/LQNlTrp9w0rFQmZqsSUT.jpg', 8, '2021-11-28 00:06:36', '2021-11-28 00:06:36', 'vi-vn-apple-macbook-pro-m1-2020-z11c000cj-05.jpg'),
(42, '/storage/product/1/FLdathoEwe8gzmkLGfwO.jpg', 8, '2021-11-28 00:06:36', '2021-11-28 00:06:36', 'vi-vn-apple-macbook-pro-m1-2020-z11c000cj-06.jpg'),
(43, '/storage/product/1/Q4aixHTVXN7mcOSGnglg.jpg', 9, '2021-11-28 00:08:36', '2021-11-28 00:08:36', 'apple-macbook-air-2020-mgn63saa-101220-0823080.jpg'),
(44, '/storage/product/1/RuDn3hZkVE1zsw237WTE.jpg', 9, '2021-11-28 00:08:36', '2021-11-28 00:08:36', 'apple-macbook-air-2020-mgn63saa-130121-0959360.jpg'),
(45, '/storage/product/1/K1VfLUCOnKQ1pN0I7oH3.jpg', 9, '2021-11-28 00:08:36', '2021-11-28 00:08:36', 'apple-macbook-air-2020-mgn63saa-180121-1057300.jpg'),
(46, '/storage/product/1/j7JONQGCcII72WEEV9iP.jpg', 9, '2021-11-28 00:08:36', '2021-11-28 00:08:36', 'apple-macbook-air-2020-mgn63saa-291120-0219090.jpg'),
(47, '/storage/product/1/z1PYnHCAVuevP14qOz1f.jpg', 9, '2021-11-28 00:08:36', '2021-11-28 00:08:36', 'apple-macbook-air-2020-mgn63saa-291120-0223010.jpg'),
(48, '/storage/product/1/3rBL26BTpcFDGT1MGqLs.jpg', 9, '2021-11-28 00:08:36', '2021-11-28 00:08:36', 'apple-macbook-air-2020-mgn63saa-291120-0227360.jpg'),
(49, '/storage/product/1/ZQFQf1x7LqivWibqt50B.jpg', 9, '2021-11-28 00:08:36', '2021-11-28 00:08:36', 'apple-macbook-air-2020-mgn63saa-291120-0229080.jpg'),
(50, '/storage/product/1/VzC8sfqiUHnw6nQdOpiO.jpg', 9, '2021-11-28 00:08:36', '2021-11-28 00:08:36', 'apple-macbook-air-2020-mgn63saa-291120-0231270.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-11-27 23:39:33', '2021-11-27 23:39:33'),
(2, 3, 2, '2021-11-27 23:45:38', '2021-11-27 23:45:38'),
(3, 3, 1, '2021-11-27 23:45:38', '2021-11-27 23:45:38'),
(4, 4, 3, '2021-11-27 23:49:48', '2021-11-27 23:49:48'),
(5, 4, 2, '2021-11-27 23:49:48', '2021-11-27 23:49:48'),
(6, 5, 3, '2021-11-27 23:51:42', '2021-11-27 23:51:42'),
(7, 6, 3, '2021-11-27 23:53:19', '2021-11-27 23:53:19'),
(8, 6, 2, '2021-11-27 23:53:19', '2021-11-27 23:53:19'),
(9, 8, 4, '2021-11-28 00:06:36', '2021-11-28 00:06:36'),
(10, 9, 2, '2021-11-28 00:08:36', '2021-11-28 00:08:36'),
(11, 9, 5, '2021-11-28 00:08:36', '2021-11-28 00:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL, NULL),
(3, 'developer', 'Phát triển hệ thống', NULL, NULL, NULL),
(4, 'Customer', 'Khách hàng', NULL, '2021-03-28 16:25:57', NULL),
(5, 'Editor', 'Người quản trị', '2021-02-15 14:53:45', '2021-03-18 21:01:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 5, '2021-11-27 22:47:05', '2021-11-27 22:47:05'),
(3, 1, 3, '2021-11-28 00:50:46', '2021-11-28 00:50:46'),
(4, 3, 7, '2021-11-28 00:53:32', '2021-11-28 00:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`, `deleted_at`) VALUES
(1, 'footer_infomation', '<div class=\"footer-bottom\">\r\n			<div class=\"container\">\r\n				<div class=\"row\">\r\n					<p class=\"pull-left\">Copyright © 2013 E-Shopper. All rights reserved.</p>\r\n					<p class=\"pull-right\">Designed by <span><a target=\"_blank\" href=\"http://www.themeum.com\">Themeum</a></span></p>\r\n				</div>\r\n			</div>\r\n		</div>', '2021-11-27 22:59:46', '2021-11-27 22:59:46', 'Textarea', NULL),
(2, 'phone_contact', '077 659 8805', '2021-11-27 23:35:36', '2021-11-27 23:35:36', 'Text', NULL),
(3, 'email', 'khanhlinh1475@gmail.com', '2021-11-27 23:35:54', '2021-11-27 23:35:54', 'Text', NULL),
(4, 'facebook_link', 'https://www.youtube.com/', '2021-11-27 23:36:20', '2021-11-27 23:36:20', 'Text', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Black Friday Giảm 2 lần', 'Sự kiện black friday', '/storage/slider/1/er29Gv07FQ3mv84jGs6T.png', 'black-830-300-830x300.png', '2021-11-27 23:02:57', '2021-11-27 23:02:57', NULL),
(2, 'OPPO A95', 'Đa nhiệm hệ đa năng', '/storage/slider/1/YA4TyqK8PqOtVg0IyJjy.png', 'A95-830-300-830x300.png', '2021-11-27 23:04:21', '2021-11-27 23:04:21', NULL),
(3, 'Black Friday', 'Mật vụ săn sale', '/storage/slider/1/f5s3O350LIzfYTyu10Rk.png', 'citi-orient-830-300-830x300.png', '2021-11-27 23:07:14', '2021-11-27 23:07:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'iphone', '2021-11-27 23:39:33', '2021-11-27 23:39:33'),
(2, 'hot', '2021-11-27 23:45:38', '2021-11-27 23:45:38'),
(3, 'samsung', '2021-11-27 23:49:48', '2021-11-27 23:49:48'),
(4, 'macbook', '2021-11-28 00:06:36', '2021-11-28 00:06:36'),
(5, 'apple', '2021-11-28 00:08:36', '2021-11-28 00:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Nguyễn Khánh Linh', 'khanhlinh1475@gmail.com', NULL, '$2y$10$Y6KbRATd1dxr07AfLtI71eOAbll.kXDIQIxvgSyudERKUHLFM9mkS', 'JZ0mBRPVIKUNkWYXqjaBa6o9JIYi92F5qM0Zx7tOuw5Gk6TSydNBL92wI2Vs', NULL, NULL, NULL),
(2, 'Người edit', 'editor@gmail.com', NULL, '$2y$10$DUaUzdoiQifzlLafe99Jk.z1/xRJ/SaXx8JoZBo.eB9bLZBkvof9O', NULL, '2021-11-27 22:47:05', '2021-11-27 22:47:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
