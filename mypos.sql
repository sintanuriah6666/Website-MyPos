-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2019 at 12:51 AM
-- Server version: 10.1.29-MariaDB-6+b1
-- PHP Version: 7.2.4-1+b1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mypos`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `gender`, `phone`, `address`, `created`, `updated`) VALUES
(1, 'Sindi', 'P', '084343434', 'Juwana', '2019-04-13 21:36:41', '2019-04-13 22:57:35'),
(3, 'Tono', 'L', '089232323', 'Pati', '2019-04-13 21:43:14', NULL),
(5, 'Idwan Hadi', 'L', '0342232323', 'Kudus\r\n', '2019-04-13 22:57:28', '2019-04-13 22:58:37'),
(6, 'Anton', 'L', '0813434344', 'Kudus', '2019-04-13 22:57:49', NULL),
(7, 'Ana', 'P', '082332932', 'Kediri', '2019-04-13 22:58:07', NULL),
(8, 'Raka', 'L', '083483449', 'Pati', '2019-04-13 22:58:31', NULL),
(9, 'Purnomo', 'L', '08734347734', 'Jogjakarta', '2019-04-13 22:58:55', NULL),
(10, 'Zahier', 'L', '601300808888', 'Malaysia', '2019-04-13 22:59:49', '2019-04-13 23:00:00'),
(11, 'Syafi\'i', 'L', '08232323', 'Kudus', '2019-04-13 23:00:21', NULL),
(12, 'Ahmad Masruri', 'L', '08943444372', 'Pati', '2019-04-13 23:00:37', NULL),
(13, 'Ifan Fadillah', 'L', '087778444422', 'Kudus', '2019-04-13 23:00:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE `p_category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`category_id`, `name`, `created`, `updated`) VALUES
(2, 'Makanan', '2019-04-13 21:59:02', '2019-04-13 22:09:20'),
(3, 'Minuman', '2019-04-13 22:01:37', '2019-04-13 22:09:24'),
(5, 'ATK', '2019-04-13 22:54:19', NULL),
(6, 'Bumbu', '2019-05-20 08:41:49', NULL),
(7, 'Elektronik', '2019-05-20 08:45:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_item`
--

CREATE TABLE `p_item` (
  `item_id` int(11) NOT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `stock` int(10) NOT NULL DEFAULT '0',
  `image` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_item`
--

INSERT INTO `p_item` (`item_id`, `barcode`, `name`, `category_id`, `unit_id`, `price`, `stock`, `image`, `created`, `updated`) VALUES
(1, 'A001', 'YukCoding Drink', 3, 2, 10000, 19, 'item-190519-189afc712f.png', '2019-05-19 15:43:12', '2019-05-20 08:40:43'),
(9, 'A002', 'Susu Formula 1', 3, 3, 5000, 50, NULL, '2019-05-19 20:30:10', '2019-05-19 20:31:42'),
(10, 'A003', 'Permen Enak', 2, 4, 5000, 3, NULL, '2019-05-19 20:57:13', NULL),
(11, 'A004', 'Permen Susu', 2, 3, 500, 4, 'item-190520-6759d8e204.jpg', '2019-05-19 20:59:23', '2019-05-20 08:41:14'),
(13, 'A005', 'Pensil', 5, 3, 2000, 0, 'item-190520-ea16666899.jpg', '2019-05-20 08:35:55', '2019-05-20 08:39:56'),
(14, 'A006', 'Bolpoin', 5, 3, 3000, 0, 'item-190520-7b2f0aed4a.jpg', '2019-05-20 08:40:12', NULL),
(15, 'A007', 'Saos Abc', 6, 3, 18000, 0, 'item-190520-82cb5830fe.jpg', '2019-05-20 08:42:56', NULL),
(16, 'A008', 'Kecap Bango', 6, 3, 25000, 0, 'item-190520-cb66e333af.jpg', '2019-05-20 08:44:20', NULL),
(17, 'A009', 'Penghapus Pensil', 5, 3, 1500, 0, NULL, '2019-05-20 08:44:45', NULL),
(18, 'B001', 'Tasbih Digital', 7, 3, 50000, 0, NULL, '2019-05-20 08:45:37', NULL),
(19, 'B002', 'Jam Anak 1', 7, 3, 55000, 0, 'item-190520-0572db10da.jpg', '2019-05-20 08:48:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `p_unit`
--

CREATE TABLE `p_unit` (
  `unit_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `p_unit`
--

INSERT INTO `p_unit` (`unit_id`, `name`, `created`, `updated`) VALUES
(2, 'Kilogram', '2019-04-13 21:59:02', '2019-04-13 22:17:43'),
(3, 'Buah', '2019-04-13 22:01:37', '2019-04-13 22:17:48'),
(4, 'Pack', '2019-05-19 20:35:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `description` text,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `phone`, `address`, `description`, `created`, `updated`) VALUES
(1, 'Toko A', '0295382222', 'Pati', NULL, '2019-03-17 09:31:37', NULL),
(2, 'Toko B', '021433488', 'Jakarta', 'Toko ATK Terbesar', '2019-03-17 09:31:37', NULL),
(4, 'Toko C', '0215454', 'Kudus\r\n', 'Toko Oke', '2019-03-17 09:59:41', '2019-03-17 10:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `t_stock`
--

CREATE TABLE `t_stock` (
  `stock_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `detail` varchar(200) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_stock`
--

INSERT INTO `t_stock` (`stock_id`, `item_id`, `type`, `detail`, `supplier_id`, `qty`, `date`, `created`, `user_id`) VALUES
(1, 1, 'in', 'Kulakan', 1, 20, '2019-10-01', '2019-10-01 11:53:26', 1),
(3, 9, 'in', 'Kulakan', 2, 50, '2019-10-01', '2019-10-01 13:04:25', 1),
(4, 10, 'in', 'Bonus', NULL, 2, '2019-10-01', '2019-10-01 14:01:36', 1),
(5, 10, 'in', 'Tambahan', NULL, 1, '2019-10-01', '2019-10-01 14:09:20', 1),
(6, 11, 'in', 'Kulakan', 4, 5, '2019-10-01', '2019-10-01 14:11:23', 1),
(14, 1, 'out', 'Rusak', NULL, 1, '2019-12-13', '2019-12-13 23:43:31', 1),
(16, 11, 'out', 'Kadaluwarsa', NULL, 1, '2019-12-14', '2019-12-14 00:49:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `level` int(1) NOT NULL COMMENT '1:admin, 2:kasir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `address`, `level`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Mohammad Nur Fawaiq', 'Pati', 1),
(2, 'kasir1', '874c0ac75f323057fe3b7fb3f5a8a41df2b94b1d', 'Steven', 'Jakarta', 2),
(7, 'tukijo', '340a39682c12f1d7e1634686e5315eefa7f22c59', 'Tukijo Jos', 'Pati', 2),
(8, 'tukiyem2', '474da69c3c12f61cdc9932a134f971d1c2496b92', 'Tukiyem Yes', 'Purwodadi', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `p_category`
--
ALTER TABLE `p_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `p_item`
--
ALTER TABLE `p_item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `p_unit`
--
ALTER TABLE `p_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `t_stock`
--
ALTER TABLE `t_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `p_category`
--
ALTER TABLE `p_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `p_item`
--
ALTER TABLE `p_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `p_unit`
--
ALTER TABLE `p_unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `t_stock`
--
ALTER TABLE `t_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `p_item`
--
ALTER TABLE `p_item`
  ADD CONSTRAINT `p_item_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `p_category` (`category_id`),
  ADD CONSTRAINT `p_item_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `p_unit` (`unit_id`);

--
-- Constraints for table `t_stock`
--
ALTER TABLE `t_stock`
  ADD CONSTRAINT `t_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  ADD CONSTRAINT `t_stock_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
