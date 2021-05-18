-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 06:22 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-food`
--

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_img` varchar(255) NOT NULL,
  `menu_detail` varchar(255) NOT NULL,
  `menu_price` int(11) NOT NULL,
  `menu_status` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `restaurant_id`, `menu_name`, `menu_img`, `menu_detail`, `menu_price`, `menu_status`, `created_at`, `updated_at`) VALUES
(1, '1', 'กระเพราหมูสับ ไข่ดาว 1', 'https://cdn.pixabay.com/photo/2016/07/20/00/49/thailand-food-1529442_960_720.jpg', 'กระเพราไข่ดาวกรอบๆ แห้งๆ ใส่เนื้อจัดเต็ม', 30, '0', '2021-05-18 14:50:46', NULL),
(2, '1', 'กระเพราหมูสับ ไข่ดาว 2', 'https://cdn.pixabay.com/photo/2016/07/20/00/49/thailand-food-1529442_960_720.jpg', 'กระเพราไข่ดาวกรอบๆ แห้งๆ ใส่เนื้อจัดเต็ม', 40, '0', '2021-05-18 14:50:47', NULL),
(4, '1', 'Pizzaa1', 'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg', 'พิสซ่าถาดใหญ่แป้งบางหนานุ่ม กินจุใจ', 50, '0', '2021-05-18 14:51:51', '2021-05-09 06:09:20'),
(7, '1', 'Pizzaa2', 'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg', 'พิสซ่าถาดใหญ่แป้งบางหนานุ่ม กินจุใจ', 60, '0', '2021-05-18 14:51:54', '2021-05-09 06:09:20'),
(8, '1', 'Pizzaa3', 'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395_960_720.jpg', 'พิสซ่าถาดใหญ่แป้งบางหนานุ่ม กินจุใจ', 70, '0', '2021-05-18 14:51:56', '2021-05-09 06:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `menu_id` varchar(255) NOT NULL,
  `orders_detail` varchar(255) NOT NULL,
  `orders_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `menu_id`, `orders_detail`, `orders_status`, `created_at`, `updated_at`) VALUES
(1, '24', '1', 'ไม่ใส่พริก', '2', NULL, NULL),
(6, '24', '2', 'เพิ่มซอส', '32', NULL, NULL),
(7, '1', '1', '', '1', NULL, NULL),
(8, '1', '1', 'asdasd', '1', NULL, NULL),
(9, '1', '4', 'test', '1', NULL, NULL),
(10, '1', '8', 'asdasd', '1', NULL, NULL),
(11, '1', '7', 'asdsad', '1', NULL, NULL),
(12, '1', '2', '', '1', NULL, NULL),
(13, '1', '2', '', '1', NULL, NULL),
(14, '1', '2', 'asdasd', '1', NULL, NULL),
(15, '1', '2', '', '1', NULL, NULL),
(16, '1', '2', '', '1', NULL, NULL),
(17, '24', '4', 'ซอสพริก', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
