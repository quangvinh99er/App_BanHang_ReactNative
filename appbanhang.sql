-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 03:51 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner_types`
--

CREATE TABLE `banner_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_types`
--

INSERT INTO `banner_types` (`id`, `name`, `image`) VALUES
(1, 'AMD\r\n', 'AMD.jpg'),
(2, 'ASUS', 'ASUS.jpg'),
(3, 'Gigabyte', 'Gigabyte.jpg'),
(4, 'Intel', 'Intel.jpg'),
(5, 'Kingston', 'Kingston.jpg'),
(7, 'MSI', 'MSI.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `date_order` datetime NOT NULL DEFAULT current_timestamp(),
  `total` float NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `id_customer`, `date_order`, `total`, `note`, `status`) VALUES
(57, 29, '2021-04-24 11:59:23', 121, NULL, 0),
(58, 29, '2021-04-25 01:44:42', 133, NULL, 0),
(59, 29, '2021-04-25 01:45:08', 133, NULL, 0),
(60, 29, '2021-04-25 01:46:43', 133, NULL, 0),
(61, 29, '2021-04-25 01:50:13', 133, NULL, 0),
(62, 29, '2021-04-25 01:50:36', 133, NULL, 0),
(63, 29, '2021-04-25 01:53:57', 133, NULL, 0),
(64, 29, '2021-04-25 01:55:25', 133, NULL, 0),
(65, 29, '2021-04-25 01:56:38', 133, NULL, 0),
(66, 29, '2021-04-25 01:59:35', 133, NULL, 0),
(67, 29, '2021-04-25 02:04:02', 133, NULL, 0),
(68, 29, '2021-04-25 02:04:35', 133, NULL, 0),
(69, 29, '2021-04-25 02:05:21', 133, NULL, 0),
(70, 29, '2021-04-25 02:07:54', 133, NULL, 0),
(71, 29, '2021-04-25 02:08:06', 133, NULL, 0),
(72, 29, '2021-04-25 02:08:20', 133, NULL, 0),
(73, 29, '2021-04-25 02:09:01', 133, NULL, 0),
(74, 29, '2021-04-25 02:09:37', 133, NULL, 0),
(75, 29, '2021-04-25 02:11:13', 133, NULL, 0),
(76, 29, '2021-04-25 11:03:32', 121, NULL, 0),
(77, 29, '2021-04-25 11:05:52', 121, NULL, 0),
(78, 29, '2021-04-25 11:10:10', 121, NULL, 0),
(79, 29, '2021-04-25 11:10:26', 121, NULL, 0),
(80, 29, '2021-04-25 11:17:22', 121, NULL, 0),
(81, 29, '2021-04-25 11:19:02', 121, NULL, 0),
(82, 29, '2021-04-25 11:24:16', 121, NULL, 0),
(83, 29, '2021-04-25 11:26:40', 121, NULL, 0),
(84, 29, '2021-04-25 11:29:24', 121, NULL, 0),
(85, 29, '2021-04-25 11:35:11', 121, NULL, 0),
(86, 29, '2021-04-25 11:35:17', 121, NULL, 0),
(87, 29, '2021-04-25 11:35:27', 121, NULL, 0),
(88, 29, '2021-04-25 11:35:52', 121, NULL, 0),
(89, 29, '2021-04-25 11:36:30', 121, NULL, 0),
(90, 29, '2021-04-25 11:37:27', 121, NULL, 0),
(91, 29, '2021-04-25 11:37:57', 121, NULL, 0),
(92, 29, '2021-04-25 11:38:53', 121, NULL, 0),
(93, 29, '2021-04-25 11:40:03', 121, NULL, 0),
(94, 29, '2021-04-25 11:40:51', 121, NULL, 0),
(95, 29, '2021-04-25 11:43:26', 121, NULL, 0),
(96, 29, '2021-04-25 11:46:03', 121, NULL, 0),
(97, 29, '2021-04-25 12:01:18', 121, NULL, 0),
(98, 29, '2021-04-25 12:03:09', 121, NULL, 0),
(99, 29, '2021-04-25 12:05:53', 121, NULL, 0),
(100, 29, '2021-04-25 12:06:33', 121, NULL, 0),
(101, 29, '2021-04-25 12:06:47', 121, NULL, 0),
(102, 29, '2021-04-25 12:07:51', 121, NULL, 0),
(103, 29, '2021-04-25 12:08:47', 121, NULL, 0),
(104, 29, '2021-04-25 12:11:11', 121, NULL, 0),
(105, 29, '2021-04-25 12:12:05', 121, NULL, 0),
(106, 29, '2021-04-25 12:15:24', 121, NULL, 0),
(107, 29, '2021-04-25 12:16:45', 121, NULL, 0),
(108, 29, '2021-04-25 12:17:08', 121, NULL, 0),
(109, 29, '2021-04-25 12:23:59', 121, NULL, 0),
(110, 29, '2021-04-25 02:36:21', 121, NULL, 0),
(111, 29, '2021-04-25 02:37:56', 121, NULL, 0),
(112, 29, '2021-04-25 02:39:02', 121, NULL, 0),
(113, 29, '2021-04-25 02:39:21', 121, NULL, 0),
(114, 29, '2021-04-25 02:40:23', 121, NULL, 0),
(115, 29, '2021-04-25 02:43:08', 121, NULL, 0),
(116, 29, '2021-04-25 02:46:30', 121, NULL, 0),
(117, 29, '2021-04-25 02:48:32', 121, NULL, 0),
(118, 29, '2021-04-25 02:49:14', 121, NULL, 0),
(119, 29, '2021-04-25 02:50:00', 121, NULL, 0),
(120, 29, '2021-04-25 02:51:39', 121, NULL, 0),
(121, 29, '2021-04-25 02:52:54', 121, NULL, 0),
(122, 29, '2021-04-26 07:54:13', 121, NULL, 0),
(123, 29, '2021-04-26 08:05:09', 121, NULL, 0),
(124, 29, '2021-04-26 08:15:47', 121, NULL, 0),
(125, 29, '2021-04-26 08:17:37', 121, NULL, 0),
(126, 29, '2021-04-26 08:19:17', 121, NULL, 0),
(127, 29, '2021-04-26 08:21:05', 121, NULL, 0),
(128, 29, '2021-04-26 08:22:11', 121, NULL, 0),
(129, 29, '2021-04-26 08:23:25', 121, NULL, 0),
(130, 29, '2021-04-26 08:26:05', 121, NULL, 0),
(131, 29, '2021-04-26 08:28:00', 121, NULL, 0),
(132, 29, '2021-04-26 08:30:19', 121, NULL, 0),
(133, 29, '2021-04-26 08:32:07', 121, NULL, 0),
(134, 29, '2021-04-26 08:32:38', 121, NULL, 0),
(135, 29, '2021-04-26 08:33:05', 121, NULL, 0),
(136, 29, '2021-04-26 08:34:28', 121, NULL, 0),
(137, 29, '2021-04-26 08:36:36', 121, NULL, 0),
(138, 29, '2021-04-26 08:40:47', 121, NULL, 0),
(139, 29, '2021-04-26 08:42:03', 121, NULL, 0),
(140, 29, '2021-04-26 08:42:51', 121, NULL, 1),
(141, 29, '2021-04-26 08:47:41', 121, NULL, 1),
(142, 29, '2021-04-26 08:48:49', 121, NULL, 1),
(143, 29, '2021-04-26 08:49:55', 121, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` float DEFAULT 0,
  `price` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `price`) VALUES
(34, 57, 30, 1, 121),
(35, 58, 31, 1, 133),
(36, 59, 31, 1, 133),
(37, 60, 31, 1, 133),
(38, 61, 31, 1, 133),
(39, 62, 31, 1, 133),
(40, 63, 31, 1, 133),
(41, 64, 31, 1, 133),
(42, 65, 31, 1, 133),
(43, 66, 31, 1, 133),
(44, 67, 31, 1, 133),
(45, 68, 31, 1, 133),
(46, 69, 31, 1, 133),
(47, 70, 31, 1, 133),
(48, 71, 31, 1, 133),
(49, 72, 31, 1, 133),
(50, 73, 31, 1, 133),
(51, 74, 31, 1, 133),
(52, 75, 31, 1, 133),
(53, 76, 30, 1, 121),
(54, 77, 30, 1, 121),
(55, 78, 30, 1, 121),
(56, 79, 30, 1, 121),
(57, 80, 30, 1, 121),
(58, 81, 30, 1, 121),
(59, 82, 30, 1, 121),
(60, 83, 30, 1, 121),
(61, 84, 30, 1, 121),
(62, 85, 30, 1, 121),
(63, 86, 30, 1, 121),
(64, 87, 30, 1, 121),
(65, 88, 30, 1, 121),
(66, 89, 30, 1, 121),
(67, 90, 30, 1, 121),
(68, 91, 30, 1, 121),
(69, 92, 30, 1, 121),
(70, 93, 30, 1, 121),
(71, 94, 30, 1, 121),
(72, 95, 30, 1, 121),
(73, 96, 30, 1, 121),
(74, 97, 30, 1, 121),
(75, 98, 30, 1, 121),
(76, 99, 30, 1, 121),
(77, 100, 30, 1, 121),
(78, 101, 30, 1, 121),
(79, 102, 30, 1, 121),
(80, 103, 30, 1, 121),
(81, 104, 30, 1, 121),
(82, 105, 30, 1, 121),
(83, 106, 30, 1, 121),
(84, 107, 30, 1, 121),
(85, 108, 30, 1, 121),
(86, 109, 30, 1, 121),
(87, 110, 30, 1, 121),
(88, 111, 30, 1, 121),
(89, 112, 30, 1, 121),
(90, 113, 30, 1, 121),
(91, 114, 30, 1, 121),
(92, 115, 30, 1, 121),
(93, 116, 30, 1, 121),
(94, 117, 30, 1, 121),
(95, 118, 30, 1, 121),
(96, 119, 30, 1, 121),
(97, 120, 30, 1, 121),
(98, 121, 30, 1, 121),
(99, 122, 30, 1, 121),
(100, 123, 30, 1, 121),
(101, 124, 30, 1, 121),
(102, 125, 30, 1, 121),
(103, 126, 30, 1, 121),
(104, 127, 30, 1, 121),
(105, 128, 30, 1, 121),
(106, 129, 30, 1, 121),
(107, 130, 30, 1, 121),
(108, 131, 30, 1, 121),
(109, 132, 30, 1, 121),
(110, 133, 30, 1, 121),
(111, 134, 30, 1, 121),
(112, 135, 30, 1, 121),
(113, 136, 30, 1, 121),
(114, 137, 30, 1, 121),
(115, 138, 30, 1, 121),
(116, 139, 30, 1, 121),
(117, 140, 30, 1, 121),
(118, 141, 30, 1, 121),
(119, 142, 30, 1, 121),
(120, 143, 30, 1, 121);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `link`, `id_product`) VALUES
(54, 'cpu_amd.jpg', 29),
(55, 'cpu_amd2.jpg', 29),
(56, 'cpu_intel.jpg', 30),
(57, 'cpu_intel2.jpg', 30),
(58, 'mainboard_asus.jpg', 31),
(59, 'mainboard_asus2.jpg', 31),
(60, 'mainboard_msi.jpg', 32),
(61, 'mainboard_msi2.jpg', 32),
(62, 'ram_gigabyte.jpg', 33),
(63, 'ram_gigabyte2.jpg', 33),
(64, 'ram_kingston.jpg', 34),
(65, 'ram_kingston2.jpg', 34),
(66, 'ssd_gigrbyte.jpg', 35),
(67, 'ssd_gigrbyte2.jpg', 35),
(70, 'ssd_kingston.jpg', 37),
(71, 'ssd_kingston2.jpg', 37),
(72, 'vga_asus.jpg', 38),
(73, 'vga_asus2.jpg', 38),
(74, 'vga_msi.jpg', 39),
(75, 'vga_msi2.jpg', 39),
(78, 'MSI_RX_6800_1.jpg', 41),
(79, 'MSI_RX_6800_2.jpg', 41),
(80, 'SAPPHIR_NITRO1.jpg', 42),
(81, 'SAPPHIR_NITRO2.jpg', 42),
(82, 'Ryzen_Threadripper1.jpg', 43),
(83, 'Ryzen_Threadripper2.jpg', 43),
(84, 'intel_i9_9900K1.jpg', 44),
(85, 'intel_i9_9900K2.jpg', 44),
(86, 'intel_i9_10850K1.jpg', 45),
(87, 'intel_i9_10850K2.jpg', 45),
(88, 'intel_i9_10940X1.jpg', 46),
(89, 'intel_i9_10940X2.jpg', 46),
(90, 'Kingston_ECC1.jpg', 47),
(91, 'Kingston_ECC2.jpg', 47),
(92, 'Kingston_HyperX_Fury Black1.jpg', 48),
(93, 'Kingston_HyperX_Fury Black2.jpg', 48),
(94, 'Asus_Z11PA-D8_1.jpg', 49),
(95, 'Asus_Z11PA-D8_2.jpg', 49),
(96, 'ASUS_Z590_ROG_1.jpg', 50),
(97, 'ASUS_Z590_ROG_2.jpg', 50),
(98, 'GIGABYTE_Z390_UD_1.jpg', 51),
(99, 'GIGABYTE_Z390_UD_2.jpg', 51),
(100, 'HDD_Seagate_SkyHawk_AI_18TB_1.jpg', 52),
(101, 'HDD_Seagate_SkyHawk_AI_18TB_2.jpg', 52),
(102, 'Gigabyte_AORUS_RGB_512GB_1.jpg', 53),
(103, 'Gigabyte_AORUS_RGB_512GB_2.jpg', 53),
(104, 'Kingston_Furry_RGB_480GB_1.jpg', 54),
(105, 'Kingston_Furry_RGB_480GB_2.jpg', 54),
(106, 'Gigabyte_AORUS_RGB_16GB_1.jpg', 55),
(107, 'Gigabyte_AORUS_RGB_16GB_2.jpg', 55),
(108, 'Kingston_SKC2000_250GB_1.jpg', 56),
(109, 'Kingston_SKC2000_250GB_2.jpg', 56);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `bill_id` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `bill_id`, `phonenumber`, `amount`, `created_at`) VALUES
(3, 'ID20210426137', '137', '0917030003', 121, '2021-04-26 13:36:45'),
(4, 'ID20210426138', '138', '0917030003', 121, '2021-04-26 13:40:59'),
(5, 'ID20210426139', '139', '0917030003', 121, '2021-04-26 13:42:20'),
(6, 'ID20210426140', '140', '0917030003', 121, '2021-04-26 13:42:57'),
(7, 'ID20210426141', '141', '0917030003', 121, '2021-04-26 13:47:51'),
(8, 'ID20210426142', '142', '0917030003', 121, '2021-04-26 13:48:55'),
(9, 'ID20210426143', '143', '0917030003', 121, '2021-04-26 13:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `id_banner_type` int(11) DEFAULT NULL,
  `price` float DEFAULT 0,
  `description` text NOT NULL,
  `new` tinyint(4) NOT NULL DEFAULT 0,
  `inCollection` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `id_type`, `id_banner_type`, `price`, `description`, `new`, `inCollection`) VALUES
