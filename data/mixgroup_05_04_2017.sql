-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 04, 2017 lúc 03:21 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mixgroup`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `TenDangNhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Id`, `TenDangNhap`, `Full_name`, `MatKhau`) VALUES
(2, 'tungtv', 'Trần Văn Tùng', '51780454a6218a08d996716083df5d87c011adc40ca032b74605b0985bf6a4b3688ddd43bd1876ee923c0367dfd6374bf4f0db274e90bd7df95451a10dec2fa3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`Id`, `logo`, `icon`, `backgroup`, `name`, `name_en`, `name_cn`, `name_color`, `name_size`, `title`, `title_en`, `title_cn`, `keyword`, `description`) VALUES
(1, '/azbooking/view/admin/Themes/kcfinder/upload/images/cauhinh/logoazbooking.png', '/azbooking/view/admin/Themes/kcfinder/upload/images/cauhinh/favicon.png', '/mixgroup/view/admin/Themes/kcfinder/upload/images/config/bg.jpg', 'CHÀO MỪNG BẠN ĐẾN VỚI MIXGROUP', 'WELCOME TO MIXGROUP', '欢迎来到 MIXGROUP', 'color:#ffffff', 'font-size:20px', 'CHÀO MỪNG BẠN ĐẾN VỚI MIXGROUP', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_logo`
--

CREATE TABLE `list_logo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_fanpage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `content_cn` text COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `list_logo`
--

INSERT INTO `list_logo` (`id`, `name`, `name_en`, `name_cn`, `img`, `date`, `link`, `link_fanpage`, `content`, `content_en`, `content_cn`, `position`) VALUES
(1, 'MIXTOURIST.COM', 'MIXTOURIST.COM', 'MIXTOURIST.COM', '/mixgroup/view/admin/Themes/kcfinder/upload/images/config/blog-1-1.jpg', '24/02/2012', 'http://mixtourist.com.vn/', 'https://www.facebook.com/mixtourist/?fref=ts', 'Tổ chức các tour du lịch trọn gói trong nước và quốc tế. Tổ chức các tour du lịch kết hợp với hội nghị, hội thảo, tổ chức sự kiện, hội chợ, triển lãm ( Du lịch M.I.C.E)\r\n', 'Organize domestic and international package tours. Organize tours in conjunction with conferences, seminars, events, fairs and exhibitions (M.I.C.E. Tourism)\r\n', '在国内和国际上旅行团的组织。组织游客与会议，研讨会，活动，交易会和展览会（旅游M.I.C.E）相结合\r\n', 1),
(2, 'MIXMEDIA.COM.VN', 'MIXMEDIA.COM.VN', 'MIXMEDIA.COM.VN', '/mixgroup/view/admin/Themes/kcfinder/upload/images/config/blog-1-1.jpg', '24/02/2012', 'http://mixmedia.com.vn/', '', '1-Tối ưu hóa công cụ tìm kiếm – SEO\r\n2-Thiết kế Website.\r\n3-Quảng cáo Google.\r\n4-Quảng cáo Facebook.', '1-Search engine optimization - SEO\r\n2-Website Design.\r\n3-Google Advertising.\r\n4-Facebook Advertising.', '1，优化搜索引擎 - 搜索引擎优化\r\n2，设计网站。\r\n3，谷歌的广告。\r\n4，广告的Facebook。', 2),
(3, 'AZBOOKING.VN', 'AZBOOKING.VN', 'AZBOOKING.VN', '/mixgroup/view/admin/Themes/kcfinder/upload/images/config/blog-1-1.jpg', '01/01-2017', 'http://azbooking.vn/', 'https://www.facebook.com/azbooking.vietnam/', '<p>\r\n	<span style=\"color: rgb(143, 143, 143); font-family: Lato, sans-serif; font-size: 14px; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel leo quis velit egestas placerat ut ultricies magna. Vivamus erat sem, pulvinar eu molestie vitae, dignissim molestie nunc.</span></p>\r\n', '<p>\r\n	<span style=\"color: rgb(143, 143, 143); font-family: Lato, sans-serif; font-size: 14px; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel leo quis velit egestas placerat ut ultricies magna. Vivamus erat sem, pulvinar eu molestie vitae, dignissim molestie nunc.</span></p>\r\n', '<p>\r\n	<span style=\"color: rgb(143, 143, 143); font-family: Lato, sans-serif; font-size: 14px; text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel leo quis velit egestas placerat ut ultricies magna. Vivamus erat sem, pulvinar eu molestie vitae, dignissim molestie nunc.</span></p>\r\n', 3),
(4, 'VIETGARDENT.COM', 'VIETGARDENT.COM', 'VIETGARDENT.COM', '/mixgroup/view/admin/Themes/kcfinder/upload/images/config/blog-1-1.jpg', '1/01-2017', 'http://vietgardens.com/', 'https://www.facebook.com/vietgardens/?fref=ts', '<p>\r\n	<span style=\"color: rgb(143, 143, 143); font-family: Lato, sans-serif; font-size: 14px; text-align: center;\">VIETGARDEN - VƯỜN ẨM THỰC XANH ĐẬM Đ&Agrave; HƯƠNG VỊ VIỆT</span></p>\r\n', '<p>\r\n	VIETGARDEN - GREEN FAMILY BUTTERFLY BEAUTY OF VIETNAM</p>\r\n', '<p>\r\n	VIETGARDEN - 食品庭院绿化越南风味</p>\r\n', 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `list_logo`
--
ALTER TABLE `list_logo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `list_logo`
--
ALTER TABLE `list_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
