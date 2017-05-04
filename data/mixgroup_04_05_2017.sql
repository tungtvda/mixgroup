-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2017 at 04:16 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mixgroup`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Id` int(11) NOT NULL,
  `TenDangNhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `TenDangNhap`, `Full_name`, `MatKhau`) VALUES
(2, 'tungtv', 'Trần Văn Tùng', '51780454a6218a08d996716083df5d87c011adc40ca032b74605b0985bf6a4b3688ddd43bd1876ee923c0367dfd6374bf4f0db274e90bd7df95451a10dec2fa3');

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `Id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_color` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_size` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_en` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_cn` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`Id`, `logo`, `icon`, `backgroup`, `name`, `name_en`, `name_cn`, `name_color`, `name_size`, `title`, `title_en`, `title_cn`, `keyword`, `description`) VALUES
(1, '/azbooking/view/admin/Themes/kcfinder/upload/images/cauhinh/logoazbooking.png', '/azbooking/view/admin/Themes/kcfinder/upload/images/cauhinh/favicon.png', '/mixgroup/view/admin/Themes/kcfinder/upload/images/config/bg.jpg', 'CHÀO MỪNG BẠN ĐẾN VỚI MIXGROUP', 'WELCOME TO MIXGROUP', '欢迎来到 MIXGROUP', 'color:#ffffff', 'font-size:40px', 'CHÀO MỪNG BẠN ĐẾN VỚI MIXGROUP', 'WELCOME TO MIXGROUP', '欢迎来到 MIXGROUP', 'CHÀO MỪNG BẠN ĐẾN VỚI MIXGROUP', 'CHÀO MỪNG BẠN ĐẾN VỚI MIXGROUP');

-- --------------------------------------------------------

--
-- Table structure for table `list_logo`
--

CREATE TABLE IF NOT EXISTS `list_logo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_fanpage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `content_cn` text COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `list_logo`
--

INSERT INTO `list_logo` (`id`, `name`, `name_en`, `name_cn`, `img`, `date`, `link`, `link_fanpage`, `link_youtube`, `content`, `content_en`, `content_cn`, `position`) VALUES
(1, 'MIXTOURIST.COM', 'MIXTOURIST.COM', 'MIXTOURIST.COM', '/mixgroup/view/admin/Themes/kcfinder/upload/images/config/mixtour.jpg', '24/02/2012', 'http://mixtourist.com.vn/', 'https://www.facebook.com/mixtourist/?fref=ts', 'https://www.youtube.com/user/dulichmixtourist', '<p>\r\n	Tổ chức c&aacute;c tour du lịch trọn g&oacute;i trong nước v&agrave; quốc tế. Tổ chức c&aacute;c tour du lịch kết hợp với hội nghị, hội thảo, tổ chức sự kiện, hội chợ, triển l&atilde;m ( Du lịch M.I.C.E)</p>\r\n', '<p>\r\n	Organize domestic and international package tours. Organize tours in conjunction with conferences, seminars, events, fairs and exhibitions (M.I.C.E. Tourism)</p>\r\n', '<p>\r\n	在国内和国际上旅行团的组织。组织游客与会议，研讨会，活动，交易会和展览会（旅游M.I.C.E）相结合</p>\r\n', 1),
(2, 'MIXMEDIA.COM.VN', 'MIXMEDIA.COM.VN', 'MIXMEDIA.COM.VN', '/mixgroup/view/admin/Themes/kcfinder/upload/images/config/mixtour.jpg', '24/02/2012', 'http://mixmedia.com.vn/', '', '', '<p>\r\n	1-Tối ưu h&oacute;a c&ocirc;ng cụ t&igrave;m kiếm &ndash; SEO 2-Thiết kế Website. 3-Quảng c&aacute;o Google. 4-Quảng c&aacute;o Facebook.</p>\r\n', '<p>\r\n	1-Search engine optimization - SEO 2-Website Design. 3-Google Advertising. 4-Facebook Advertising.</p>\r\n', '<p>\r\n	1，优化搜索引擎 - 搜索引擎优化 2，设计网站。 3，谷歌的广告。 4，广告的Facebook。</p>\r\n', 2),
(3, 'AZBOOKING.VN', 'AZBOOKING.VN', 'AZBOOKING.VN', '/mixgroup/view/admin/Themes/kcfinder/upload/images/config/azbooking.jpg', '01/01-2017', 'http://azbooking.vn/', 'https://www.facebook.com/azbooking.vietnam/', '', '<p>\r\n	<span style="color: rgb(143, 143, 143); font-family: Lato, sans-serif; font-size: 14px; text-align: center;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel leo quis velit egestas placerat ut ultricies magna. Vivamus erat sem, pulvinar eu molestie vitae, dignissim molestie nunc.</span></p>\r\n', '<p>\r\n	<span style="color: rgb(143, 143, 143); font-family: Lato, sans-serif; font-size: 14px; text-align: center;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel leo quis velit egestas placerat ut ultricies magna. Vivamus erat sem, pulvinar eu molestie vitae, dignissim molestie nunc.</span></p>\r\n', '<p>\r\n	<span style="color: rgb(143, 143, 143); font-family: Lato, sans-serif; font-size: 14px; text-align: center;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel leo quis velit egestas placerat ut ultricies magna. Vivamus erat sem, pulvinar eu molestie vitae, dignissim molestie nunc.</span></p>\r\n', 3),
(4, 'VIETGARDENT.COM', 'VIETGARDENT.COM', 'VIETGARDENT.COM', '/mixgroup/view/admin/Themes/kcfinder/upload/images/config/blog-1-1.jpg', '1/01-2017', 'http://vietgardens.com/', 'https://www.facebook.com/vietgardens/?fref=ts', NULL, '<p>\r\n	<span style="color: rgb(143, 143, 143); font-family: Lato, sans-serif; font-size: 14px; text-align: center;">VIETGARDEN - VƯỜN ẨM THỰC XANH ĐẬM Đ&Agrave; HƯƠNG VỊ VIỆT</span></p>\r\n', '<p>\r\n	VIETGARDEN - GREEN FAMILY BUTTERFLY BEAUTY OF VIETNAM</p>\r\n', '<p>\r\n	VIETGARDEN - 食品庭院绿化越南风味</p>\r\n', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `list_logo`
--
ALTER TABLE `list_logo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `list_logo`
--
ALTER TABLE `list_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