(29, 'AMD Ryzen 3 3100', 4, 1, 124, 'AMD Ryzen 3 3100 /16MB /3.6GHz /4 nhân 8 luồng\r\nThông tin chung:\r\n- Nhà sản xuất : AMD\r\n- Bảo hành : 36 tháng \r\n- Tình trạng: NEW 100%\r\n \r\nGiá:2,590,000đ\r\n\r\nAMD cũng đồng thời giới thiệu thêm bo mạch chủ CPU AMD Ryzen 3 3100 /16MB /3.6GHz /4 nhân 8 luồng hứa hẹn sẽ là một sự lựa chọn sáng giá cho anh em nào đang có ý định ráp một dàn PC AMD với giá bình dân. \r\nKhông còn kén như thế hệ đầu, người dùng hoàn toàn có thể an tâm khi bước chân vào hệ sinh thái của AMD, hầu hết các linh kiện như RAM, SSD bày bán trên thị trường hiện tại đều đã chạy tốt với kiến trúc Zen thế hệ 2.\r\n\r\nTính năng nổi bật:\r\n\r\n Socket	 AM4\r\n Bộ nhớ đệm	 16MB\r\n Số nhân (Cores)	 4\r\n Số luồng (Threads)	 8\r\n Xung cơ bản	 3.6GHz\r\n Xung tối đa	 3.9GHz\r\n Điện tiêu thụ	 65W', 0, 0),
(30, 'Core i7 9700', 4, 4, 121, 'Core i7 9700 / 12M / 3.0GHz upto 4.70GHz / 8 nhân 8 luồng\r\nThông tin chung:\r\n\r\n-Nhà sản xuất : Intel\r\n\r\n-Tình trạng : NEW - 100%\r\n\r\n-Bảo hành : 36 tháng \r\n\r\n- SẢN PHẨM ĐÃ BAO GỒM VAT\r\nGiá KM:8,800,000đ\r\n\r\nTính năng nổi bật:\r\n\r\n\r\nSản phẩm	Bộ vi xử lý (CPU)\r\nHãng sản xuất	Intel\r\nMã CPU	9700\r\nDòng CPU	Core i7 Coffee Lake\r\nSocket	LGA1151\r\nTốc độ	3.00Ghz\r\nTốc độ Tubor tối đa	4.70Ghz\r\nCache	12Mb\r\nNhân CPU	8 Core\r\nLuồng CPU	8 Threads\r\nNhân đồ họa	Intel UHD Graphics 630\r\nDây chuyền công nghệ	14nm\r\nĐiện áp tiêu thụ tối đa	65W\r\nKiểu đóng gói	Box', 1, 0),
(31, 'ASUS TUF GAMING B550M ', 5, 2, 133, 'ASUS TUF GAMING B550M (WI-FI) ZAKU II Edition\r\nThông tin chung:\r\nNhà sản xuất : ASUS\r\nTình trạng : NEW - 100%\r\nBảo hành : 36 tháng \r\n\r\nGiá:8.999.000đ\r\nĐặc điểm nổi bật:\r\n\r\nKích thước: M-ATX\r\nSocket: AM4\r\nChipset: B550\r\nKhe RAM tối đa: 4\r\nLoại RAM hỗ trợ: DDR4\r\n\r\n', 1, 0),
(32, 'MSI MPG Z590 GAMING FORCE', 6, 7, 143, 'MSI MPG Z590 GAMING FORCE\r\n	\r\n13  người đang quan tâm sản phẩm.                    \r\nThông tin chung:\r\n\r\nHãng Sản Xuất: MSI\r\nTình Trạng: Mới\r\nBảo Hành: 36 Tháng\r\nGiá:9.990.000đ\r\n\r\nMainboard MSI MPG Z590 GAMING FORCE\r\nThông số kỹ thuật:\r\n\r\nHãng sản xuất:	MSI\r\nModel:	MPG Z590 GAMING FORCE\r\nSeries:	Z590\r\nCPU (MAX SUPPORT):	i9\r\nSOCKET:	1200\r\nCHIPSET:	Intel® Z590 Chipset\r\n\r\n\r\nDDR4 MEMORY:\r\n\r\n5333(OC)/ 5200(OC)/ 5000(OC)/ 4800(OC)/ 4600(OC)/ 4533(OC)/ 4400(OC)/ 4300(OC)/ 4266(OC)/ 4200(OC)/ 4133(OC)/ 4000(OC)/ 3866(OC)/ 3733(OC)/ 3600(OC)/ 3466(OC)/ 3400(OC)/ 3333(OC)/ 3300(OC)/ 3200(OC)/ 3000(OC)/ 2933(JEDEC)/ 2666(JEDEC)/ 2400(JEDEC)/ 2133(JEDEC) MHz\r\nMEMORY CHANNEL:	Dual\r\nDIMM SLOTS:	4\r\nMAX MEMORY (GB):	128\r\nPCI-E X16:	3\r\nPCI-E X1:	2\r\nSATAIII:	6\r\nM.2 SLOT:	3\r\nRAID:	0/1/5/10\r\nLAN:	1x Intel® I225-V 2.5G LAN\r\nUSB 3.2 PORTS (FRONT):	\r\n1(Gen 2, Type C)\r\n\r\n2(Gen 1, Type A)\r\n\r\n\r\n\r\nUSB 3.2 PORTS (REAR):\r\n\r\n1(Gen 2x2, Type C)\r\n\r\n3(Gen 2, Type A)\r\n\r\n2(Gen 1, Type A)\r\n\r\nUSB 2.0 PORTS (FRONT):	4\r\nUSB 2.0 PORTS (REAR):	4\r\nAUDIO PORTS (REAR):	5+ Optical S/PDIF (Realtek® ALC4080 Codec)\r\nDISPLAYPORT:	1\r\nHDMI:	1\r\nDIRECTX:	12\r\nFORM FACTOR:	ATX\r\nCROSSFIRE:	Y\r\nOPERATING SYSTEM:	Support for Windows 10 64-bit\r\n\r\nMSI MPG Z590 GAMING FORCE là một trong những dòng mainboard mang đến hiệu suất cao được trang bị các tính năng tiên tiến và công nghệ mới nhất để vượt qua bất kỳ thử thách nào trong tầm tay cho dù bạn là game thủ, chuyên gia hay người dùng có sở thích build PC custom mang những nét riêng của mình.\r\nBo mạch chủ MSI thuộc phân khúc mainboard Z590 Rocket Lake mới nhất  được chế tạo với nhiều loại cổng kết nối để thảo mãn các game thủ. Âm thanh nâng cao, khả năng kết nối mạng LAN tiên tiến. USB và Mysitc Light biến mọi trải nghiệm chơi game trở nên đắm chìm.\r\nMột trong những dòng main máy tính mang đến mạng LAN 2.5Gbps cung cấp tốc độ truyền dữ liệu nhanh hơn đang kinh ngạc so với mạng LAN Gigabit thông thường. Đây là một giải phát cao cấp cho những người dùng đồi hỏi có đường truyền internet một cách ổn định. Giải pháp mạng được nâng cấp để sử dụng chuyên nghiệp và đa phương tiện.\r\n', 1, 0),
(33, 'Ram Gigabyte Memory 2666', 6, 3, 157, '(8GB DDR4 1x8G 2666) Ram Gigabyte Memory 2666\r\n- Hãng sản xuất: GIGABYTE\r\n- Tinh trạng: New 100%\r\n- Bảo hành: 36 tháng\r\n\r\nGiá Bán:990,000₫\r\n\r\nTHÔNG SỐ KỸ THUẬT:\r\n\r\nLoại Ram:	DDR4\r\nDung lượng 	8GB\r\nBus: 	2666\r\nTản nhiệt: 	Có\r\nLed: 	Không\r\n', 0, 0),
(34, 'RAM Kingston HyperX Fury Black', 6, 5, 135, '(8GB DDR4 1x8G 2666) RAM Kingston HyperX Fury Black\r\n- Loại RAM: DDR4\r\n- Dung lượng: 8GB \r\n- Số lượng: 1 thanh\r\n- Bus: 2666MHz\r\n- Tản nhiệt: Đen\r\n- Bảo hành: 36 tháng\r\nGiá Bán:990,000₫\r\n\r\nThông tin chung\r\n\r\nNhà sản xuất	Kingston (USA)\r\nChuẩn RAM	DDR4\r\nBus hỗ trợ	2666Mhz\r\nDung lượng	8GB (1 x 8GB)\r\nĐiện áp	1.2v\r\nCas Latency	16-18-18\r\nBảo hành	36 tháng\r\n\r\n\r\n', 1, 1),
(35, 'Gigabyte SSD 240GB 2.5\" Sata 3', 7, 3, 107, 'Gigabyte SSD 240GB 2.5\" Sata 3 ( GP-GSTFS31240GNTD )\r\nHãng sản xuất : Gigabyte \r\n\r\nBảo hành :  36 tháng \r\n\r\nTình trạng : Mới 100% ( NEW ) \r\n\r\nGiá Bán:790,000₫\r\n\r\n Nhà sản xuất\r\n\r\n Gigabyte\r\n Kích thước	 2.5-inch internal SSD\r\n Chuẩn giao tiếp	 SATA 6.0Gb/s\r\n Dung lượng	 240GB\r\n Tốc độ đọc	 Up to 500 MB/s\r\n Tốc độ ghi	 Up to 420 MB/s', 0, 0),
(37, 'SSD KINGSTON A400 240GB M.2 Sata 3', 7, 5, 149, 'SSD KINGSTON A400 240GB M.2 Sata 3\r\n- Nhà sản xuất: KINGSTON\r\n- Tình trạng: New 100%\r\n- Bảo hành: 36 tháng\r\n\r\nGiá Bán:890,000₫\r\n- Dung lượng: 240GB\r\n- Kích thước: M.2 2280\r\n- Kết nối: M.2 SATA\r\n- Tốc độ đọc / ghi (tối đa): 500MB/s / 350MB/s\r\nThông số kỹ thuật\r\nThương hiệu\r\nKINGSTON\r\nBảo hành\r\n36\r\nThông tin chung\r\nKiểu ổ cứng\r\nSSD\r\nCấu hình chi tiết\r\nDung lượng\r\n240GB\r\nKết nối\r\nM.2 SATA\r\nKích thước\r\nM.2 2280\r\nTốc độ đọc\r\n500MB/s\r\nTốc độ ghi\r\n350MB/s\r\nKích thước sản phẩm\r\n4.5 8 2.21 0.12\r\nĐơn vị tính', 0, 1),
(38, 'VGA ASUS GeForce RTX 3090 Rog Strix OC 24G Gaming WHITE', 9, 2, 146, 'VGA ASUS GeForce RTX 3090 Rog Strix OC 24G Gaming WHITE\r\nThông tin chung:\r\n\r\nHãng sản xuất: ASUS \r\nTình trạng: Mới\r\nBảo hành: 36 Tháng\r\nGiá:56,990,000₫\r\n\r\nVGA ASUS GeForce RTX 3090 Rog Strix OC 24G Gaming WHITE\r\nThông số kỹ thuật\r\n\r\nModel	ROG STRIX RTX 3090-O24G-WHITE\r\nEngine đồ họa	NVIDIA® GeForce RTX™3090\r\nBộ nhớ trong	24GB\r\nKiểu bộ nhớ	GDDR6X\r\nBus	384-Bit\r\nCuda Cores	10496\r\nMemory Speed	19.5 Gbps\r\nChuẩn khe cắm	PCI Express 4.0 x 16\r\nĐộ phân giải	7680x4320\r\nCổng giao tiếp	DisplayPort 1.4a x 3\r\nHDMI 2.1 x 2\r\nHDPC 2.3\r\nHỗ trợ màn hình	4\r\nCông suất nguồn yêu cầu	750W\r\nKêt nối nguồn	3 x 8-pin\r\nKích thước	31.85 x 14.01 x 5.78 Centimeter\r\n', 1, 0),
(39, 'MSI GeForce RTX 3090 SUPRIM X 24G', 9, 7, 122, 'MSI GeForce RTX 3090 SUPRIM X 24G\r\nThông tin chung:\r\n\r\nHãng sản xuất: MSI\r\nTình trạng: Mới \r\nBảo hành: 36 Tháng\r\n\r\nGiá:57,990,000₫\r\nTHÔNG SỐ KĨ THUẬT\r\nMODEL NAME\r\n\r\nGeForce RTX™ 3090 SUPRIM X 24G\r\n\r\nGRAPHICS PROCESSING UNIT\r\n\r\nNVIDIA® GeForce RTX™ 3090\r\n\r\nINTERFACE\r\n\r\nPCI Express® Gen 4\r\n\r\nCORES\r\n\r\n10496 Units\r\n\r\nCORE CLOCKS\r\n\r\nExtreme Performance: 1875 MHz (Dragon Center)\r\n\r\nBoost: 1860 MHz (GAMING & SILENT Mode)\r\n\r\nMEMORY SPEED\r\n\r\n19.5 Gbp\r\n\r\nMEMORY\r\n\r\n24GB GDDR6X\r\n\r\nMEMORY BUS\r\n\r\n384-bit\r\n\r\nOUTPUT\r\n\r\nDisplayPort x 3 (v1.4a)\r\n\r\nHDMI x 1 (Supports 4K@120Hz as specified in HDMI 2.1)\r\n\r\nHDCP SUPPORT\r\n\r\nY\r\n\r\nPOWER CONSUMPTION\r\n\r\n420W\r\n\r\nPOWER CONNECTORS\r\n\r\n8-pin x 3\r\n\r\nRECOMMENDED PSU\r\n\r\n850W\r\n\r\nCARD DIMENSION (MM)\r\n\r\n336 x 140 x 61 mm\r\n\r\nWEIGHT (CARD / PACKAGE)\r\n\r\n1895g / 3197g\r\n\r\nDIRECTX VERSION SUPPORT\r\n\r\n12 API\r\n\r\nOPENGL VERSION SUPPORT\r\n\r\n4.6\r\n\r\nNVLINK SUPPORT\r\n\r\nY\r\n\r\nMAXIMUM DISPLAYS\r\n\r\n4\r\n\r\nVR READY\r\n\r\nY\r\n\r\nG-SYNC TECHNOLOGY\r\n\r\nY\r\n\r\nADAPTIVE VERTICAL SYNC\r\n\r\nY\r\n\r\nDIGITAL MAXIMUM RESOLUTION\r\n\r\n7680x4320', 0, 0),
(41, 'MSI RX 6800 XT GAMING X TRIO', 9, 7, 132, 'Card màn hình MSI RX 6800 XT GAMING X TRIO (16GB GDDR6, 256-bit, HDMI+DP, 2x8-pin)\r\n\r\nThông số sản phẩm\r\nDung lượng bộ nhớ: 16Gb GDDR6\r\nCore Clock: 2285 Mhz\r\nKết nối: DisplayPort 1.4a, HDMI 2.1\r\nNguồn yêu cầu: 750W\r\n\r\nGiá khuyến mại:	24.699.000 đ [Giá đã có VAT]\r\n\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nSản phẩm\r\n\r\nVGA - Card đồ họa\r\n\r\nTên Hãng\r\n\r\nMSI\r\n\r\nModel\r\n\r\n6800 XT GAMING X TRIO\r\n\r\nEngine đồ họa\r\n\r\nAMD Radeon RX 6800 XT\r\n\r\nBộ nhớ trong\r\n\r\n16GB\r\n\r\nBus\r\n\r\n256-Bit\r\n\r\nCore Clock\r\n\r\nBoots : up to 2285 MHz / Gaming : up to 2045 MHz / Base 1850 MHz\r\n\r\nChuẩn khe cắm\r\n\r\nPCI Express 4.0 x 16\r\n\r\nĐộ phân giải\r\n\r\n7680 x 4320\r\n\r\nCổng giao tiếp\r\n\r\nYes x 1 (Native HDMI 2.1)\r\n\r\nYes x 3 (Native DisplayPort 1.4a)\r\n\r\nHỗ trợ màn hình\r\n\r\n4\r\n\r\nĐầu nối nguồn\r\n\r\n2 x 8-pin\r\n\r\nCông suất nguồn yêu cầu\r\n\r\n750W\r\n\r\nKích thước\r\n\r\n32.4 x 14.1 x 5.5 centimeter\r\n\r\nĐánh giá sản phẩm Card màn hình MSI 6800 XT GAMING X TRIO Hiệu Năng Cao\r\nCard màn hình MSI RX 6800 XT GAMING X TRIO là card đồ họa cao cấp của MSI dựa trên nhân GPU AMD RX 6800 XT. Đây là phiên bản được  trang bị tản nhiệt TRIO trứ danh của hãng cho hiệu quả làm mát vượt trội. \r\n\r\nHiệu năng của RX 6800 XT\r\n\r\nống động cùng hệ thống đèn LED RGB rực rỡ\r\nHệ thống LED RGB trên thân VGA có thể dễ dàng tùy chỉnh qua phần mềm. \r\n\r\nTản nhiệt TRI FROZR 2\r\nCông nghệ làm mát mới của MSI bao gồm: \r\nCác cánh quạt kép nối liền nhau tăng áp lực gió\r\nBề mặt tiếp xúc với GPU siêu phẳng \r\nHeatsink thiết kế giảm tiếng ồn\r\nDouble Bearing tăng tuổi thọ cho quạt làm mát \r\nCool 360 gồm 1 ống dẫn nhiệt chạy toàn bộ bề mặt VGA giúp tản nhiệt cân bằng\r\n\r\nHỗ trợ giá đỡ VGA \r\nGIờ đây bạn không phải lo lắng về việc cong vênh VGA do kích thước \"khủng\"\r\n\r\nTùy chỉnh mọi thứ với MSI Dragon Center\r\nTăng hiệu năng, điều chỉnh ánh sáng, tốc độ quạt, nhiệt độ,.. tất cả đều được tích hợp trong MSI Dragon Center\r\n\r\n', 0, 1),
(42, 'SAPPHIRE NITRO+ OC Radeon RX 5700XT', 9, 1, 134, 'Card màn hình SAPPHIRE NITRO+ OC Radeon RX 5700XT 8GB (8GB GDDR6, 256-bit, HDMI, 2x8-pin) \r\n\r\nThông số sản phẩm\r\nPhiên bản RX 5700XT cao cấp của Sapphire\r\n2560 Stream Processor\r\nXung nhịp GPU: 2010Mhz\r\nDung lượng Vram: 8GB\r\n\r\nGiá khuyến mại:	12.999.000 đ [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nSản phẩm\r\n\r\nCard đồ họa\r\n\r\nTên Hãng\r\n\r\nSAPPHIRE\r\n\r\nModel\r\n\r\nSAPPHIRE NITRO+ OC | Radeon RX 5700XT 8GB DDR6\r\n\r\nChipset\r\n\r\nRADEON RX 5700 XT\r\n\r\nBộ nhớ trong\r\n\r\n8Gb\r\n\r\nKiểu bộ nhớ\r\n\r\nGDDR6\r\n\r\nBus\r\n\r\n256Bit\r\n\r\nCore Clock\r\n\r\nChế độ OC - Xung Tăng cường GPU : 2010 MHZ , Xung Nền GPU : 1770 MHz\r\n\r\nChế độ Chơi Game - Xung Tăng cường GPU : 1905 MHZ , Xung Nền GPU :1770 MHz\r\n\r\nMemory Clock\r\n\r\n\r\n14Gbps effective\r\n\r\nDirectX\r\n\r\nMicrosoft® DirectX® 12 API\r\n\r\nChuẩn khe cắm\r\n\r\nPCI Express 4.0 x 16\r\n\r\nĐộ phân giải\r\n\r\nHDMI™: 4096×2160@60Hz\r\nDisplayPort1.4: 5120×2880@60Hz\r\n\r\nCổng giao tiếp\r\n\r\n·         2x HDMI \r\n\r\n·         2x DisplayPort\r\n\r\nCông suất nguồn yêu cầu\r\n\r\n550W\r\n\r\nĐánh giá sản phẩm Card màn hình SAPPHIRE NITRO+ OC Radeon RX 5700XT 8GB\r\nCard màn hình SAPPHIRE NITRO+ OC Radeon RX 5700XT 8GB\r\nSAPPHIRE là hãng sản xuất không quá xa lạ tại Việt Nam, đây là nhà sản xuất “thân thiết” với đội đỏ AMD nhất. Tại Việt Nam thì các bạn dễ dàng gặp được các sản phẩm VGA SAPPHIRE RX – Series từ mới đến cũ. Sau khi bản thương mại SAPPHIRE RX 5700 XT Nitro+ được ra mắt thì SAPPHIRE tiếp tục giới thiệu ra thị trường bản Card màn hình SAPPHIRE NITRO+ OC Radeon RX 5700XT 8GB.\r\n\r\nThiết kế truyền thống, hiệu quả khác biệt\r\nCard màn hình SAPPHIRE NITRO+ OC Radeon RX 5700XT 8GB vẫn có một thiết kế hết sức truyền thống của hãng từ trước đến nay. SAPPHIRE đã khéo léo bổ sung thêm một vài chi tiết như: Quạt và đèn LED RGB để cho sản phẩm có thêm sự quyến rũ. Điểm khác biệt dễ dàng nhận ra nhất đó chính là hệ thống tản nhiệt, nó vẫn được trang bị 3 quạt tản nhiệt nhưng lần này SAPPHIRE để cánh quạt trắng trong suốt chứ không đen thui như trước đây. Với hệ thống cánh quạt trong suốt này SAPPHIRE đã trang bị luôn đèn LED RGB cho khỏi lạc lõng giữa các đối thủ.\r\n\r\nHiệu năng hoàn hảo\r\nVề hiệu năng thì chúng ta sẽ một có card màn hình sẽ được ép xung sẵn trước khi xuất xưởng. Ngoài ra các thông số kỹ thuật chung thì chúng ta sẽ có Card màn hình sử dụng GPU Navi 10 với tiến trình 7nm. Card màn hình SAPPHIRE NITRO+ OC Radeon RX 5700XT 8GB được trang bị 2560 shader, 64 Rops và 256 Tmus. Card màn hình SAPPHIRE NITRO+ OC Radeon RX 5700XT 8GB vẫn được trang bị 8GB GDDR6 với mức xung nhịp lên đến 2035 MHz (Nitro+ chỉ 2010 MHz). \r\n\r\n', 0, 0),
(43, 'CPU AMD Ryzen Threadripper 3960X', 4, 1, 117, 'CPU AMD Ryzen Threadripper 3960X (3.8GHz turbo up to 4.5GHz, 24 nhân 48 luồng, 140MB Cache, 280W) - Socket sTRX4\r\n\r\nThông số sản phẩm\r\nCPU Threadripper thế hệ thứ 3 được mong chờ của AMD\r\n24 nhân & 48 luồng\r\nXung cơ bản: 3.8 GHz\r\nXung tối đa (boost): 4.5 GHz\r\nChạy tốt trên các mainboard socket sTRX4\r\nPhù hợp cho những nhà sáng tạo nội dung\r\n\r\n\r\nGiá khuyến mại:	36.599.000 đ [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nThông tin cơ bản\r\n\r\nThương hiệu\r\n\r\nAMD\r\n\r\nLoại CPU\r\n\r\nDành cho máy bàn\r\n\r\nThế hệ\r\n\r\nRyzen Threadripper thế hệ 3\r\n\r\nTên gọi\r\n\r\nRyzen Threadripper 3960X\r\n\r\nChi tiết\r\n\r\nSocket\r\n\r\nsTRX4\r\n\r\nTên thế hệ\r\n\r\nThreadripper 3000 Series\r\n\r\nSố nhân\r\n\r\n24\r\n\r\nSố luồng\r\n\r\n48\r\n\r\nTốc độ cơ bản\r\n\r\n3.8 GHz\r\n\r\nTốc độ tối đa\r\n\r\n4.5 GHz\r\n\r\nCache\r\n\r\n140MB\r\n\r\nTiến trình sản xuất\r\n\r\n7nm\r\n\r\nHỗ trợ 64-bit\r\n\r\nCó\r\n\r\nHỗ trợ Siêu phân luồng\r\n\r\nCó\r\n\r\nHỗ trợ bộ nhớ\r\n\r\nDDR4 3000 MHz\r\n\r\n', 1, 0),
(44, 'CPU Intel Core i9-9900K ', 4, 4, 142, 'CPU Intel Core i9-9900K (3.6GHz turbo up to 5.0GHz, 8 nhân 16 luồng, 16MB Cache, 95W) - Socket Intel LGA 1151-v2\r\n\r\n\r\nThông số sản phẩm\r\nBộ vi xử lý Intel Core i9 9900K, 8 nhân 16 luồng, 16MB cache\r\nLà sản phẩm dựa trên kiến trúc Coffee Lake Refresh thế hệ mới nhất\r\nBộ vi xử lý này có tần số cơ bản là 3.6 GHz turbo lên tới 5.0 GHz. Mức TDP 95W\r\nHỗ trợ RAM DDR4 2666 / Dual Channel\r\n\r\n\r\nGiá thị trường:	11.999.000 đ\r\nGiá khuyến mại:	10.499.000 đ (Tiết kiệm 1.500.000 đ) [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nMô tả chi tiết\r\n\r\nHãng sản xuất\r\n\r\nIntel\r\n\r\nChủng loại\r\n\r\nCore i9 9900K\r\n\r\nDòng CPU\r\n\r\nCoffee lake refresh\r\n\r\nTốc độ\r\n\r\n3.6 GHz up to 5.0 GHz\r\n\r\nBus Ram hỗ trợ\r\n\r\nDDR4 2666\r\n\r\nNhân CPU\r\n\r\n8\r\n\r\nLuồng CPU\r\n\r\n16\r\n\r\nBộ nhớ đệm\r\n\r\n16MB L3 Cache\r\n\r\nĐồ họa tích hợp\r\n\r\n \r\n\r\nDây truyền công nghệ\r\n\r\n \r\n\r\nĐiện áp tiêu thụ tối đa\r\n\r\n95W\r\n\r\nPhụ kiện đi kèm\r\n\r\nĐánh giá sản phẩm CPU Intel Core i9-9900K Hiệu suất cao, xứng đáng để nâng cấp\r\n\r\nIntel đã tung ra những CPU mới nhất của thế hệ Coffee lake Refesh cho phân khúc mainstream của họ. Ba chiếc CPU trải dần từ phân khúc đầu bảng đến tầm cận cao cấp là Intel Core i9-9900K, Intel Core i7-9700K, Intel Core i5-9600K. Tất cả các mẫu CPU Intel này đều dùng chung với socket LGA 1151v2 như các CPU thế hệ thứ 8.\r\n\r\nTrong đó Intel Core i9-9900K là vi xử lý đóng vai trò hàng đầu trong dòng series mới thế hệ thứ 9 của Intel. Được định danh thay thế cho CPU Core i7-8700K ở vị thế flagship và hiệu năng sẽ nhỉnh hơn rất nhiều với 8 nhân 16 luồng xử lý. Xung nhịp mặc định của CPU này là 3.6GHz và turbo boost ở mức 5.0GHz ở một hoặc nhân, 4.8GHz ở 4 nhân và 4.7GHz ở 6 hoặc 8 nhân. Để có thể chạy ổn định ở mức này các bạn nên sử dụng chung CPU với một chiếc tản nhiệt mua ngoài để tăng khả năng ổn định của CPU ở cường độ cao, đặc biệt là ép xung. \r\n\r\nNgoài những tính năng đã qúa quen thuộc của Kiến trúc Coffee Lake mạnh mẽ của Intel với 6 nhân vào năm ngoái thì dòng sản phẩm mới này có những tính năng đáng giá giúp tăng hiệu năng  trong các ứng dụng đa luồng, đa nhiệm.\r\n\r\nCPU Intel Core i9 đầu tiên thuộc dòng hiệu năng cao cho phân khúc CPU chủ lực của hãng.\r\n\r\nLên đến 8 nhân.\r\n\r\nTương thích với chipset Z390.\r\n\r\nCPU được hàn lên IHS (Solder Thermal Interface Material - STIM).\r\n\r\nĐược tích hợp USB 3.1 gen 2 và Wifi-AC của Intel.\r\n\r\nLên đến 16 luồng, 5.0GHz, 16MB cache và 40 làn PCIe (16 CPU + 24 PCH).\r\n\r\nTương thích với toàn bộ chipset Intel 300 series.\r\n\r\nHỗ trợ Intel Optane Memory và Intel Optane SSD.\r\n\r\nHỗ trợ Thunderbolt 3.\r\n\r\nrông đó đáng chú ý là hãng Intel cũng thực hiện việc hàn die của CPU lên thẳng IHS (integrated heat spreader - bề mặt phân tán nhiệt tích hợp) được mạ vàng cũng giúp CPU tải nhiệt tốt hơn, mát hơn. \r\n\r\nSolder TIM của Intel cho phép bộ xử lý giảm nhiệt dễ dàng hơn trong quá trình hoạt động, giúp Core i9-9900K vẫn nằm trong cùng một TDP 95W giống như người tiền nhiệm của nó mặc dù nó đi kèm với hai lõi bổ sung.\r\n\r\nNói sơ qua về chân cắm cpu như đã đề cập ở phía trên thì CPU Intel Core i thế hệ thứ 9 sử dụng chung chân chân cắm với CPU Coffee lake thế hệ thứ 8 là LGA 1151v2. Do dùng chung chân socket nên việc gắn chéo CPU thế hệ 9 cho bo mạch chủ chipset 300 series trước đó vẫn được sau khi đã update Bios, trở ngại có lẽ chỉ là sự ổn định khi overclock mà thôi. Nên với Core i9 9900K để phát huy hết hiệu năng của nó người dùng nên cân nhắc lựa chọn Mainboard cao cấp sử dụng dòng chipset Z390 mới nhất vừa ra mắt.', 0, 0),
(45, 'CPU Intel Core i9-10850K Avengers Edition', 4, 4, 141, 'CPU Intel Core i9-10850K Avengers Edition (3.6GHz turbo up to 5.2GHz, 10 nhân 20 luồng, 20MB Cache, 95W) - Socket Intel LGA 1200\r\n\r\nThông số sản phẩm\r\nPhiên bản đặc biệt với vỏ hộp Avengers từ Marvel\r\n10 nhân & 20 luồng\r\nXung nhịp: 3.6GHz (Cơ bản) / 5.2GHz (Boost)\r\nSocket: LGA1200\r\nĐã tích hợp sẵn iGPU\r\nĐã mở khóa hệ số nhân\r\nKhông đi kèm tản nhiệt\r\n\r\nGiá khuyến mại:	10.499.000 đ [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nTHÔNG SỐ CƠ BẢN\r\n\r\nThương hiệu\r\n\r\nIntel\r\n\r\nLoại CPU\r\n\r\nDành cho máy bàn\r\n\r\nThế hệ\r\n\r\nCore i9 Thế hệ thứ 10\r\n\r\nTên gọi\r\n\r\nCore i9-10850K Avengers Edition\r\n\r\nCHI TIẾT\r\n\r\nSocket\r\n\r\nLGA1200\r\n\r\nTên thế hệ\r\n\r\nComet Lake\r\n\r\nSố nhân\r\n\r\n10\r\n\r\nSố luồng\r\n\r\n20\r\n\r\nTốc độ cơ bản\r\n\r\n3.6 GHz\r\n\r\nTốc độ tối đa\r\n\r\n5.2 GHz\r\n\r\nCache\r\n\r\n20MB\r\n\r\nTiến trình sản xuất\r\n\r\n14nm\r\n\r\nHỗ trợ 64-bit\r\n\r\nCó\r\n\r\nHỗ trợ bộ nhớ\r\n\r\nDDR4-2933\r\n\r\nHỗ trợ số kênh bộ nhớ\r\n\r\n2\r\n\r\nĐánh giá sản phẩm CPU Intel Core i9-10850K Avengers Edition (3.6GHz turbo up to 5.2GHz, 10 nhân 20 luồng, 20MB Cache, 95W) - Socket Intel LGA 1200\r\nLà sản phẩm nằm trong chuỗi Collector Edition của tựa game Marvel’s Avengers, i9-10850K phiên bản đặc biệt sẽ mang lại làn gió mới cho line-up của Intel.\r\n\r\nSức ảnh hưởng của các Avengers đang ngày càng lan tỏa khi không chỉ đơn thuần là những anh hùng trong truyện tranh, họ đã lấn sân sang mảng điện ảnh và giờ đây là cả game. Với giá trị thương hiệu lên đến nhiều tỷ USD như hiện tại cùng số lượng fan đông đảo thì Người khổng lồ xanh trong ngành sản xuất bán dẫn là Intel cũng không thể bỏ qua cơ hội được đứng chung sân với các siêu anh hùng của Marvel được nữa.\r\n\r\nSự kết hợp trên thực chất không nằm ngoài dự đoán của người hâm mộ, nếu các bạn còn nhớ thì vào năm ngoái, Intel đã công bố họ sẽ làm việc sát sao với Square Enix – đơn vị phát hành tựa game Marvel Avengers nhằm đảm bảo hiệu năng của trò chơi này trên các hệ thống của Intel sẽ là trơn tru, mượt mà nhất.\r\n\r\nTheo đó để đánh dấu sự hợp tác này, vỏ hộp của những chiếc CPU phiên bản Avengers được thiết kế bởi họa sĩ, nghệ sĩ đại chúng nổi tiếng Tristan Eaton sẽ đem lại một phiên bản giới hạn đặc sắc cho những fan của Marvel, đồng thời cũng mở ra cơ hội sở hữu cho những nhà sưu tầm muốn lưu lại những khoảnh khắc “đặc biệt” trong lịch sử phát triển của Intel.\r\n\r\nLược bỏ đi công nghệ vPro - thứ vốn dành cho doanh nghiệp vừa và nhỏ, i9-10850K sẽ tập trung phục vụ các game thủ cao cấp, những người muốn hưởng thụ tất cả những gì mạnh mẽ của gã khổng lồ i9-10900K đồng thời tối ưu hóa chi phí lắp ráp linh kiện.\r\n\r\nVới các CPU khác thì về mặt thông số kỹ thuật, phiên bản Avengers sẽ không khác biệt so với phiên bản thông thường đang được bày bán ngoài vỏ hộp siêu ngầu mang tính chất sưu tầm. Giá của chúng cũng không khác biệt quá lớn nên những người dùng Intel đã mua phiên bản thường không có gì phải lo lắng.\r\n\r\nNhững chiếc CPU đặc biệt này đang trên đường về đến HANOICOMPUTER, các bạn hãy chú ý theo dõi các kênh truyền thông của chúng tôi để cập nhật nhanh nhất giá bán cụ thể và hình ảnh thực tế của chúng nhé.', 0, 1),
(46, 'CPU Intel Core i9-10940X', 4, 4, 117, 'CPU Intel Core i9-10940X (3.3GHz turbo up to 4.6GHz, 14 nhân, 28 luồng, 19.25 MB Cache, 165W) - Socket Intel LGA 2066)\r\n\r\nThông số sản phẩm\r\nCPU Core i thế hệ thứ 10 của Intel\r\n14 nhân & 28 luồng\r\nXung cơ bản: 3.3 GHz\r\nXung tối đa (boost): 4.6 GHz\r\nChạy tốt trên các mainboard socket 2066\r\nPhù hợp cho những nhà sáng tạo nội dung\r\nGiá khuyến mại:	23.999.000 đ [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nTHÔNG SỐ CƠ BẢN\r\n\r\nThương hiệu\r\n\r\nIntel\r\n\r\nLoại CPU\r\n\r\nDành cho máy bàn\r\n\r\nThế hệ\r\n\r\nCore i9 Thế hệ thứ 10\r\n\r\nTên gọi\r\n\r\nCore i9-10940X\r\n\r\nCHI TIẾT\r\n\r\nSocket\r\n\r\nLGA 2066\r\n\r\nTên thế hệ\r\n\r\nCascade Lake\r\n\r\nSố nhân\r\n\r\n12\r\n\r\nSố luồng\r\n\r\n28\r\n\r\nTốc độ cơ bản\r\n\r\n3.3 GHz\r\n\r\nTốc độ tối đa\r\n\r\n4.6 GHz\r\n\r\nCache\r\n\r\n19.25MB\r\n\r\nTiến trình sản xuất\r\n\r\n14nm\r\n\r\nHỗ trợ 64-bit\r\n\r\nCó\r\n\r\nHỗ trợ Siêu phân luồng\r\n\r\nCó\r\n\r\nHỗ trợ bộ nhớ\r\n\r\nDDR4 2933 MHz\r\n\r\n\r\nĐánh giá sản phẩm CPU Intel Core i9-10940X Hiệu suất cao, xứng đáng để nâng cấp\r\nDù bạn xử lý một bộ phim truyện mới nhất hay phần tiếp theo của một chuỗi video trên YouTube, dòng bộ xử lý chuỗi Intel® Core™ X không khóa được thiết kế nhằm đáp ứng các quy trình sáng tạo đòi hỏi cao nhất của bạn: Với đến 18 lõi AVX-512 được bật và công nghệ Intel® Turbo Boost Max Technology 3.0 tiên tiến hướng các khối lượng công việc quan trọng nhất của bạn vào bốn lõi nhanh nhất của bộ xử lý. Trải nghiệm hiệu năng cực đỉnh, hình ảnh 4K chân thực, bộ nhớ và bộ lưu trữ tốc độ cao cùng các cải tiến công nghệ mới nhất - tất cả đều được thiết kế nhằm giúp bạn rút ngắn thời gian từ khâu lập kế hoạch cho đến sản phẩm cuối cùng nhanh hơn bao giờ hết.\r\n\r\nNguồn năng lượng cho khả năng sáng tạo của bạn\r\n\r\nSáng tạo nhiều hơn, chờ đợi ít hơn. Dòng CPU Intel Core X có thể xử lý quy trình sáng tạo đòi hỏi khắt khe nhất của bạn. Đăng tải và chỉnh sửa video 360* nhanh hơn cũng như trải nghiệm video VR, tất cả đều ở độ phân giải 4K tuyệt đẹp. Không có giới hạn nào cho khả năng sáng tạo trên máy tính của bạn.\r\n\r\nĐẩy lùi các giới hạn\r\nDòng bộ xử lý chuỗi Intel® Core™ X không khóa để tăng khả năng mở rộng. Các tính năng bao gồm khả năng ép xung1 cho từng lõi, kiểm soát tỉ lệ AVX để thêm độ ổn định, và kiểm soát điện áp VccU cho các kịch bản ngặt nghèo. Kết hợp với những công cụ như Intel® Performance Maximizer mới, Intel® Extreme Tuning Utility (Intel® XTU) và Intel® Extreme Memory Profile (Intel® XMP), bạn sẽ có một bộ công cụ mạnh mẽ để đạt mức hiệu năng tối đa.\r\n\r\nCông nghệ liên quan\r\nVideo: Intel® Turbo Boost Max Technology 3.0\r\n\r\nTăng hiệu suất xử lý của máy tính. Có sẵn trên dòng bộ xử lý chuỗi Intel® Core™ X, Công nghệ Intel® Turbo Boost Max Technology 3.0 nâng cao hướng các khối lượng công việc quan trọng nhất của bạn vào bốn lõi nhanh nhất của bộ xử lý để tăng hiệu năng khi xử lý các tác vụ phân luồng nhẹ.\r\n\r\nIntel® Deep Learning Boost (Intel® DL Boost)\r\n\r\nIntel® Deep Learning Boost (Intel® DL Boost) là một công nghệ mới duy nhất chỉ có ở kiến trúc Intel®, được thiết kế để tăng tốc độ trí tuệ nhân tạo nhằm giúp gắn thẻ hình ảnh nhanh hơn, cải thiện hình ảnh và theo dõi chuyển động ít bị đánh dấu.\r\n\r\nCông nghệ Intel® Optane™\r\n\r\n\r\nCông nghệ Intel® Optane™ là một thế hệ bộ nhớ bảo vệ dữ liệu hoàn toàn mới. Tốc độ cao và mật độ của loại bộ nhớ này giúp loại bỏ những sự cố khi xử lý và cải thiện hiệu năng trong các ứng dụng đòi hỏi khắt khe như dữ liệu lớn, điện toán hiệu năng cao (HPC), ảo hóa, lưu trữ, đám mây và chơi game.2\r\n\r\nIntel® Wi-Fi 6 (Gig+)\r\nMáy tính và mạng không dây có hỗ trợ Intel® Wi-Fi 6 (Gig+) đem đến cho người dùng sự cải tiến theo thế hệ về mặt hiệu năng Wi-Fi, quản lý lưu lượng, cải thiện độ trễ, tránh gián đoạn và tăng cường bảo mật để đạt được khả năng kết nối tốt nhất.\r\n\r\nĐiểm benchmark của CPU Intel Core i9-10940X\r\n\r\n', 0, 0),
(47, 'DDRam 4 Kingston ECC 32GB/2666', 6, 5, 124, 'DDRam 4 Kingston ECC 32GB/2666 - KSM26RD4/32HAI Registered\r\n\r\nThông số sản phẩm\r\nDòng sản phẩm ECC của Kingston\r\nDung lượng: 1 x 32GB\r\nThế hệ: DDR4\r\nBus: 2666MHz\r\nGiá khuyến mại:	6.190.000 đ [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nMô tả chi tiết\r\n\r\nHãng sản xuất\r\n\r\nKingston\r\n\r\nChủng loại\r\n\r\nKSM26RD4/32HAI\r\n\r\nDung lượng\r\n\r\n32GB\r\n\r\nLoại bộ nhớ\r\n\r\nDDR4 2666 ECC Registered\r\n\r\nĐánh giá sản phẩm DDRam 4 Kingston ECC 32GB/2666 - KSM26RD4/32HA | chính hãng tại HANOICOMPUTER\r\nECC:  viết tắt của cụm từ Error Checking and Correction – nghĩa là kiểm tra và sửa lỗi.\r\n\r\nRAM ECC: là thanh RAM ECC có khả năng tự động sửa lỗi,có khả năng điều khiển được dòng dữ liệu ra và vào.\r\n\r\n\r\nVới Ram ECC: khi có lỗi xảy ra nó chỉ cần yêu cầu gửi lại đúng gói tin bị lỗi và sau đó tiếp tục tiến trình làm việc( vì RAM ECC quản lý được dòng dữ liệu, tự sửa lỗi ) , đem đến sự ổn định, tránh rủi ro cho người dùng.\r\n\r\nRAM ECC REG là gì (Registered Memory) ?\r\n\r\nLà loại SDRAM có các thanh ghi (register) được gắn trực tiếp trên module nhớ. Các thanh ghi (register) tái định hướng (re-drive) các tín hiệu qua các chip nhớ và cho phép module chứa nhiều chip nhớ hơn. Registered memory và unbuffered memory không thể được dùng chung với nhau trong một máy tính.\r\n\r\n', 1, 0),
(48, 'Kit RAM 4 Kingston HyperX Fury Black 16GB', 6, 5, 109, 'Kit RAM 4 Kingston HyperX Fury Black 16GB bus 2666MHz (2*8GB) - HX426C16FB3K2/16\r\n\r\nThông số sản phẩm\r\nDòng sản phẩm cơ bản của Kingston\r\nDung lượng: 2 x 8GB\r\nThế hệ: DDR4\r\nBus: 2666MHz\r\nSản phẩm cùng nhóm\r\nGiá thị trường:	2.399.000 đ\r\nGiá khuyến mại:	2.069.000 đ (Tiết kiệm 330.000 đ) [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nTHÔNG TIN CƠ BẢN\r\n\r\nThương hiệu\r\n\r\nKINGSTON\r\n\r\nLoại Ram\r\n\r\nDesktop\r\n\r\nDòng\r\n\r\nHyperX Fury Series\r\n\r\nMã Part\r\n\r\nHX426C16FB3K2/16\r\n\r\nCHI TIẾT\r\n\r\nDung lượng\r\n\r\n16GB (2 x 8GB)\r\n\r\nLoại\r\n\r\nDDR4\r\n\r\nTốc độ\r\n\r\n2666 MHz\r\n\r\nĐộ trễ\r\n\r\n16\r\n\r\nHiệu điện thế\r\n\r\n1.2V\r\n\r\nECC\r\n\r\nKhông hỗ trợ\r\n\r\nĐóng gói\r\n\r\nBộ kit 2 thanh\r\n\r\nMàu sắc\r\n\r\nĐen\r\n\r\nTản nhiệt\r\n\r\nCó\r\n\r\nMàu LED\r\n\r\nKhông\r\n\r\nĐánh giá sản phẩm Kit RAM 4 Kingston HyperX Fury Black 16GB bus 2666MHz 2*8GB\r\n\r\nBộ tản nhiệt cấu hình thấp hiện đại\r\nBộ tản nhiệt mới bóng đẹp là giải pháp nâng cấp tuyệt vời cho phong cách của giàn máy chiến đấu của bạn.\r\n\r\nNâng cấp hiệu năng cao, hiệu quả về chi phí\r\nHyperX FURY DDR4 là lựa chọn hoàn hảo cho nhà xây dựng hệ thống hoặc người muốn tìm một giải pháp nâng cấp để tăng tốc cho hệ thống chậm chạp của mình.\r\n\r\nTương thích với Intel XMP\r\nCác kỹ sư của chúng tôi đã lập sẵn các Cấu hình Bộ nhớ Cực đỉnh Intel được thiết kế để tối đa hóa hiệu năng của các thẻ bộ nhớ, đạt tốc độ lên đến 3733MHz.\r\n\r\nTương thích với AMD Ryzen\r\nMua bộ nhớ sẽ tích hợp thông suốt với hệ thống AMD của bạn. Một bản nâng cấp hiệu năng đáng tin cậy và tương thích cho hệ thống của bạn.\r\n\r\nCắm và Chạy – Tự động ép xung lên đến 2666MHz\r\nLà giải pháp nâng cấp Cắm và Chạy đơn giản và dễ dùng, HyperX FURY DDR4 sẽ tự động ép xung lên tốc độ công bố cao nhất mà BIOS hệ thống cho phép.\r\n\r\n', 1, 0),
(49, 'Mainboard Asus Z11PA-D8', 5, 2, 133, 'Mainboard ASUS Z590 ROG MAXIMUS XIII EXTREME GLACIAL \r\n\r\nThông số sản phẩm\r\nChipset: Intel Z590\r\nSocket: LGA1200\r\nKích thước: E-ATX\r\nSố khe RAM: 4\r\nTích hợp block tản nhiệt nước\r\n\r\nGiá khuyến mại:	40.990.000 đ [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nTên gọi\r\n\r\nASUS Z590 ROG MAXIMUS XIII EXTREME GLACIAL\r\n\r\nCPU hỗ trợ\r\n\r\nIntel® Socket LGA1200 for 11th Gen Intel® Core™ processors & 10th Gen Intel® Core™, Pentium® Gold and Celeron® Processors Supports Intel® 14 nm CPU\r\n\r\nChipset / Socket\r\n\r\nIntel® Z590 Chipset\r\n\r\nBộ nhớ (RAM)\r\n\r\n4 x DIMM, Max. 128GB, DDR4 5333(OC)/ 5133(OC)/ 5000(OC)/ 4800(OC)/ 4700(OC)/ 4600(OC)/ 4500(OC)/ 4400(OC)/ 4266(OC)/ 4133(OC)/ 4000(OC)/ 3866(OC)/ 3733(OC)/ 3600(OC)/ 3466(OC)/ 3400(OC)/ 3333(OC)/ 3200/ 3000/ 2933/ 2800/ 2666/ 2400/ 2133 MHz Non-ECC, Un-buffered Memory\r\n\r\nDual Channel Memory Architecture Supports Intel® Extreme Memory Profile (XMP) OptiMem III\r\n\r\nCông nghệ đa GPU\r\n\r\nNVIDIA 2-Way SLI® Technology\r\n\r\nKhe cắm mở rộng\r\n\r\nIntel® 11th &10th Gen Processors 2 x PCIe 4.0/3.0 x16 slot(s)\r\n\r\n- Intel® 11th Core™ processors support PCIe 4.0 x16 or x8/x8 mode(s)\r\n\r\n- Intel® 10th processors support PCIe 3.0 x16 or x8/x8 mode(s) Intel® Z590 Chipset 1 x PCIe 3.0 x4 slot\r\n\r\nLAN / Wireless\r\n\r\n1 x Intel® I225-V 2.5Gb Ethernet\r\n\r\n1 x Marvell® AQtion AQC113CS 10Gb Ethernet\r\n\r\nÂm thanh\r\n\r\nROG SupremeFX 7.1 Surround Sound High\r\n\r\nĐánh giá sản phẩm Mainboard ASUS Z590 ROG MAXIMUS XIII EXTREME GLACIAL \r\nMainboard ASUS Z590 ROG MAXIMUS XIII EXTREME GLACIAL - là bo mạch chủ sử dụng chipset Z590 của Intel cao cấp nhất của Asus.Bo mạch chủ này sử dụng socket LGA 1200 có thể chạy được CPU Intel Core thế hệ 10 & 11.\r\n\r\nThiết kế\r\nMainboard ASUS Z590 ROG MAXIMUS XIII EXTREME GLACIAL sở hữu thiết kế cực kỳ hầm hố với block tản nhiệt nước được tích hợp sẵn được gia công bởi thương hiệu hàng đầu EK. Phần giáp tản nhiệt kim loại được bố trí gần như 80% diện tích bề mặt của bo mạch chủ, đảm bảo khả năng tản nhiệt tốt nhất có thể cho toàn bộ các linh kiện\r\n\r\nTrang bị\r\n20 phase nguồn (18+2) - 100A\r\nUSB 3.2 gen 2 Type C\r\n5 Khe M.2 PCI-e gen 4\r\nWifi 6\r\nThunderbolt 4 Support\r\n\r\nCác tính năng chính\r\nNâng cấp lớn nhất của các bo mạch chủ Z590 so với Z490 đó là sự hỗ trợ của kết nối PCI-e thế hệ 4.0 cho băng thông gấp đôi thế hệ 3.0 trước đó. Với sự hỗ trợ của băng thông lớn, giờ đây các ổ cứng SSD M.2 sử dụng trên bo mạch chủ Z590 có thể cho tốc dộ lên đến 7500Mb/s. \r\n\r\nNâng cấp thứ 2 đó là bus RAM mặc định được tăng từ 2933Mhz (Z490) lên 3200Mhz (Z590)\r\n\r\nNgoài ra, Asus còn tích hợp trên các bo mạch chủ của mình tính năng giảm nhiễu Audio 2 chiều cho khả năng đàm thoại rõ ràng hơn bao giờ hết. \r\n\r\nBo mạch chủ tích hợp trí thông minh nhân tạo\r\nCác bo mạch chủ của Asus tích hợp trí thông minh nhân tạo được phát triển trong nhiều năm cho phép Overclock CPU, tự động điều chỉnh tốc độ quạt để tối ưu tản nhiệt và nhiều tính năng tự động khác. \r\n\r\nThu gọn \r\n\r\nThông số sản phẩm\r\nĐược hỗ trợ bởi nền tảng Intel® Xeon® Scalable có 8 khe DIMM hỗ trợ 3DS ECC RDIMMS hoặc LRDIMMS hỗ trợ lên đến DDR4-2666 và 4 cổng mạng Gigabit LAN cùng một LAN quản lý chuyên dụng. Z11PE-D8 mang lại dung lượng bộ nhớ và băng thông dữ liệu tốt nhất.\r\nBo mạch chủ kích cỡ CEB với lỗ gắn chuẩn ATX để gắn linh hoạt vừa với các case phôt thông, tháp, hoặc rack có kích thước nhỏ gọn 12 ”x 10.5” dành cho nhóm SMB (Small Business), Print / File / Mail, Máy chủ lưu trữ phổ thông, xử lý số liệu, Render...\r\n\r\nGiá khuyến mại:	15.999.000 đ [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật chi tiết Mainboard Asus Z11PA-D8 (Dual CPU Server & Workstation)\r\nMô tả chi tiết\r\n\r\nHãng sản xuất\r\n\r\nASUS\r\n\r\nChủng loại\r\n\r\nZ11PA-D8\r\n\r\nCPU hỗ trợ\r\n\r\n2 x Socket P (LGA 3647)\r\n\r\nIntel® Xeon® Scalable Processors Family (165W)\r\n\r\nChipset\r\n\r\nIntel® Lewisburg PCH C621\r\n\r\nBộ nhớ trong\r\n\r\n8 (4 kênh cho mỗi CPU, 4 DIMM mỗi CPU) \r\n\r\nDDR4 ECC RDIMM / LRDIMM / 2666 / 2400\r\n\r\nDung lượng Ram tối đa lên tới 256GB RDIMM\r\n\r\nDung lượng Ram tối đa lên tới 512GB LRDIMM\r\n\r\nDung lượng Ram tối đa lên tới 1024GB LR-DIMM 3DS\r\n\r\n \r\n\r\nVGA onboard\r\n\r\nAspeed AST2500 with 64MB VRAM\r\n\r\nÂm thanh\r\n\r\nKhông tích hợp\r\n\r\nKhe mở rộng\r\n\r\nSlot Location 1 : PCI-E x8\r\n\r\nSlot Location 3 : PCI-E x16\r\n\r\nSlot Location 5 : PCI-E x16\r\n\r\nSlot Location 6 : Khe cắm dành cho card Audio MIO\r\n\r\nChuẩn lưu trữ\r\n\r\nSATA Controller :\r\n\r\nIntel® C621 12 x SATA3 6Gb/s ports (12 by 3 mini-SAS Connector)\r\n\r\nIntel® Rapid Storage Technology Enterprise(RSTe) (For Linux/Windows)\r\n\r\n(Support Software RAID 0, 1, 5, 10 )\r\n\r\n4 SATA3 6Gb/s port by 1miniSAS connector (Marvell 88SE9230)\r\n\r\nIntel® VROC (for Windows only; Support software RAID 0, 1, 10 & 5)\r\n\r\nCổng giao tiếp I/O sau\r\n\r\n4 x USB 3.0 ports\r\n\r\n1 x VGA port\r\n\r\n4 x RJ-45 GbE LAN ports\r\n\r\n1 x RJ-45 Mgmt LAN port\r\n\r\nGiải pháp quản trị\r\n\r\nACC(ASUS Control Center)\r\n\r\nOptional ASMB9-iKVM for KVM-over-Internet\r\n\r\nKích thước\r\n\r\nCEB (12\"x10.5\", 305mm x 267mm)\r\n\r\nPhụ kiện đi kèm\r\n\r\nI/O Shield\r\n\r\n1 x Supporting DVD\r\n\r\n2 x LGA3647 carrier\r\n\r\n(Tùy vào quốc gia và vùng phụ kiện đi kèm sẽ khác nhau)\r\n\r\nĐánh giá sản phẩm Mainboard Asus Z11PA-D8\r\n\r\nBo mạch chủ ASUS Z11PA-D8 Bo mạch chủ CEB Socket-P LGA3647 cho bộ xử lý Intel Xeon Scalable\r\n\r\nĐược hỗ trợ bởi nền tảng Intel® Xeon® Scalable có 8 khe DIMM hỗ trợ 3DS ECC RDIMMS hoặc LRDIMMS hỗ trợ lên đến DDR4-2666 và 4 cổng mạng Gigabit LAN cùng một LAN quản lý chuyên dụng. Z11PE-D8 mang lại dung lượng bộ nhớ và băng thông dữ liệu tốt nhất.\r\n\r\nBo mạch chủ kích cỡ CEB với lỗ gắn chuẩn ATX để gắn linh hoạt  vừa với các case phôt thông, tháp, hoặc rack có kích thước nhỏ gọn 12 ”x 10.5” dành cho nhóm SMB (Small Business), Print / File / Mail, Máy chủ lưu trữ phổ thông, xử lý số liệu, Render...\r\n\r\n2 cổng OCuLink cung cấp kết nối port-to-port hiệu quả với hầu hết các thiết bị NVMe được hỗ trợ bởi OCuLink, loại bỏ sự cần thiết của các card giao tiếp PCIe.\r\n\r\nKhe tích hợp M.2 (NGFF) 22110 tích hợp hỗ trợ lưu trữ hệ điều hành và băng thông PCIe 3.0 x4 cho tốc độ khởi động nhanh hơn 5,3 lần so với SATA 6 Gb / giây.\r\n\r\nBốn mini-SAS HD hỗ trợ tới 16x cổng SATA cho kết nối 6Gb / s tốc độ cao với các thiết bị bên ngoài và định tuyến cáp tốt hơn.\r\n\r\nHiệu năng mạnh mẽ với bộ xử lý Intel® Xeon® Scalable và bộ nhớ ECC\r\n\r\nZ11PA-D8 được xây dựng trên nền tảng Intel® Xeon® Scalable để mang lại hiệu suất cao hơn cho mỗi lõi và bốn kênh bộ nhớ cung cấp nhiều bộ nhớ và băng thông hơn 50%, nhanh hơn 1,65x mức trung bình cấp độ hiệu suất hệ thống so với thế hệ vi xử lý trước. Nền tảng Intel® Xeon® Scalable cũng mang lại hiệu suất ảo hóa tốt hơn, cho phép thêm 4.2x máy ảo (VM) cho mỗi hệ thống.\r\n\r\nVới 8 khe DIMM hỗ trợ tổng dung lượng bộ nhớ lên tới 1TB 3DS LRDIMM hoặc 512GB LRDIMM DDR4-2666 / 2400 tốc độ cao, Z11PA-D8 mang lại khả năng bộ nhớ hàng đầu cho doanh nghiệp của bạn.\r\n\r\n\r\n\r\nTăng hiệu suất hoặc dự phòng dữ liệu với M.2 SSD kép ở chế độ RAID\r\n\r\nM.2 SSD SATA kép cho phép hiệu suất cao nhất hoặc dự phòng dữ liệu ở chế độ RAID\r\n\r\nTrong việc tối đa hóa cấu hình RAID 0 với 2 ổ M.2 SSD, tốc độ ghi lên tới 40% nhanh hơn so với thiết lập 1 ổ M.2 SSD và hoạt động đọc nhanh hơn đáng kinh ngạc 84%. Để đảm bảo toàn vẹn, hãy ghép các thiết bị M.2 của bạn thành cấu hình RAID 1 cho dự phòng dữ liệu tức thì. Z11PA-D8 đi kèm với một tùy chọn RAID ảo trên CPU (VROC) cho phép kết nối để hỗ trợ ổ NVMe SSD với công nghệ Intel® Volume Management Device. Các ổ SSD NVMe được kết nối trực tiếp với CPU, cho phép giảm độ trễ và tăng băng thông, đồng thời giảm tiêu thụ điện năng xuống 15W so với card RAID phần cứng truyền thống.\r\n\r\nHỗ trợ giao diện lưu trữ tốc độ cao với 2 OCULink cho NVMe\r\n\r\n2 OCuLink cho kết nối hiệu quả với các thiết bị NVMe\r\n\r\nZ11PA-D8 có tính năng OCULink kép trên bo mạch để cung cấp kết nối port-to-port hiệu quả với hầu hết các thiết bị NVMe được hỗ trợ bởi OCuLink, loại bỏ sự cần thiết của các card giao tiếp PCIe.\r\nKết nối tối đa 16 thiết bị lưu trữ SATA 6Gb / s\r\n\r\nZ11PA-D8 đi kèm với bốn đầu nối mini-SAS HD hỗ trợ tới 16 cổng SATA cho mỗi kết nối 6Gb / s tốc độ cao với các thiết bị bên ngoài và định tuyến cáp tốt hơn.\r\n\r\nPhần mềm quản lý hạ tầng CNTT toàn diện\r\n\r\nZ11PA-D8 có mô-đun iKVM nhúng và được tích hợp với phần mềm ASUS Control Center để cung cấp các tính năng quản lý trong dải và ngoài dải cho các doanh nghiệp vừa và nhỏ:\r\n\r\nTrung tâm điều khiển ASUS (ACC) là một nền tảng quản lý CNTT tích hợp và tập trung để theo dõi và kiểm soát các sản phẩm thương mại của ASUS, bao gồm máy chủ, máy trạm và bảng điện tử... ACC cho phép quản lý máy chủ dễ dàng hơn với các chức năng như cập nhật BIOS, giám sát từ xa của nhiều hệ thống thông qua các thiết bị di động. Cập nhật và gửi đi một phần mềm trong cú nhấp chuột\r\n', 1, 1),
(50, 'Mainboard ASUS Z590 ROG MAXIMUS XIII', 5, 2, 118, 'A sleeveless sheath dress that works for you 24-7. This ribbed beauty\'s shapely silhouette and exposed front zipper make it an ideal option for happy hour or a swanky dinner date.', 1, 0),
(51, 'Mainboard GIGABYTE Z390 UD', 5, 3, 152, 'Mainboard GIGABYTE Z390 UD (Intel Z390, Socket 1151, ATX, 4 khe RAM DDR4)\r\n\r\n\r\nThông số sản phẩm\r\nHỗ trợ bộ vi xử lý Intel® Core ™ thế hệ thứ 9 và thứ 8\r\nDDR4 không có ECC, 4 DIMM\r\nThiết kế PWM kỹ thuật số 10 + 2 pha mới\r\nĐầu nối NVMe PCIe Gen3 x4 22110 M.2\r\nHỗ trợ đồ họa đa chiều với thiết bị siêu mỏng PCIe Armor và Ultra Durable ™\r\n\r\nGiá thị trường:	3.299.000 đ\r\nGiá khuyến mại:	3.199.000 đ (Tiết kiệm 100.000 đ) [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nBộ vi xử lý	\r\nSupport for 9th and 8th Generation Intel® Core™ i9 processors/Intel® Core™ i7 processors/Intel® Core™ i5 processors/Intel® Core™ i3 processors/Intel® Pentium® processors/Intel® Celeron® processors in the LGA1151 package L3 cache varies with CPU\r\nBộ nhớ Ram	\r\n4 x DDR4 DIMM sockets supporting up to 64 GB of system memory. Support for DDR4 4266(O.C.) / 4133(O.C.) / 4000(O.C.) / 3866(O.C.) / 3800(O.C.) / 3733(O.C.) / 3666(O.C.) / 3600(O.C.) / 3466(O.C.) / 3400(O.C.) / 3333(O.C.) / 3300(O.C.) / 3200(O.C.) / 3000(O.C.) / 2800(O.C.) / 2666 / 2400 / 2133 MHz memory modules\r\nKhe cắm mở rộng	\r\n1 x PCI Express x16 slot, running at x16 (PCIEX16) * For optimum performance, if only one PCI Express graphics card is to be installed, be sure to install it in the PCIEX16 slot. 2 x PCI Express x16 slots, running at x4 (PCIEX4_1/PCIEX4_2) 3 x PCI Express x1 slots\r\nChipset	\r\nIntel® Z390 Express Chipset\r\nGiao tiếp	\r\n8 x USB 3.1 Gen 1 ports (6 ports on the back panel, 2 ports available through the internal USB header) 2 x USB 2.0/1.1 ports available through the internal USB header\r\nLan	\r\nRealtek® GbE LAN chip (10/100/1000 Mbit)\r\nÂm thanh	\r\nRealtek® ALC887 codec High Definition Audio 2/4/5.1/7.1-channel * To configure 7.1-channel audio, you have to use an HD front panel audio module and enable the multi-channel audio feature through the audio\r\n\r\nĐánh giá sản phẩm Mainboard GIGABYTE Z390 UD | HANOICOMPUTER\r\nGiới thiệu mainboard GIGABYTE Z390 UD\r\n\r\nGIGABYTE Z390 UD là mẫu mainboard sử dụng socket 1151-v2 mới nhất của GIGABYTE, hỗ trợ các dòng CPU thế hệ 9 của Intel, kết hợp với nhiều tính năng cao cấp của bộ chipset Z390, hướng tới những người sử dụng và game thủ ở phân khúc cao cấp.\r\n\r\nBộ cấp nguồn\r\nGIGABYTE Z390 UD sử dụng bộ điều khiển cấp nguồn điện tử, đem lại khả năng điều khiển dòng điện chính xác đồng thời với dàn cấp nguồn lên tới 10+2 \"phase\" được cấp nguồn bởi 1 đầu 8pin và 1 đầu 4pin, giúp duy trì sự ổn định của dòng điện cung cấp cho CPU.\r\n\r\nHệ thống tản nhiệt\r\nNhằm đem lại khả năng kiểm soát nhiệt độ tối ưu nhất cho người sử dụng, trên bề mặt của GIGABYTE Z390 UD là 4 chân cắm 4pin (hỗ trợ PWM và DC) và 6 cảm biến nhiệt được đặt ở tất cả các vị trí quan trọng trên bo mạch, người sử dụng hoàn toàn yên tâm về khả năng hỗ trợ tản nhiệt của chiếc mainboard này.\r\n\r\nHiệu năng\r\nGIGABYTE Z390 UD có khả năng hỗ trợ ép xung bộ nhớ lên tới 4266MHz, giúp người sử dụng tận dụng tối đa hiệu năng của các bộ xử lý cao cấp thế hệ 9 của Intel.\r\n\r\nĐối với tốc độ lưu trữ, GIGABYTE Z390 UD có sẵn 1 khe cắm M.2 với tốc độ lên tới 32Gb/s, đáp ứng tốc độ lưu trữ tối đa cho game thủ.\r\n\r\nNgoài ra, Z390 UD còn hỗ trợ bộ nhớ Intel Optane giúp tăng tốc độ truy cập dữ liệu của các ổ cứng HDD và SSD 2.5\".\r\n\r\nÂm thanh\r\nGIGABYTE Z390 UD sử dụng bộ giải mã âm thanh ALC 887 đi kèm với mạch xử lý âm thanh chất lượng cao và thiết kế tốt, đem lại chất lượng âm thanh tuyệt với cộng với bộ amplifier thông minh, có khả năng tự động điều chỉnh trở kháng phù hợp tùy theo loại tai nghe được kết nối.\r\n\r\nUltra Durable\r\nKhe cắm PCI chính trên GIGABYTE Z390 UD được gia cố thêm phần khung thép bên ngoài, tăng cường khả năng chịu lực đối với các dòng card màn hình có kích thước lớn.\r\n\r\nKhông chỉ dừng lại ở đó, GIGABYTE Z390 UD còn có thêm cụm đèn thông báo cho người sử dụng biết khi các linh kiện như CPU, RAM, VGA hoặc HDD gặp phải sự cố nào đấy trong khi hoạt động giúp việc chẩn đoán lỗi trở nên đơn giản và nhanh chóng hơn\r\n\r\nRGB\r\nGIGABYTE Z390 UD sử dụng hệ thống đèn RGB đẹp mắt với khả năng tùy biến cao.\r\n\r\nBIOS và phần mềm đi kèm\r\nGIGABYTE Z390 UD đi kèm với giao diện BIOS mới, mang lại nhiều cải thiện trong thiết kế giao diện, đem lại trải nghiệm sử dụng trực quan và thân thiện hơn.\r\n\r\nĐồng thời, các bộ phần mềm đi kèm như App Center, Easy Tune, @BIOS, System Information Viewer cùng được thiết kế với giao diện dễ sử dụng hơn nhằm đem lại trải nghiệm sử dụng tốt nhất đến tay người sử dụng.\r\n\r\n', 0, 0),
(52, 'HDD Seagate SkyHawk AI 18TB', 7, 7, 127, 'Ổ cứng HDD Seagate SkyHawk AI 18TB (3.5 inch/SATA3/256MB Cache/7200RPM) (ST18000VE002)\r\n\r\nThông số sản phẩm\r\nDung lượng: 18Tb\r\nTốc độ quay: 7200rpm\r\nBộ nhớ Cache: 256Mb\r\nChuẩn giao tiếp: SATA3\r\nKích thước: 3.5Inch\r\nGiá thị trường:	16.999.000 đ\r\nGiá khuyến mại:	15.599.000 đ (Tiết kiệm 1.400.000 đ) [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nMô tả chi tiết\r\n\r\nHãng sản xuất\r\n\r\nSeagate\r\n\r\nChủng loại\r\n\r\nHDD SkyHawk AI\r\n\r\nDung lượng\r\n\r\n18TB\r\n\r\nChuẩn kết nối\r\n\r\nSATA III\r\n\r\nBộ nhớ đệm\r\n\r\n256M cache\r\n\r\nTốc độ vòng quay\r\n\r\n7200 rpm \r\n\r\nTốc độ truyền dữ liệu\r\n\r\n6 Gbps\r\n\r\nLoại ổ cứng\r\n\r\nCơ\r\n\r\nDùng cho\r\n\r\nCamera & NAS & PC\r\n\r\nKích thước\r\n\r\n3.5\'\'\r\n\r\nĐánh giá sản phẩm Ổ cứng HDD Seagate SkyHawk AI 18TB (ST18000VE002) Giá Tốt\r\nỔ cứng HDD Seagate SkyHawk AI 18TB là dòng ổ cứng đầu tiên trên thế giới được thiết kế dành riêng cho các hệ thống sử dụng trí thông minh nhân tạo AI, giúp nhận diện khuôn mặt, tình huống nguy hiểm, biển số xe… để doanh nghiệp dễ dàng thu thập và phân tích dữ liệu theo thời gian thực. Đây cũng là dòng ổ cứng hiếm hoi hỗ trợ các ứng dụng máy học Deep Learning, Machine Learning… nhờ phần mềm ImagePerfect AI tích hợp sẵn, đồng thời hỗ trợ 32 luồng Stream AI liên tục\r\n\r\nDung lượng lớn và bền bỉ\r\nTương tự như hai phiên bản Exos X18 18TB và IronWolf NAS, phiên bản ổ cứng đời mới này cũng sở hữu dung lượng tối đa lên tới 18TB, đáp ứng tốt nhu cầu dung lượng ngày càng lớn của các trung tâm dữ liệu và doanh nghiệp 4.0.\r\n\r\nMặc dù cùng sử dụng thiết kế ổ cứng cơ truyền thống như hai mẫu ổ cứng kể trên, thế nhưng dòng ổ cứng Seagate SkyHawk AI được chế tạo hướng đến khả năng chịu tải lên tới 550TB/năm (gấp 10 lần ổ cứng thông thường), hỗ trợ các rack lưu trữ lên tới 16+ khoang, sử dụng công nghệ khí Helium, tích hợp cảm biến chống rung RV Sensor giúp tăng tuổi thọ và độ ổn định của hệ thống.\r\n\r\nGiảm thiểu chi phí sửa chữa\r\nKhoảng cách giữa các lần phát hiện lỗi MTBF lên đến 2 triệu giờ giúp giảm thiểu chi phí sửa chữa mang đến sự tin cậy cho người dùng khi sử dụng thiết bị lưu trữ hiện đại này.\r\n\r\nHơn nữa, Seagate Skyhawk AI còn được hỗ trợ với tính năng Seagate Data Recovery Plan và Skyhawk Health Management đảm bảo tuổi thọ của ổ cứng cũng như khả năng phục hồi dữ liệu bị mất giúp cho người dùng có thể dễ dàng theo dõi tình trạng của ổ cứng để có thể nhanh chóng phát hiện sự cố phát sinh khi trong quá trình sử dụng.\r\n\r\n', 1, 1),
(53, 'SSD Gigabyte AORUS RGB 512GB M.2 2280', 7, 3, 137, 'Ổ cứng SSD Gigabyte AORUS RGB 512GB M.2 2280 PCIe Gen 3x4 (Đọc 3480MB/s - Ghi 2000MB/s) - (GP-ASM2NE2512GTTDR)\r\n\r\nThông số sản phẩm\r\nDung lượng: 512GB\r\nKích thước: M.2 2280\r\nKết nối: M.2 NVMe\r\nNAND: 3D-NAND\r\nTốc độ đọc / ghi (tối đa): 3480MB/s / 2000MB/s\r\n\r\nGiá thị trường:	2.899.000 đ\r\nGiá khuyến mại:	2.599.000 đ (Tiết kiệm 300.000 đ) [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nTHÔNG TIN CƠ BẢN\r\n\r\nThương hiệu\r\n\r\nGIGABYTE\r\n\r\nDòng\r\n\r\nAORUS RGB\r\n\r\nMã part\r\n\r\nGP-ASM2NE2512GTTDR\r\n\r\nLoại\r\n\r\nInternal Solid State Drive (SSD)\r\n\r\nPhân khúc\r\n\r\nConsumer\r\n\r\nCHI TIẾT\r\n\r\nChuẩn kích cỡ\r\n\r\nM.2 2280\r\n\r\nDung lượng\r\n\r\n512GB\r\n\r\nLoại chip nhớ\r\n\r\n3D-NAND TLC\r\n\r\nGiao tiếp\r\n\r\nNVMe PCIe Gen 3.0 x 4\r\n\r\nHIỆU NĂNG\r\n\r\nTốc độ đọc tối đa\r\n\r\nUp to 3480 MBps\r\n\r\nTốc độ ghi tối đa\r\n\r\nUp to 2000 MBps\r\n\r\nMTBF\r\n\r\nKÍCH CỠ&CÂN NẶNG\r\n\r\nDầy\r\n\r\n8.1mm\r\n\r\nĐánh giá sản phẩm Ổ cứng SSD Gigabyte AORUS RGB 512GB M.2 2280 PCIe Gen 3x4 GPASM2NE2512GTTDR\r\n\r\nHiệu năng đỉnh cao\r\nỔ cứng SSD Gigabyte AORUS RGB 512GB M.2 2280 PCIe Gen 3x4 với bộ giao diện điều khiển NVMe hoàn toàn mới giúp cho ổ cứng có tốc độ đọc lên đến 3480MB/s và tốc độ ghi lên đến 2000MB/s. Ngoài ra bộ tản nhiệt của SSD GIGABYTE AORUS RGB M.2 giúp cho nhiệt độ của SSD luôn giữ ở mức thấp và đảm bảo hiệu năng SSD không bị ảnh hưởng trong lúc sử dụng. Điều này đặc biệt quan trọng đối với game thủ bởi nếu ổ cứng quá nóng sẽ ảnh hưởng đến quá trình chơi game.\r\n\r\nNhờ sử dụng cổng M.2 2280 mà Ổ cứng SSD Gigabyte AORUS RGB 512GB M.2 2280 PCIe Gen 3x4 có thể dễ dàng nâng cấp trên các bộ máy tính. SSD sử dụng cổng M2 ngày càng trở nên phổ biến đối với các bo mạch chủ, bạn có thể dễ dàng nâng cấp SSD để có một trải nghiệm tốt hơn.\r\n\r\nVới hệ thống đèn led RGB hỗ trợ 5 hiệu ứng ánh sáng giúp bạn có thể tùy chình màu theo sở thích của mình. Ngoài ra với giao diện người dùng dễ sử dụng việc tùy chỉnh ánh sáng sẽ dễ dàng hơn trên tất cả những thiết bị được hỗ trợ kết nối. Kèm theo đó có chế độ hiệu ứng ánh sáng tương tác với các trò chơi giúp bạn sẽ rất mãn nhãn khi nhìn vào bộ CASE của mình.\r\n\r\nNgoài ra cùng với công cụ theo dõi SSD mới được cập nhật từ GIGABYTE giúp bạn có thể theo dõi được trạng thái của SSD, phiên bản firmware, tình trạng ổ cứng, tối ưu hóa và theo dõi nhiệt độ của ổ cứng. Hơn nữa người dùng có thể xóa tất cả dữ liệu một cách an toàn khi sử dụng công cụ trên.\r\n\r\n', 0, 0),
(54, 'SSD Kingston Furry RGB 480GB 2.5 inch SATA3', 7, 5, 148, 'Ổ cứng SSD Kingston Furry RGB 480GB 2.5 inch SATA3 (Đọc 550MB/s - Ghi 480MB/s) - (SHFR200/480G)\r\n\r\nGiá khuyến mại:	3.599.000 đ [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\n\r\nThông số kỹ thuật\r\nMô tả chi tiết:\r\n\r\n \r\n\r\nHãng sản xuất\r\n\r\nKingston\r\n\r\nChủng loại\r\n\r\nFury RGB\r\n\r\nDung lượng\r\n\r\n480GB\r\n\r\nChuẩn cắm\r\n\r\nSata 3\r\n\r\nTốc độ đọc\r\n\r\nlên tới 550MB/s\r\n\r\nTốc độ ghi\r\n\r\nlên tới 480MB/s\r\n\r\nChíp nhớ\r\n\r\n3D TLC\r\n\r\nKích thước\r\n\r\n100,14mm x 69,85mm x 9,5mm\r\n\r\nĐánh giá sản phẩm Ổ cứng SSD Kingston Furry RGB 480GB 2.5 inch SATA3 SHFR200/480G\r\n\r\nHiệu suất cực cao, thiết kế mạnh mẽ\r\nỔ Cứng SSD Kingston 240GB HyperX FURY RGB SHFR200/240G mang đến hiệu năng cực kỳ cao và tối ưu phong cách hệ thống Gaming Gear của bạn với hiệu ứng RGB 16 triệu màu, hỗ trợ các hệ Sync của các dòng Mainboard và có thể đồng bộ với các thiết bị có RGB khác trong hệ thống. Công nghẹ 3D-NAND tiên tiến và chip điều khiển Controller Marvell mang đến hiệu năng với tốc độ đọc/ghi lên đến 550/480MB/s. Ổ cứng SSD HyperX Fury đã được kiểm nghiệm và được bảo hành ba năm, hỗ trợ kỹ thuật miễn phí và độ tin cậy huyền thoại.\r\n\r\nHiệu ứng RGB 16 triệu màu\r\nỔ cứng SSD HyperX Fury RGB 3D-NAND với hiệu ứng RGB 16 triệu màu cực kỳ đẹp mắt sẽ giúp hệ thống Gaming Gear của bạn trông hầm hố hơn. hỗ trợ đầy đủ Asus Aura Sync, Gigabyte RGB Fusion ready, MSI Mystic Light Sync, Asrock.\r\n\r\nĐồng bộ với các thiết bị RGB khác\r\nHiệu ứng RGB của ổ cứng SSD HyperX Fury RGB 3D-NAND có thể được đồng bộ với các thiết bị có RGB khác trong hệ thống máy tính của bạn. Giúp các hiệu ứng được hòa quyện một cách thống nhất, cho hệ thống Gaming Gear của bạn nổi bật hơn.\r\n\r\nHiệu năng cực cao với công nghệ 3D-NAND\r\nỔ cứng SSD HyperX Fury RGB 3D-NAND được trang bị công nghệ 3D-NAND mới nhất hiện nay, cho hiệu năng cực kỳ cao và ổn định với giá thành cực kỳ tốt.\r\n\r\n', 0, 0);
INSERT INTO `product` (`id`, `name`, `id_type`, `id_banner_type`, `price`, `description`, `new`, `inCollection`) VALUES
(55, 'Gigabyte AORUS RGB 16GB (2x8GB)', 7, 3, 107, 'Ram Desktop Gigabyte AORUS RGB 16GB (2x8GB) (With Demo Kit) DDR4 3200Mhz (GP_ARS16G32D)\r\n\r\nThông số sản phẩm\r\nKit Ram 16Gb (2x8) với 2 thanh DEMO có LED RGB tặng kèm\r\nBus RAM: 3200Mhz\r\nLED RGB\r\nGiá khuyến mại:	2.899.000 đ [Giá đã có VAT]\r\nBảo hành: 36 Tháng\r\n\r\nThông số kỹ thuật\r\nTHÔNG TIN CƠ BẢN\r\n\r\nThương hiệu\r\n\r\nGIGABYTE\r\n\r\nLoại Ram\r\n\r\nDesktop\r\n\r\nDòng\r\n\r\nAORUS RGB\r\n\r\nMã Part\r\n\r\nGP_ARS16G32D\r\n\r\nCHI TIẾT\r\n\r\nDung lượng\r\n\r\n16GB (2 x 8GB)\r\n\r\nLoại\r\n\r\nDDR4\r\n\r\nTốc độ\r\n\r\n3200 MHz\r\n\r\nĐộ trễ\r\n\r\n16-18-18-38\r\n\r\nHiệu điện thế\r\n\r\n1.35V\r\n\r\nECC\r\n\r\nKhông hỗ trợ\r\n\r\nĐóng gói\r\n\r\n2 thanh\r\n\r\nMàu sắc\r\n\r\nXám\r\n\r\nTản nhiệt\r\n\r\nCó\r\n\r\nMàu LED\r\n\r\nRGB\r\n\r\nĐánh giá sản phẩm Ram Desktop Gigabyte AORUS RGB (GP_ARS16G32D) 16GB (2x8GB) DDR4 3200Mhz (With Demo Kit)\r\nRam Desktop Gigabyte AORUS RGB (With Demo Kit) là kit RAM đặc biệt của Gigabyte hướng đến nhu cầu rất thực tế của khách hàng. Kit ram này bao gồm 2 thanh RAM \"thật\" (có chip nhớ) có tổng dung lượng 16Gb nhưng sẽ được tặng thêm 2 thanh RAM ảo (chỉ có LED RGB, không có chip nhớ) để tạo thành kit 4x4 đẹp mắt. \r\n\r\nThiết kế\r\nRam Desktop Gigabyte AORUS RGB có thiết kế khác biệt, lấy ý tưởng thiết kế từ chính Logo Aorus với các đường vát sắc cạnh đầy mạnh mẽ. Đi kèm là dải LED RGB có thể tùy chỉnh dễ dàng với phần mềm.\r\n\r\nTính năng\r\nAorus Memory Boost: Khi đi kèm bo mạch chủ Gigabyte, bus RAM sẽ được đẩy lên cao hơn mức mặc định 1 cách dễ dàng. \r\n\r\nTặng kèm RAM ảo - duy nhất chỉ Gigabyte có\r\nNgoài kit ram thật 2x8GB, Gigabyte còn cung cấp thêm 2 thanh ram ảo tương tự để có thể lấp đầy toàn bộ các khe ram trống trên bo mạch chủ của bạn mà không tốn thêm tiền để mua 1 kit thứ 2 khi nhu cầu về dung lượng RAM là không nhiều. Đây là 1 giải pháp rất hay đến từ Gigabyte Aorus. \r\n\r\nAorus RGB \r\nHỗ trợ 12 hiệu ứng LED  RGB trong đó có 5 hiệu ứng độc quyền trên RAM Aorus\r\n\r\nKiểm tra chất lượng đầu ra\r\nTất cả các kit RAM Aorus đều được thử nghiệm qua các bài test để có sản phẩm hoàn hảo đến tay khách hàng. \r\n\r\n\r\n\r\n\r\n\r\n', 1, 0),
(56, 'SSD Kingston SKC2000 250GB NVMe M.2 2280', 7, 0, 113, 'SSD Kingston SKC2000 250GB NVMe M.2 2280 PCIe Gen 3 x 4 (Doc 3000MB/s, Ghi 1100MB/s) -KC2000M8/250G\r\n\r\nThông số sản phẩm\r\nDung lượng: 250GB\r\nKích thước: M.2 2280\r\nKết nối: M.2 NVMe\r\nNAND: 3D-NAND\r\nTốc độ đọc/ghi (tối đa): 3000MB/s | 2000MB/s\r\n\r\nGiá khuyến mại:	1.699.000 đ [Giá đã có VAT]\r\nBảo hành: 60 Tháng\r\n\r\nThông số kỹ thuật\r\nTHÔNG TIN CƠ BẢN\r\n\r\nThương hiệu\r\n\r\nKINGSTON\r\n\r\nDòng\r\n\r\nSKC2000\r\n\r\nMã part\r\n\r\nSKC2000M8/250G\r\n\r\nLoại\r\n\r\nInternal Solid State Drive (SSD)\r\n\r\nPhân khúc\r\n\r\nConsumer\r\n\r\nCHI TIẾT\r\n\r\nChuẩn kích cỡ\r\n\r\nM.2 2280\r\n\r\nDung lượng\r\n\r\n250GB\r\n\r\nLoại chip nhớ\r\n\r\n3D-NAND TLC\r\n\r\nGiao tiếp\r\n\r\nNVMe PCIe Gen 3.0 x 4\r\n\r\nHIỆU NĂNG\r\n\r\nTốc độ đọc tối đa\r\n\r\nUp to 3000 MBps\r\n\r\nTốc độ ghi tối đa\r\n\r\nUp to 1100 MBps\r\n\r\nMTBF\r\n\r\n2,000,000 hours\r\n\r\nCÁC THÔNG SỐ KHÁC\r\n\r\nĐiện năng tiêu thụ\r\n\r\n0,003W Nghỉ / 0,2W TB / 2,1W (MAX) Đọc / 7W (MAX) Ghi\r\n\r\nĐánh giá sản phẩm SSD Kingston SKC2000 250GB NVMe M.2 2280 PCIe Gen 3 x 4 KC2000M8/250G\r\n\r\nỔ cứng SSD Kingston KC2000 M.2 NVMe\r\nỔ cứng SSD Kingston KC2000 M.2 NVMe của Kingston là giải pháp nâng cấp máy tính để mang đến hiệu năng siêu cao khi được trang bị chuẩn NVMe PCIe Gen 3 x4, chip điều khiển Controller SMI 2262EN kèm với công nghệ 3D-NAND TLC 64 Layers để mang đến hiệu năng cực cao với tốc độ truyền dữ liệu lên đến 3200MB/s. KC2000 cho độ bền cao và giúp tăng hiệu suất trên máy bàn, máy trạm và các hệ thống High Performance Computing (HPC).\r\n\r\nNhanh hơn 40 lần so với HDD\r\nVới tốc độ đọc ghi đáng kinh ngạc, ổ cứng SSD Kingston KC2000 M.2 PCIe Gen3 x4 NVMe sẽ tăng hiệu suất tổng thể của máy tính lên mức tối đa, giúp bạn xử lý công việc cực kỳ nhanh chóng.\r\n\r\nChuẩn giao tiếp M.2\r\nỔ cứng SSD Kingston KC2000 M.2 NVMe có chuẩn giao tiếp M.2 PCIe Gen3 x4 cực kì nhỏ gọn, tiết kiệm diện tích, là giải pháp nâng cấp máy tính mà không cần phải tháo ổ HDD trong máy ra.\r\n\r\nThiết kế một mặt chip\r\nỔ cứng SSD Kingston KC2000 M.2 NVMe với thiết kế một mặt chip giúp phù hợp với mọi điều kiện không gian bé nhất, tránh chạm vào các linh kiện trên Mainboard.\r\n\r\nNhiều dung lượng cho bạn lựa chọn\r\nỔ cứng SSD Kingston KC2000 M.2 NVMe có dung lượng 250GB, 500GB, 1TB và 2TB giúp phù hợp với từng nhu cầu của bạn, giúp bạn tiết kiệm chi phí.\r\n\r\nChế độ bảo hành 5 năm\r\nVới chế độ bảo hành lên đến 5 năm, bạn sẽ nhận được bộ sản phẩm có chất lượng cực kỳ đáng tin cậy, đáp ứng mọi nhu cầu của bạn.\r\n\r\n', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`, `image`) VALUES
(4, 'CPU', 'cpu.jpg'),
(5, 'Mainboard', 'mainboard.jpg'),
(6, 'Ram', 'ram.jpg'),
(7, 'SSD', 'ssd.jpg'),
(9, 'VGA', 'vga.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `phone`, `address`) VALUES
(7, 'huossssggag@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Hương siêu nhân', '234567890', '123343 lê thị riêng'),
(14, 'nhat', '202cb962ac59075b964b07152d234b70', 'nhat nguyen 123', '0369601005', 'nghe an 123'),
(15, 'nhat2', '202cb962ac59075b964b07152d234b70', 'nhat2', NULL, NULL),
(17, 'nhat3', '202cb962ac59075b964b07152d234b70', 'nhat3', NULL, NULL),
(18, 't123', '202cb962ac59075b964b07152d234b70', 'test', NULL, NULL),
(19, 't321', '202cb962ac59075b964b07152d234b70', 'test', NULL, NULL),
(20, 't1234', '202cb962ac59075b964b07152d234b70', '123', NULL, NULL),
(21, 'tt12', '202cb962ac59075b964b07152d234b70', '1234', NULL, NULL),
(22, 'ttt', '202cb962ac59075b964b07152d234b70', '123', NULL, NULL),
(23, 'rrqe', '202cb962ac59075b964b07152d234b70', '123', NULL, NULL),
(24, '1231231', '202cb962ac59075b964b07152d234b70', '321312', NULL, NULL),
(25, '3123123', '202cb962ac59075b964b07152d234b70', '123', NULL, NULL),
(26, '13232131', '202cb962ac59075b964b07152d234b70', '123', NULL, NULL),
(27, 'cauutnhala@gmail.com', '202cb962ac59075b964b07152d234b70', 'nhat1', NULL, NULL),
(28, 'nhat1', '202cb962ac59075b964b07152d234b70', 'nhat', '', '0369601005'),
(29, 'kaito1477800@gmail.com', '55363d77dd3539697aa3ac9fcc49efc6', 'kaito', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner_types`
--
ALTER TABLE `banner_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f2` (`id_bill`),
  ADD KEY `f3` (`id_product`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f5` (`id_product`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f4` (`id_type`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner_types`
--
ALTER TABLE `banner_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `f1` FOREIGN KEY (`id_customer`) REFERENCES `users` (`id`);

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `f2` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id`),
  ADD CONSTRAINT `f3` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `f5` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `f4` FOREIGN KEY (`id_type`) REFERENCES `product_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
