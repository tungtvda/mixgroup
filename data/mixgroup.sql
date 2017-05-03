-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 03, 2017 lúc 03:33 SA
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
  `khachsan_id` int(11) NOT NULL,
  `TenDangNhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Quyen` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Id`, `khachsan_id`, `TenDangNhap`, `Full_name`, `MatKhau`, `Quyen`, `status`) VALUES
(2, 1, 'tungtv', 'Trần Văn Tùng', '1ef26373d3c9447baae66eabd52b1e0e9dc1b702c2f51d5322a67f1c42cf6f3ef0d513d04624c3bfee41b848cac59f4e6c29bf915d10c820c6c883bee00d3afb', 1, 1),
(3, 1, 'haiphong', 'Someret Hai Phong', '1ef26373d3c9447baae66eabd52b1e0e9dc1b702c2f51d5322a67f1c42cf6f3ef0d513d04624c3bfee41b848cac59f4e6c29bf915d10c820c6c883bee00d3afb', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `Id` int(11) NOT NULL,
  `Logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Hotline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Map` text COLLATE utf8_unicode_ci,
  `Address_hcm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone_hcm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_hcm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Hotline_hcm` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email_hcm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Map_hcm` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`Id`, `Logo`, `Icon`, `banner_email`, `footer_email`, `Name`, `Address`, `Phone`, `fax`, `Hotline`, `Email`, `Website`, `Map`, `Address_hcm`, `Phone_hcm`, `fax_hcm`, `Hotline_hcm`, `Email_hcm`, `Map_hcm`) VALUES
(1, '/azbooking/view/admin/Themes/kcfinder/upload/images/cauhinh/logoazbooking.png', '/azbooking/view/admin/Themes/kcfinder/upload/images/cauhinh/favicon.png', NULL, NULL, 'MIX TOURIST COMPANY', 'Phòng 2001, tầng 20, tòa nhà 137 Nguyễn Ngọc Vũ, Cầu Giấy, Hà Nội', '(+84) 4 6281 4340', '(+84) 4 6281 4341', '(+84)94 161 9956', 'sales@mixtourist.com ', '', '  <iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14898.1817374241!2d105.80953!3d21.010851!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x4be5d76ac6ba18d3!2zQ2h1bmcgQ8awIDEzNyBOZ3V54buFbiBOZ-G7jWMgVsWp!5e0!3m2!1svi!2sus!4v1480583836972\"                     width=\"100%\" height=\"250\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'Tầng 3, số 2 Nguyễn Thiện Thuật, Phường 24 Quận Bình Thạnh, TP.HCM', '(+84) 8 6258 8510', '(+84) 8 6258 8512', '(+84) 943 838 222', 'sales@mixtourist.com ', ' <iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15676.344842857752!2d106.699668!3d10.804709!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528c759b1f9f5%3A0xa1fe866799a22c83!2zMiBOZ3V54buFbiBUaGnhu4duIFRodeG6rXQsIFBoxrDhu51uZyAyNCwgQsOsbmggVGjhuqFuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1480583873869\"                     width=\"100%\" height=\"250\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>');

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
