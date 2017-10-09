-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 09, 2017 lúc 12:39 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ql_ban_hang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id_danh_muc` int(11) NOT NULL,
  `ten_danh_muc` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_danh_muc_cha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id_danh_muc`, `ten_danh_muc`, `id_danh_muc_cha`) VALUES
(2, 'MÃ¡y tÃ­nh Ä‘á»ƒ bÃ n', 0),
(4, 'Äiá»‡n thoáº¡i thÃ´ng minh', 0),
(6, 'MÃ¡y tÃ­nh Ä‘á»ƒ bÃ n Asus', 2),
(7, 'iPhone', 4),
(8, 'Smartphone Samsung', 4),
(10, 'MÃ¡y tÃ­nh xÃ¡ch tay', 0),
(11, 'MÃ¡y tÃ­nh xÃ¡ch tay Dell', 10),
(12, 'MÃ¡y tÃ­nh báº£ng', 0),
(13, 'iPad', 12),
(14, 'SAMSUNG GALAXY TAB', 12),
(15, 'Laptop LENOVO', 10),
(16, 'Laptop ASUS', 10),
(17, 'Laptop HP', 10),
(18, 'Laptop ACER', 10),
(19, 'Smartphone HTC', 4),
(20, 'Smartphone XIAOMI', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id_don_hang` int(11) NOT NULL,
  `id_tai_khoan` int(11) DEFAULT NULL,
  `ghi_chu` text COLLATE utf8mb4_unicode_ci,
  `tong_tien` float DEFAULT NULL,
  `trang_thai` tinyint(1) DEFAULT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id_don_hang`, `id_tai_khoan`, `ghi_chu`, `tong_tien`, `trang_thai`, `ngay`) VALUES
(16, 3, '', 37297000, 0, '2017-04-25'),
(17, 4, '', 86268000, 0, '2017-04-27'),
(18, 4, 'LiÃªn há»‡ sau giá» hÃ nh chÃ­nh', 9349000, 0, '2017-04-27'),
(19, 4, '', 19848000, 0, '2017-04-27'),
(20, 3, 'mÃ u Ä‘en', 21690000, 0, '2017-04-27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang_ct`
--

CREATE TABLE `don_hang_ct` (
  `id_don_hang` int(11) NOT NULL,
  `id_san_pham` int(11) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `don_gia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `don_hang_ct`
--

INSERT INTO `don_hang_ct` (`id_don_hang`, `id_san_pham`, `so_luong`, `don_gia`) VALUES
(16, 11, 1, 10499000),
(16, 13, 1, 17449000),
(16, 14, 1, 9349000),
(17, 3, 3, 21690000),
(17, 7, 1, 10699000),
(17, 11, 1, 10499000),
(18, 14, 1, 9349000),
(19, 9, 1, 12499000),
(19, 12, 1, 7349000),
(20, 3, 1, 21690000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id_lien_he` int(11) NOT NULL,
  `ho_ten` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tieu_de` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci,
  `trang_thai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id_lien_he`, `ho_ten`, `email`, `sdt`, `tieu_de`, `noi_dung`, `trang_thai`) VALUES
(1, 'ta bac ha', 'bhta277@gmail.com', '0961183790', 'Lien he', 'Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.Thong tin lien he.', 1),
(2, 'Nguyen Van A', 'nva@gmail.com', '0123456789', 'Xin bÃ¡o giÃ¡', '- Äáº¡i diá»‡n cá»§a thá»§ thÃ nh Jan Oblak sáº½ tá»›i Manchester trong tuáº§n nÃ y Ä‘á»ƒ Ä‘Ã m phÃ¡n vá»›i M.U. Quá»· Ä‘á» Ä‘Æ°á»£c cho Ä‘Ã£ Ä‘áº¡t thá»a thuáº­n sÆ¡ bá»™ vá»›i Atletico trong thÆ°Æ¡ng vá»¥ nÃ y. \r\n\r\n- BLÄ Real Madrid cÃ¢n nháº¯c má»i HLV Joachim Loew (ÄT Äá»©c) thay tháº¿ cho Zinedine Zidane náº¿u Ä‘á»™i bÃ³ng HoÃ ng gia khÃ´ng cÃ³ báº¥t ká»³ danh hiá»‡u nÃ o vÃ o cuá»‘i mÃ¹a giáº£i 2016/17.\r\n\r\n- Tottenham sáºµn sÃ ng biáº¿n trung vá»‡ Toby Alderweireld trá»Ÿ thÃ nh má»™t trong nhá»¯ng cáº§u thá»§ hÆ°á»Ÿng lÆ°Æ¡ng cao nháº¥t Ä‘á»™i bÃ³ng Ä‘á»ƒ trÃ¡nh sá»± dÃ²m ngÃ³ cá»§a Inter Milan.', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id_san_pham` int(11) NOT NULL,
  `ten_san_pham` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anh_san_pham` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thong_tin_ct` text COLLATE utf8mb4_unicode_ci,
  `khuyen_mai` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hien_thi` tinyint(1) DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `ngay_dang` date DEFAULT NULL,
  `id_danh_muc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id_san_pham`, `ten_san_pham`, `anh_san_pham`, `thong_tin_ct`, `khuyen_mai`, `hien_thi`, `gia`, `ngay_dang`, `id_danh_muc`) VALUES
(3, 'iPhone 7 128GB', 'iphone-7-128gb-3-300x300.jpg', '<ul>\r\n	<li>M&agrave;n h&igrave;nh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tim-hieu-cac-cong-nghe-man-hinh-dien-thoai-824270#led-backlit-ips-lcd\" target=\"_blank\">LED-backlit IPS LCD</a>, 4.7&quot;, Retina HD</li>\r\n	<li>Há»‡ Ä‘iá»u h&agrave;nh:<a href=\"https://www.dienmayxanh.com/kinh-nghiem-hay/tim-hieu-ve-he-dieu-hanh-ios-596545\" target=\"_blank\">iOS 10</a></li>\r\n	<li>Camera sau:12 MP</li>\r\n	<li>Camera trÆ°á»›c:7 MP</li>\r\n	<li>CPU:Apple A10 Fusion 4 nh&acirc;n 64-bit</li>\r\n	<li>RAM:2 GB</li>\r\n	<li>Bá»™ nhá»› trong:128 GB</li>\r\n	<li>Tháº» SIM:1 Nano SIM</li>\r\n	<li>Dung lÆ°á»£ng pin:1960 mAh</li>\r\n</ul>\r\n', '<p>CÆ¡ há»™i tr&uacute;ng xe SH 150i khi mua iPhone táº¡i H&agrave; Ná»™i, Ä&agrave; Náºµng</p>\r\n', 1, 21690000, '2017-04-23', 7),
(4, 'LAPTOP DELL VOSTRO V3568A P63F002', 'laptop-dell-v3568ap63f002.jpg', '<p><strong>H&atilde;ng:</strong><a href=\"https://www.trananh.vn/tag/laptop-dell\">Dell</a>&nbsp;<strong>Model:</strong>V3568A(P63F002)</p>\r\n\r\n<ul>\r\n	<li>Chip: Core i5-7200U</li>\r\n	<li>Ram: 4GB</li>\r\n	<li>á»” cá»©ng: 1TB</li>\r\n	<li>M&agrave;n h&igrave;nh: 15.6&#39;&#39;</li>\r\n	<li>Há»‡ Ä‘iá»u h&agrave;nh: Dos</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- Táº·ng bá»™ qu&agrave; trá»‹ gi&aacute; 1 ', 1, 13999000, '2017-04-18', 11),
(5, 'LAPTOP DELL INSPIRON 15 - N3552 V5C008W', 'dell-inspiron-15--n3552v5c008w.jpg', '<p><strong>H&atilde;ng:</strong><a href=\"https://www.trananh.vn/tag/laptop-dell\">Dell</a>&nbsp;<strong>Model:</strong>15 - N3552(V5C008W</p>\r\n\r\n<ul>\r\n	<li>Celeron Dual Core N3060</li>\r\n	<li>Ram 4GB</li>\r\n	<li>HDD 500GB</li>\r\n	<li>15.6&quot;</li>\r\n	<li>Win 10</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- &bull; T&uacute;i laptop Dell</li>\r\n	<li>(', 1, 6699000, '2017-04-18', 11),
(6, 'LAPTOP DELL INSPIRON 14 3000 SERIES 3458 70073955', 'dell-inspiron-14-3000-series-345870073955.jpg', '<p><strong>H&atilde;ng:</strong><a href=\"https://www.trananh.vn/tag/laptop-dell\">Dell</a>&nbsp;<strong>Model:</strong>14 3000 Series (3458)(70073955)</p>\r\n\r\n<ul>\r\n	<li>- CPU:Core i3-5005U</li>\r\n	<li>- RAM:4GB DDR3</li>\r\n	<li>- ÄÄ©a cá»©ng:500GB/ VGA 2GB</li>\r\n	<li>- M&agrave;n h&igrave;nh:14&#39;&#39; HD</li>\r\n	<li>- Há»‡ Ä‘iá»u h&agrave;nh: Dos</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- &bull; T&uacute;i laptop Dell</li>\r\n	<li>-', 1, 8999000, '2017-04-18', 11),
(7, 'LAPTOP DELL VOSTRO 3568 VTI35037', 'laptop-dell-vostro-3568-vti35037.jpg', '<p><strong>H&atilde;ng:</strong><a href=\"https://www.trananh.vn/tag/laptop-dell\">Dell</a></p>\r\n\r\n<p><strong>Model:</strong>3568 VTI35037</p>\r\n\r\n<ul>\r\n	<li>Chip: Core i3-7100U</li>\r\n	<li>Ram: 4GB</li>\r\n	<li>á»” cá»©ng: 1TB</li>\r\n	<li>M&agrave;n h&igrave;nh: 15.6&#39;&#39;</li>\r\n	<li>Há»‡ Ä‘iá»u h&agrave;nh: DOS</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- &bull; T&uacute;i laptop Dell</li>\r\n	<li>-', 1, 10699000, '2017-04-18', 11),
(8, 'LAPTOP DELL INSPIRON N3567-70093474', 'dell1.jpg', '<p><strong>H&atilde;ng:Dell</strong></p>\r\n\r\n<p><strong>Model:</strong>N3567-70093474</p>\r\n\r\n<ul>\r\n	<li>Chip: Core i5-7200U</li>\r\n	<li>Ram: 4GB</li>\r\n	<li>á»” cá»©ng: 500GB</li>\r\n	<li>M&agrave;n h&igrave;nh: 15.6&#39;&#39;</li>\r\n	<li>Há»‡ Ä‘iá»u h&agrave;nh: DOS</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- &bull; T&uacute;i laptop Dell</li>\r\n	<li>-', 1, 13499000, '2017-04-18', 11),
(9, 'LAPTOP DELL VOSTRO V3568A P63F002', 'dell2.jpg', '<ul>\r\n	<li>Chip: Core i5-7200U</li>\r\n	<li>Ram: 4GB</li>\r\n	<li>á»” cá»©ng: 500GB</li>\r\n	<li>M&agrave;n h&igrave;nh: 15.6&#39;&#39;</li>\r\n	<li>Há»‡ Ä‘iá»u h&agrave;nh: DOS</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- &bull; T&uacute;i laptop Dell</li>\r\n	<li>-', 1, 12499000, '2017-04-18', 11),
(10, 'LAPTOP DELL VOSTRO 3568 XF6C621', 'dell3.jpg', '<ul>\r\n	<li>Chip: Core i5-7200U</li>\r\n	<li>Ram: 4GB</li>\r\n	<li>á»” cá»©ng: 500GB</li>\r\n	<li>M&agrave;n h&igrave;nh: 15.6&#39;&#39;</li>\r\n	<li>Há»‡ Ä‘iá»u h&agrave;nh: DOS</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- &bull; T&uacute;i laptop Dell</li>\r\n	<li>-', 1, 11499000, '2017-04-18', 11),
(11, 'LAPTOP DELL INSPIRON 15 N3567 C5I31120', 'dell4.jpg', '<ul>\r\n	<li>Chip: Core i5-7200U</li>\r\n	<li>Ram: 4GB</li>\r\n	<li>á»” cá»©ng: 500GB</li>\r\n	<li>M&agrave;n h&igrave;nh: 15.6&#39;&#39;</li>\r\n	<li>Há»‡ Ä‘iá»u h&agrave;nh: DOS</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- &bull; T&uacute;i laptop Dell</li>\r\n	<li>-', 1, 10499000, '2017-04-18', 11),
(12, 'MÃY TÃNH Äá»‚ BÃ€N ASUS K31AD-VN028D', 'may-tinh-de-ban-asus-k31ad-vn028d.jpg', '<ul>\r\n	<li>- Bá»™ xá»­ l&yacute; Core i3-4170</li>\r\n	<li>- á»” cá»©ng 1TB</li>\r\n	<li>- Káº¿t ná»‘i kh&ocirc;ng d&acirc;y Ä‘a dáº¡ng</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- Táº·ng bá»™ qu&agrave; trá»‹ gi&aacute; 99', 1, 7349000, '2017-04-18', 6),
(13, 'SAMSUNG NOTE 7 SM-N930FD - Báº C', 'ss1.jpg', '<ul>\r\n	<li>- M&agrave;n h&igrave;nh Super AMOLED 5.7 inches</li>\r\n	<li>- CPU 8 nh&acirc;n, 64 bit</li>\r\n	<li>- RAM 4GB ROM 64GB</li>\r\n	<li>- Pin 3500 mAh</li>\r\n	<li>- Há»‡ Ä‘iá»u h&agrave;nh Android 6.0</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- Táº·ng bá»™ qu&agrave; trá»‹ gi&aacute; 99', 1, 17449000, '2017-04-18', 8),
(14, 'HTC DESIRE 820G PLUS DUAL SIM - MARBLE', 'htc.jpg', '<p><strong>H&atilde;ng:</strong><a href=\"https://www.trananh.vn/tag/dien-thoai-di-dong-htc\">HTC</a></p>\r\n\r\n<p><strong>Model:</strong>Desire 820G</p>\r\n\r\n<ul>\r\n	<li>- H&atilde;ng sáº£n xuáº¥t: HTC</li>\r\n	<li>- Kiá»ƒu d&aacute;ng: Kiá»ƒu tháº³ng</li>\r\n	<li>- M&agrave;n h&igrave;nh: 16M m&agrave;u IPS LCD Touchscreen (Cáº£m á»©ng)</li>\r\n	<li>- K&iacute;ch thÆ°á»›c m&agrave;n h&igrave;nh: 5.5inch</li>\r\n	<li>- RAM: 1GB</li>\r\n</ul>\r\n', '<p><strong>Khuyáº¿n máº¡i 1</strong>:</p>\r\n\r\n<ul>\r\n	<li>- Táº·ng bá»™ qu&agrave; trá»‹ gi&aacute; 99', 1, 9349000, '2017-04-18', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id_tai_khoan` int(11) NOT NULL,
  `ten_dang_nhap` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mat_khau` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ho_ten` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sdt` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quyen` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id_tai_khoan`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `email`, `sdt`, `dia_chi`, `quyen`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Táº¡ Báº¯c HÃ ', NULL, NULL, NULL, 0),
(2, 'bhta277', 'fcea920f7412b5da7be0cf42b8c93759', 'Táº¡ Báº¯c HÃ ', 'bhta277@gmail.com', '0961183790', 'HÃ  Ná»™i', 1),
(3, 'user1', 'fcea920f7412b5da7be0cf42b8c93759', 'Nguyen Van A', 'nva@gmail.com', '0123456789', 'Ha Noi', 1),
(4, 'user2', 'e10adc3949ba59abbe56e057f20f883e', 'Pham Van B', 'pvb@gmail.com', '0123456987', 'TPHCM', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `id_tin_tuc` int(11) NOT NULL,
  `tieu_de` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anh` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chi_tiet` text COLLATE utf8mb4_unicode_ci,
  `ngay_dang` date DEFAULT NULL,
  `hien_thi` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`id_tin_tuc`, `tieu_de`, `anh`, `chi_tiet`, `ngay_dang`, `hien_thi`) VALUES
(2, 'Tin 14/4', '636173074864258962_Dell-Inspiron-3552-1.jpg', '<p><strong>Nh&oacute;m luáº­t sÆ° Ä‘áº¡i diá»‡n b&aacute;c sÄ© David Dao Ä‘&atilde; ná»™p Ä‘Æ¡n kiáº¿n nghá»‹ kháº©n cáº¥p y&ecirc;u cáº§u báº£o quáº£n má»i chá»©ng cá»© trong vá»¥ th&acirc;n chá»§ cá»§a há» bá»‹ l&ocirc;i xuá»‘ng m&aacute;y bay.</strong><br />\n<br />\nVá»¥ H&atilde;ng h&agrave;ng kh&ocirc;ng United Airlines Ä‘á»‘i xá»­ th&ocirc; báº¡o Ä‘á»‘i vá»›i b&aacute;c sÄ© gá»‘c Viá»‡t David Dao, 69 tuá»•i, tiáº¿p tá»¥c thu h&uacute;t sá»± ch&uacute; &yacute; cá»§a dÆ° luáº­n tháº¿ giá»›i, nháº¥t l&agrave; khi xuáº¥t hiá»‡n th&ecirc;m video quay cáº£nh trÆ°á»›c khi h&agrave;nh kh&aacute;ch n&agrave;y bá»‹ cÆ°á»¡ng cháº¿ khá»i m&aacute;y bay, cho tháº¥y r&otilde; r&agrave;ng hÆ¡n vá»¥ viá»‡c. Trong l&uacute;c h&atilde;ng n&agrave;y ná»— lá»±c t&igrave;m c&aacute;ch vá»›t v&aacute;t h&igrave;nh áº£nh xáº¥u x&iacute; cá»§a m&igrave;nh, Ä‘o&agrave;n luáº­t sÆ° Ä‘áº¡i diá»‡n b&aacute;c sÄ© David Dao Ä‘&atilde; c&oacute; Ä‘á»™ng th&aacute;i ph&aacute;p l&yacute; Ä‘áº§u ti&ecirc;n Ä‘á»ƒ khá»Ÿi kiá»‡n United Airlines, theo Reuters.<br />\n<br />\n<br />\n<strong>Cáº£nh s&aacute;t dá»a bá» t&ugrave; &ocirc;ng Dao</strong><br />\nÄoáº¡n video má»›i xuáº¥t hiá»‡n Ä‘Æ°á»£c ná»¯ h&agrave;nh kh&aacute;ch mang thai t&ecirc;n Joya Griffin Cummings dáº«n theo con nhá» quay trÆ°á»›c khi c&aacute;c cáº£nh s&aacute;t d&ugrave;ng vÅ© lá»±c Ä‘á»‘i vá»›i &ocirc;ng Dao, theo Ä&agrave;i Fox News. Trong clip, b&aacute;c sÄ© Dao gá»i Ä‘iá»‡n thoáº¡i cho United Airlines trong l&uacute;c 3 cáº£nh s&aacute;t h&agrave;ng kh&ocirc;ng Ä‘á»©ng káº¿ b&ecirc;n. &ldquo;T&ocirc;i l&agrave; b&aacute;c sÄ©. T&ocirc;i pháº£i Ä‘i l&agrave;m v&agrave;o 8 giá» s&aacute;ng mai (10.4)&rdquo;, &ocirc;ng tr&igrave;nh b&agrave;y l&yacute; do Ä‘á»ƒ c&oacute; thá»ƒ tiáº¿p tá»¥c Ä‘Æ°á»£c á»Ÿ láº¡i m&aacute;y bay. Sau Ä‘&oacute;, &ocirc;ng tiáº¿p tá»¥c n&oacute;i r&otilde; ráº±ng m&igrave;nh sáº½ kh&ocirc;ng nhÆ°á»ng gháº¿. L&uacute;c n&agrave;y, má»™t trong 3 cáº£nh s&aacute;t hÄƒm dá»a sáº½ d&ugrave;ng vÅ© lá»±c Ä‘á»ƒ cÆ°á»¡ng cháº¿ &ocirc;ng rá»i m&aacute;y bay náº¿u cáº§n. &ldquo;Cá»© d&ugrave;ng vÅ© lá»±c&rdquo;, &ocirc;ng tráº£ lá»i dá»©t kho&aacute;t v&agrave; n&oacute;i th&ecirc;m: &ldquo;T&ocirc;i sáº½ kiá»‡n United Airlines&rdquo;. B&aacute;c sÄ© Dao ki&ecirc;n quyáº¿t giá»¯ vá»¯ng quan Ä‘iá»ƒm, ngay cáº£ khi má»™t cáº£nh s&aacute;t Ä‘e dá»a: &ldquo;&Ocirc;ng c&oacute; thá»ƒ v&agrave;o t&ugrave;&rdquo;. Sau khi nháº¥n máº¡nh: &ldquo;T&ocirc;i sáºµn s&agrave;ng v&agrave;o t&ugrave;&rdquo;, &ocirc;ng Dao liá»n bá»‹ khá»‘ng cháº¿. H&agrave;nh kh&aacute;ch gá»‘c Viá»‡t Ä‘&atilde; báº¥t tá»‰nh khi Ä‘áº§u cá»§a &ocirc;ng tr&uacute;ng v&agrave;o tay vá»‹n v&agrave; bá»‹ l&ocirc;i dá»c theo lá»‘i Ä‘i.<br />\nChá»©ng kiáº¿n to&agrave;n bá»™ sá»± viá»‡c tá»« h&agrave;ng gháº¿ ph&iacute;a sau, b&agrave; Cummings viáº¿t tr&ecirc;n Facebook ráº±ng viá»‡c d&ugrave;ng tá»« &ldquo;giáº­n dá»¯&rdquo; hay &ldquo;qu&aacute; kh&iacute;ch&rdquo; nhÆ° quy káº¿t trÆ°á»›c Ä‘&oacute; cá»§a Tá»•ng gi&aacute;m Ä‘á»‘c United Airlines Oscar Munoz Ä‘á»ƒ m&ocirc; táº£ th&aacute;i Ä‘á»™ cá»§a vá»‹ h&agrave;nh kh&aacute;ch n&agrave;y l&agrave; kh&ocirc;ng thá»ƒ cháº¥p nháº­n. &ldquo;&Ocirc;ng áº¥y chÆ°a bao giá» giÆ¡ tay giÆ¡ ch&acirc;n trÆ°á»›c cáº£nh s&aacute;t. &Ocirc;ng áº¥y cÅ©ng cháº³ng há» vÄƒng tá»¥c&rdquo;, ngÆ°á»i kh&aacute;ch Ä‘i c&ugrave;ng chuyáº¿n bay UA 3411 viáº¿t.<br />\n&nbsp;</p>\n\n<p>&nbsp;</p>\n', '2017-04-14', 0),
(3, 'Origin EON15-S: laptop chÆ¡i game 999$ cÃ³ GPU GTX 1050 Ti', '1050ti.png', '<p>Chiáº¿c&nbsp;<a href=\"https://tinhte.vn/tags/origin/\">Origin</a>&nbsp;EON15-S c&oacute; gi&aacute; khá»Ÿi Ä‘iá»ƒm chá»‰ 999$ nhÆ°ng báº¡n váº«n c&oacute;&nbsp;<a href=\"https://tinhte.vn/tags/gpu/\">GPU</a>&nbsp;<a href=\"https://tinhte.vn/tags/gtx-1050-ti/\">GTX 1050 Ti</a>&nbsp;4GB vRAM máº¡nh máº½ náº±m b&ecirc;n trong. Vá»›i gi&aacute; n&agrave;y báº¡n c&ograve;n c&oacute; m&agrave;n h&igrave;nh 15&quot; Full-HD, CPU Core i3 Ä‘á»i Kaby Lake, RAM 8GB v&agrave; SSD 120GB. T&iacute;nh ra th&igrave; Ä‘á»ƒ c&oacute; Ä‘Æ°á»£c má»™t c&aacute;i m&aacute;y chÆ¡i game ngon l&agrave;nh th&igrave; báº¡n sáº½ pháº£i n&acirc;ng cáº¥p th&ecirc;m v&agrave;o thá»©, trÆ°á»›c máº¯t l&agrave; n&acirc;ng SSD cho lá»›n l&ecirc;n Ä‘á»ƒ c&oacute; chá»— c&agrave;i game, náº¿u th&iacute;ch th&igrave; l&ecirc;n CPU Core i7 bá»‘n nh&acirc;n v&agrave; RAM 32GB lu&ocirc;n cho gáº¥u. Nhá»¯ng option th&ecirc;m n&agrave;y cÅ©ng chá»‰ khoáº£ng 1300$, váº«n l&agrave; má»™t má»©c gi&aacute; háº¥p dáº«n. á»ž táº§m 1000$ v&agrave; t&iacute;ch há»£p GTX&nbsp;<a href=\"https://tinhte.vn/tags/1050-ti/\">1050 Ti</a>&nbsp;báº¡n váº«n c&ograve;n nhiá»u lá»±a chá»n kh&aacute;c náº¿u kh&ocirc;ng th&iacute;ch m&aacute;y Origin, v&iacute; dá»¥ nhÆ°&nbsp;<a href=\"https://tinhte.vn/threads/ces-2017-msi-gl-gp-va-ge-dong-loat-duoc-nang-cap-chay-core-i7-kaby-lake-va-gtx-1050-1050ti.2669527/\">MSI GL62M</a>&nbsp;hay Lenovo Y520.</p>\r\n\r\n<p><em>Cáº¥u h&igrave;nh cÆ¡ báº£n cá»§a Origin EON15-S</em></p>\r\n\r\n<ul>\r\n	<li>M&agrave;n h&igrave;nh: 15&quot; Full-HD táº¥m ná»n IPS</li>\r\n	<li>CPU: CPU Core i3 Ä‘á»i Kaby Lake, c&oacute; thá»ƒ l&ecirc;n i5 hoáº·c i7 bá»‘n nh&acirc;n</li>\r\n	<li>GPU: t&iacute;ch há»£p + GTX 1050 Ti</li>\r\n	<li>RAM: 8GB, tá»‘i Ä‘a 32GB</li>\r\n	<li>Pin: 6 tiáº¿ng</li>\r\n	<li>Há»‡ Ä‘iá»u h&agrave;nh: Windows 10</li>\r\n	<li>T&iacute;nh nÄƒng Ä‘áº·c biá»‡t: c&oacute; thá»ƒ t&ugrave;y biáº¿n náº¯p lÆ°ng trÆ°á»›c khi mua</li>\r\n	<li>Káº¿t ná»‘i: NFC, Bluetooth 4.0, Wi-Fi a/b/g/n/ac, USB, HDMI, Ethernet, USB-C</li>\r\n	<li>Bá»™ nhá»› trong/Tháº» nhá»›: 1 khay SATA, 1 khe M.2 PCIe</li>\r\n</ul>\r\n', '2017-04-18', 1),
(4, '6 lÃ­ do khiáº¿n Switch Cisco SG350X vÃ  SG550X Ä‘Æ°á»£c doanh nghiá»‡p tin dÃ¹ng', '4023177_image003.jpg', '<p>L&agrave; d&ograve;ng sáº£n pháº©m d&agrave;nh cho há»‡ thá»‘ng chuyá»ƒn máº¡ch trung t&acirc;m v&agrave; Ä‘Æ°á»£c sá»­ dá»¥ng rá»™ng r&atilde;i á»Ÿ nhiá»u cÆ¡ quan, doanh nghiá»‡p. Cisco Switch SG350X v&agrave; SG550X gi&uacute;p cho há»‡ thá»‘ng chuyá»ƒn máº¡ch trung t&acirc;m cá»§a doanh nghiá»‡p hoáº¡t Ä‘á»™ng hiá»‡u quáº£, á»•n Ä‘á»‹nh, tÄƒng cÆ°á»ng kháº£ nÄƒng báº£o máº­t hÆ¡n. Vá»›i nhiá»u t&iacute;nh nÄƒng má»›i Ä‘Æ°á»£c t&iacute;ch há»£p, bá»™ Ä‘&ocirc;i sáº£n pháº©m n&agrave;y ph&ugrave; há»£p cho c&aacute;c doanh nghiá»‡p vá»«a v&agrave; nhá» (SMB), nÆ¡i Ä‘&ograve;i há»i bÄƒng th&ocirc;ng cao Ä‘i k&egrave;m chi ph&iacute; há»£p l&yacute;.<br />\r\n<br />\r\n<strong>Xu hÆ°á»›ng ph&aacute;t triá»ƒn táº¥t yáº¿u cá»§a thiáº¿t bá»‹ chuyá»ƒn máº¡ch</strong><br />\r\nÄá»‘i vá»›i há»‡ thá»‘ng chuyá»ƒn máº¡ch trung t&acirc;m, Switch Ä‘&oacute;ng vai tr&ograve; ráº¥t quan trá»ng v&agrave; l&agrave; thiáº¿t bá»‹ trung t&acirc;m gi&uacute;p táº¥t cáº£ c&aacute;c th&agrave;nh pháº§n trong há»‡ thá»‘ng máº¡ng Ä‘Æ°á»£c káº¿t ná»‘i vá»›i nhau v&agrave; cung cáº¥p dá»‹ch vá»¥ cho ngÆ°á»i d&ugrave;ng. Äáº·c biá»‡t, Switch Cisco SG350X v&agrave; SG550X c&oacute; kháº£ nÄƒng xáº¿p chá»“ng v&agrave; má»Ÿ rá»™ng bÄƒng th&ocirc;ng, c&oacute; Ä‘á»™ báº£o máº­t cao, dá»… d&agrave;ng sá»­ dá»¥ng. V&igrave; tháº¿, thiáº¿t bá»‹ n&agrave;y Ä‘ang ng&agrave;y c&agrave;ng Ä‘Æ°á»£c Æ°a chuá»™ng v&agrave; tin d&ugrave;ng cá»§a nhiá»u doanh nghiá»‡p tr&ecirc;n tháº¿ giá»›i v&agrave; á»Ÿ Viá»‡t Nam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"switches-cisco-sg500x-16-port-10gb-stackable-managed-sg550xg-8f8t-k9-eu.jpg\" src=\"https://tinhte.vn/store/2017/04/4023183_switches-cisco-sg500x-16-port-10gb-stackable-managed-sg550xg-8f8t-k9-eu.jpg\" style=\"height:208px; width:500px\" /><br />\r\n<em>C&aacute;c thiáº¿t bá»‹ chuyá»ƒn máº¡ch nhÆ°&nbsp;<a href=\"https://tinhte.vn/tags/cisco-350x/\">Cisco 350X</a>&nbsp;v&agrave;&nbsp;<a href=\"https://tinhte.vn/tags/cisco-550x/\">Cisco 550X</a>&nbsp;cung cáº¥p 12, 24 hoáº·c 48 cá»•ng loáº¡i 10 Gigabit Ethernet v&agrave; c&oacute; thá»ƒ xáº¿p chá»“ng l&ecirc;n nhau - Tá»« Ä‘&oacute;, táº¡o ná»n táº£ng c&ocirc;ng nghá»‡ l&yacute; tÆ°á»Ÿng cho má»™t doanh nghiá»‡p Ä‘ang ph&aacute;t triá»ƒn v&agrave; cáº§n má»Ÿ rá»™ng há»‡ thá»‘ng</em>â€‹</p>\r\n\r\n<p><br />\r\n<strong>Hiá»‡u suáº¥t hoáº¡t Ä‘á»™ng cao</strong><br />\r\nThiáº¿t bá»‹ chuyá»ƒn máº¡ch Cisco SG350X v&agrave; Cisco SG550X sáº½ ph&aacute; vá»¡ r&agrave;o cáº£n sá»­ dá»¥ng chuáº©n Ethernet 10 Gigabit báº±ng c&aacute;ch cung cáº¥p c&aacute;c cáº¥u h&igrave;nh, gi&aacute; cáº£ há»£p l&yacute; v&agrave; linh hoáº¡t t&ugrave;y theo nhu cáº§u máº¡ng cá»§a c&aacute;c doanh nghiá»‡p vá»«a hay nhá». Vá»›i c&aacute;c cá»•ng Ä‘á»“ng 10G hoáº·c c&aacute;c cá»•ng quang 10G tr&ecirc;n 2 d&ograve;ng thiáº¿t bá»‹ chuyá»ƒn máº¡ch n&agrave;y, ngÆ°á»i d&ugrave;ng Ä‘Æ°á»£c ph&eacute;p káº¿t ná»‘i 10G tá»›i c&aacute;c m&aacute;y chá»§ v&agrave; thiáº¿t bá»‹ lÆ°u trá»¯ máº¡ng vá»›i c&aacute;p Ethernet chuáº©n RJ45 hoáº·c c&aacute;p quang.<br />\r\n<br />\r\n<strong>ÄÆ¡n giáº£n h&oacute;a viá»‡c thiáº¿t láº­p v&agrave; quáº£n l&yacute;</strong></p>\r\n\r\n<p><strong><em><img alt=\"image003.jpg\" src=\"https://tinhte.vn/store/2017/04/4023177_image003.jpg\" style=\"height:199px; width:500px\" /></em></strong><br />\r\n<em>Thiáº¿t bá»‹ th&iacute;ch há»£p cáº£ cho ngÆ°á»i d&ugrave;ng kh&ocirc;ng chuy&ecirc;n, Ä‘áº·c biá»‡t tiáº¿t kiá»‡m Ä‘&aacute;ng ká»ƒ chi ph&iacute; nh&acirc;n sá»± quáº£n l&iacute; há»‡ thá»‘ng CNTT cho doanh nghiá»‡p</em>â€‹</p>\r\n\r\n<p><br />\r\nNgo&agrave;i ra, Cisco c&ograve;n ph&aacute;t triá»ƒn c&aacute;c pháº§n má»m há»— trá»£ quáº£n l&yacute; nhÆ° Tr&igrave;nh quáº£n l&yacute; máº¡ng Ä‘Æ¡n giáº£n (SNMP), Tiá»‡n &iacute;ch FindIT, á»©ng dá»¥ng T&igrave;m kiáº¿m &ndash; Chia sáº» th&ocirc;ng tin cáº¥u h&igrave;nh Discovery. C&aacute;c á»©ng dá»¥ng quáº£n l&yacute; Ä‘Æ¡n giáº£n n&agrave;y sáº½ Ä‘Æ°á»£c hiá»ƒn thá»‹ tr&ecirc;n tr&igrave;nh duyá»‡t web, v&igrave; tháº¿ ngÆ°á»i d&ugrave;ng c&oacute; thá»ƒ dá»… d&agrave;ng theo d&otilde;i hiá»‡u suáº¥t sá»­ dá»¥ng cá»§a thiáº¿t bá»‹ v&agrave; xá»­ l&yacute; ká»‹p thá»i c&aacute;c sá»± cá»‘ ph&aacute;t sinh.<br />\r\n<br />\r\n<strong>Kháº£ nÄƒng báº£o máº­t cao</strong><br />\r\nThiáº¿t bá»‹ chuyá»ƒn máº¡ch Cisco SG350X v&agrave; Cisco SG550X cung cáº¥p Ä‘áº§y Ä‘á»§ c&aacute;c t&iacute;nh nÄƒng báº£o máº­t ti&ecirc;n tiáº¿n cáº§n c&oacute; Ä‘á»ƒ báº£o vá»‡ dá»¯ liá»‡u kinh doanh cá»§a doanh nghiá»‡p. C&aacute;c cÆ¡ cháº¿ báº£o vá»‡ ti&ecirc;n tiáº¿n Ä‘&aacute;ng ch&uacute; &yacute; nháº¥t bao gá»“m kiá»ƒm tra ARP, IP Source Guard v&agrave; Dynamic Host Configuration Protocol (DHCP) snooping, ph&aacute;t hiá»‡n v&agrave; ngÄƒn cháº·n c&aacute;c cuá»™c táº¥n c&ocirc;ng máº¡ng c&oacute; chá»§ Ä‘&iacute;ch. Sá»± káº¿t há»£p cá»§a c&aacute;c giao thá»©c n&agrave;y cÅ©ng Ä‘Æ°á»£c gá»i l&agrave; IP-MAC port binding (IPMB). Sá»©c máº¡nh cá»§a c&ocirc;ng nghá»‡ báº£o máº­t m&agrave; Cisco mang láº¡i cho 350X v&agrave; 550X c&ograve;n thá»ƒ hiá»‡n á»Ÿ t&iacute;nh nÄƒng IPv6 First Hop Security- gi&uacute;p tÄƒng cÆ°á»ng kháº£ nÄƒng báº£o vá»‡ chá»‘ng láº¡i c&aacute;c má»‘i Ä‘e dá»a ti&ecirc;n tiáº¿n Ä‘á»‘i vá»›i IPv6. Bá»™ báº£o máº­t to&agrave;n diá»‡n n&agrave;y bao gá»“m kiá»ƒm tra ND, báº£o vá»‡ RA, báº£o vá»‡ DHCPv6, v&agrave; kiá»ƒm tra t&iacute;nh to&agrave;n váº¹n li&ecirc;n káº¿t cá»§a c&aacute;c thiáº¿t bá»‹ máº¡ng l&acirc;n cáº­n, cung cáº¥p kháº£ nÄƒng báº£o vá»‡ tuyá»‡t vá»i chá»‘ng láº¡i má»™t loáº¡t c&aacute;c cuá»™c táº¥n c&ocirc;ng giáº£ máº¡o tr&ecirc;n máº¡ng IPv6.</p>\r\n', '2017-04-27', 1),
(5, 'ÄÃ£ cÃ³ App Samsung Gear 360 cho iPhone, váº«n chÆ°a ngon láº¯m', '4023380_tinhte-gear-360-iphone-2.jpg', '<p>H&ocirc;m nay Samsung Ä‘&atilde; cung cáº¥p pháº§n má»m&nbsp;<a href=\"https://tinhte.vn/tags/gear-360/\">Gear 360</a>&nbsp;má»›i cho cáº£ 2 ná»n táº£ng l&agrave; Android v&agrave; iOS. Tr&ecirc;n Android (t<a href=\"https://tinhte.vn/go-to/aHR0cHM6Ly9wbGF5Lmdvb2dsZS5jb20vc3RvcmUvYXBwcy9kZXRhaWxzP2lkPWNvbS5zYW1zdW5nLmFuZHJvaWQuZ2VhcjM2MG1hbmFnZXI=\" target=\"_blank\">áº£i táº¡i Ä‘&acirc;y</a>) th&igrave; há»— trá»£ cáº£ phi&ecirc;n báº£n Ä‘á»i Ä‘áº§u láº«n Ä‘á»i 2017 v&agrave; há»— trá»£ Ä‘áº§y Ä‘á»§ chá»©c nÄƒng nhÆ° chá»¥p h&igrave;nh, quay phim, live stream (chá»‰ Ä‘á»i 2017 má»›i live Ä‘Æ°á»£c). Tr&ecirc;n iOS chá»‰ má»›i há»— trá»£ camera Ä‘á»i 2017. Chá»‰ há»— trá»£ chá»¥p h&igrave;nh quay phim, nhÆ°ng app hay treo v&agrave; thÆ°á»ng xuy&ecirc;n máº¥t káº¿t ná»‘i.<br />\r\n<br />\r\nC&oacute; láº½ anh em d&ugrave;ng Android Ä‘&atilde; kh&aacute; quen thuá»™c vá»›i app&nbsp;<a href=\"https://tinhte.vn/tags/samsung-gear-360/\">Samsung Gear 360</a>&nbsp;n&ecirc;n m&igrave;nh xin ph&eacute;p kh&ocirc;ng n&oacute;i nhiá»u. C&aacute;i kh&aacute;c l&agrave; láº§n n&agrave;y app Ä‘&atilde; cho c&agrave;i tr&ecirc;n má»i m&aacute;y Android chá»© kh&ocirc;ng báº¯t buá»™c pháº£i l&agrave; m&aacute;y Samsung.<br />\r\n<br />\r\nVá»›i anh em iOS th&igrave; Ä‘&acirc;y l&agrave; láº§n Ä‘áº§u Ä‘Æ°á»£c d&ugrave;ng camera cá»§a Samsung tr&ecirc;n&nbsp;<a href=\"https://tinhte.vn/tags/iphone/\">iPhone</a>, v&agrave; m&igrave;nh nháº¯c láº¡i l&agrave; app hiá»‡n nay chá»‰ há»— trá»£ Ä‘á»i camera 2017.<br />\r\n<br />\r\n<img alt=\"tinhte-gear-360-iphone-2.jpg\" src=\"https://tinhte.vn/store/2017/04/4023380_tinhte-gear-360-iphone-2.jpg\" style=\"height:298px; width:500px\" /><br />\r\nC&aacute;c báº¡n Táº£i pháº§n má»m (<a href=\"https://tinhte.vn/go-to/aHR0cHM6Ly9hcHBzdG8ucmUvdXMvcmNlQWliLmk=\" target=\"_blank\">táº¡i Ä‘&acirc;y</a>), báº­t camera l&ecirc;n, nháº¥n giá»¯ n&uacute;t Menu v&agrave; chá»n Connect to iOS, Camera sáº½ hiá»‡n t&ecirc;n máº¡ng Wifi v&agrave; máº­t kháº©u Ä‘á»ƒ káº¿t ná»‘i<br />\r\n<br />\r\nSau khi káº¿t ná»‘i c&aacute;c báº¡n c&oacute; thá»ƒ chá»¥p hoáº·c quay phim, váº«n chÆ°a thá»ƒ LiveStream<br />\r\n<br />\r\n<img alt=\"tinhte-gear-360-iphone-.jpg\" src=\"https://tinhte.vn/store/2017/04/4023379_tinhte-gear-360-iphone-.jpg\" style=\"height:298px; width:500px\" /><br />\r\n<br />\r\nPháº§n má»m cho ph&eacute;p báº¡n chá»‰nh c&aacute;c th&ocirc;ng sá»‘ nhÆ° EV, WB, HDR, Háº¹n giá» chá»¥p, chá»‰nh g&oacute;c nh&igrave;n.<br />\r\nTiáº¿c l&agrave; m&igrave;nh thá»­ tr&ecirc;n 2 c&aacute;i iPhone (7 v&agrave; 7+) th&igrave; Ä‘á»u thÆ°á»ng xuy&ecirc;n bá»‹ treo app, hoáº·c bá»‹ ngáº¯t káº¿t ná»‘i tá»± Ä‘á»™ng, nháº¥n chá»¥p xong kh&ocirc;ng xem Ä‘Æ°á»£c h&igrave;nh m&agrave; bá»‹ Ä‘&aacute; vÄƒng ra ngo&agrave;i. C&aacute;c báº¡n thá»­ xem c&oacute; bá»‹ kh&ocirc;ng hoáº·c c&oacute; c&aacute;ch kháº¯c phá»¥c th&igrave; chá»‰ m&igrave;nh vá»›i nh&eacute;!<br />\r\n<br />\r\nHy vá»ng c&aacute;c lá»—i tr&ecirc;n sáº½ sá»›m Ä‘Æ°á»£c sá»­a, v&agrave; hy vá»ng pháº§n má»m sáº½ há»— trá»£ Gear 360 Ä‘á»i Ä‘áº§u.<br />\r\n<br />\r\nC&oacute; tin Ä‘á»“n l&agrave; Gear 360 (2017) sáº½ ch&iacute;nh thá»©c Ä‘Æ°á»£c b&aacute;n ra v&agrave;o ng&agrave;y 18/04 vá»›i gi&aacute; 250$</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-04-27', 1),
(6, 'Google Ä‘á»“ng Ã½ tráº£ 7,8 triá»‡u USD tiá»n pháº¡t vÃ  khÃ´ng buá»™c cÃ i sáºµn app trÃªn Ä‘iá»‡n', 'download (1).png', '<p>Tu&acirc;n theo quyáº¿t Ä‘á»‹nh cá»§a cÆ¡ quan&nbsp;<a href=\"https://tinhte.vn/tags/chong-doc-quyen/\">chá»‘ng Ä‘á»™c quyá»n</a>&nbsp;táº¡i Nga,&nbsp;<a href=\"https://tinhte.vn/tags/google/\">Google</a>&nbsp;Ä‘á»“ng &yacute; tráº£ khoáº£n tiá»n pháº¡t 7,8 triá»‡u USD, Ä‘á»“ng thá»i ná»›i c&aacute;c quy Ä‘á»‹nh li&ecirc;n quan Ä‘áº¿n app c&agrave;i sáºµn tr&ecirc;n Ä‘iá»‡n thoáº¡i&nbsp;<a href=\"https://tinhte.vn/tags/android/\">Android</a>. Cá»¥ thá»ƒ hÆ¡n, h&atilde;ng kh&ocirc;ng Ä‘Æ°á»£c y&ecirc;u cáº§u app n&agrave;o Ä‘&oacute; buá»™c pháº£i c&oacute; máº·t tr&ecirc;n nhá»¯ng chiáº¿c Ä‘iá»‡n thoáº¡i má»›i (bá»™ Gmail, Google Maps, Search,... gá»i chung l&agrave; Google app), cÅ©ng kh&ocirc;ng Ä‘Æ°á»£c ngÄƒn cáº£n OEM c&agrave;i app cá»§a c&ocirc;ng ty kh&aacute;c l&ecirc;n. Song song Ä‘&oacute;, c&ocirc;ng ty sáº½ ra máº¯t má»™t &quot;widget d&agrave;nh cho Chrome&quot; Ä‘á»ƒ ngÆ°á»i d&ugrave;ng Android táº¡i Nga c&oacute; thá»ƒ chá»n má»™t bá»™ m&aacute;y t&igrave;m kiáº¿m máº·c Ä‘á»‹nh kh&aacute;c Google khi sá»­ dá»¥ng tr&igrave;nh duyá»‡t n&agrave;y. Báº¥t k&igrave; nh&agrave; ph&aacute;t triá»ƒn n&agrave;o k&iacute; &quot;thá»a thuáº­n thÆ°Æ¡ng máº¡i&quot; vá»›i Google Ä‘á»u c&oacute; thá»ƒ náº±m trong danh s&aacute;ch há»— trá»£. Google cam káº¿t kh&ocirc;ng tiáº¿n h&agrave;nh nhá»¯ng Ä‘á»™ng th&aacute;i khiáº¿n ngÆ°á»i ti&ecirc;u d&ugrave;ng nghÄ© ráº±ng Google l&agrave; c&ocirc;ng cá»¥ t&igrave;m kiáº¿m duy nháº¥t.<br />\r\n<br />\r\nTrÆ°á»›c Ä‘&acirc;y h&atilde;ng bá»‹ Ä‘iá»u tra trong 2 nÄƒm v&igrave;&nbsp;<a href=\"https://tinhte.vn/tags/yandex/\">Yandex</a>&nbsp;- má»™t bá»™ m&aacute;y t&igrave;m kiáº¿m lá»›n á»Ÿ Nga - kiá»‡n ráº±ng Google kh&ocirc;ng cho ph&eacute;p báº¥t k&igrave; search engine n&agrave;o kh&aacute;c Ä‘Æ°á»£c c&agrave;i tr&ecirc;n Ä‘iá»‡n thoáº¡i Android v&agrave; há» cho Ä‘&acirc;y l&agrave; h&agrave;nh Ä‘á»™ng thá»ƒ hiá»‡n sá»± cáº¡nh tranh kh&ocirc;ng l&agrave;nh máº¡nh. Táº¥t nhi&ecirc;n vá»›i quyáº¿t Ä‘á»‹nh cá»§a cÆ¡ quan chá»©c nÄƒng th&igrave; Yandex sáº½ l&agrave; má»™t trong nhá»¯ng ngÆ°á»i hÆ°á»Ÿng lá»£i lá»›n nháº¥t, c&ograve;n Google th&igrave; bá»‹ cháº­m má»Ÿ rá»™ng thá»‹ trÆ°á»ng á»Ÿ quá»‘c gia n&agrave;y. Yandex cÅ©ng l&agrave; c&ocirc;ng ty Ä‘áº§u ti&ecirc;n k&iacute; &quot;thá»a thuáº­n thÆ°Æ¡ng máº¡i&quot; n&oacute;i tr&ecirc;n vá»›i Google.<br />\r\n<br />\r\nPháº£n há»“i láº¡i váº¥n Ä‘á» n&agrave;y, Yandex n&oacute;i Ä‘&acirc;y l&agrave; quyáº¿t Ä‘á»‹nh quan trá»ng vá»›i ngÆ°á»i ti&ecirc;u d&ugrave;ng Nga, cÅ©ng kh&ocirc;ng qu&ecirc;n &quot;cáº£m Æ¡n&quot; Google v&igrave; Ä‘&atilde; &quot;nháº­n ra gi&aacute; trá»‹ cá»§a viá»‡c má»Ÿ cá»­a&quot;. Yandex nháº¥n máº¡nh khi c&aacute;c c&ocirc;ng ty cáº¡nh tranh nhau th&igrave; sá»± s&aacute;ng táº¡o má»›i xuáº¥t hiá»‡n Ä‘Æ°á»£c, v&agrave; ngÆ°á»i d&ugrave;ng xá»©ng Ä‘&aacute;ng Ä‘Æ°á»£c quyá»n lá»±a chá»n dá»‹ch vá»¥ tá»‘t nháº¥t Ä‘á»ƒ x&agrave;i.<br />\r\n<br />\r\nD&agrave;nh cho anh em n&agrave;o chÆ°a r&otilde;: báº£n th&acirc;n Android l&agrave; há»‡ Ä‘iá»u h&agrave;nh m&atilde; nguá»“n má»Ÿ, nhÆ°ng c&aacute;c dá»‹ch vá»¥ cá»§a Google, bao gá»“m cáº£&nbsp;<a href=\"https://tinhte.vn/tags/google-play/\">Google Play</a>&nbsp;th&igrave; kh&ocirc;ng. C&aacute;c nh&agrave; sáº£n xuáº¥t muá»‘n Ä‘Æ°á»£c c&agrave;i sáºµn app cá»§a Google v&agrave; c&oacute; quyá»n truy cáº­p v&agrave;o&nbsp;<a href=\"https://tinhte.vn/tags/play-store/\">Play Store</a>&nbsp;pháº£i tu&acirc;n theo má»™t sá»‘ quy Ä‘á»‹nh vá»: sá»‘ lÆ°á»£ng app Google Ä‘Æ°á»£c c&agrave;i tr&ecirc;n m&aacute;y, c&aacute;ch sáº¯p xáº¿p ra m&agrave;n h&igrave;nh ch&iacute;nh sáº½ nhÆ° tháº¿ n&agrave;o, c&agrave;i Google Search l&agrave;m tr&igrave;nh t&igrave;m kiáº¿m máº·c Ä‘á»‹nh. R&otilde; r&agrave;ng kh&ocirc;ng pháº£i ai cÅ©ng h&agrave;i l&ograve;ng vá»›i Ä‘iá»u n&agrave;y, Yandex l&agrave; má»™t v&iacute; dá»¥. á»ž Ch&acirc;u &Acirc;u Google cÅ©ng Ä‘ang bá»‹ Ä‘iá»u tra vá» quy Ä‘á»‹nh n&agrave;y.<br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2017-04-18', 1),
(7, 'VÅ© cÃ´ng Isco mang khÃ­ cháº¥t HoÃ ng gia', 'isco-01.jpg', '<h2>Äiá»‡u Disco tr&aacute;c tuyá»‡t ph&uacute;t 43</h2>\r\n\r\n<p>Ph&uacute;t 43 tr&ecirc;n s&acirc;n Riazor, Isco táº¡o n&ecirc;n m&agrave;n nháº£y m&uacute;a tr&aacute;c tuyá»‡t. Anh cÆ°á»›p b&oacute;ng, hai nhá»‹p gáº¡t Ä‘áº©y loáº¡i bá» cáº§u thá»§ Ä‘á»‘i phÆ°Æ¡ng tiáº¿n v&agrave;o trung lá»™, tiáº¿p Ä‘áº¿n l&agrave; t&igrave;nh huá»‘ng giáº­t xoay theo kiá»ƒu compa loáº¡i bá» má»™t l&uacute;c 2 cáº§u thá»§ Ä‘á»‘i phÆ°Æ¡ng. Sau Ä‘&oacute;, anh tá»‰a b&oacute;ng ra bi&ecirc;n Ä‘á»ƒ Marcelo cÄƒng ngang v&agrave;o b&ecirc;n trong, káº¿t th&uacute;c l&agrave; c&uacute; dá»©t Ä‘iá»ƒm cáº­n th&agrave;nh v&agrave;o lÆ°á»›i cá»§a Lucas Vazquez.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pha b&oacute;ng áº¥y khiáº¿n ngÆ°á»i h&acirc;m má»™ sÆ°á»›ng r&ecirc;n, bá»Ÿi n&oacute; qu&aacute; nghá»‡ thuáº­t, qu&aacute; má»¹ miá»u. V&iacute; von má»™t c&aacute;ch h&igrave;nh tÆ°á»£ng, m&agrave;n nháº£y m&uacute;a cá»§a Isco c&oacute; sá»± Ä‘á»“ng Ä‘iá»‡u r&otilde; r&agrave;ng vá»›i Ä‘iá»‡u nháº£y Disco, cháº³ng pháº£i chá»‰ v&igrave; hai danh tá»« n&agrave;y gáº§n giá»‘ng nhau. H&atilde;y Ä‘á»ƒ &yacute;, nhá»¯ng pha xá»­ l&yacute; cá»§a Isco l&agrave; Gáº¡t - Äáº©y - Giáº­t - Xoay c&ograve;n Ä‘iá»‡u nháº£y Disco c&oacute; tiáº¿t táº¥u vui tÆ°Æ¡i theo nhá»‹p 2/4, Ä‘Æ°á»£c m&ocirc; táº£ nhÆ° sau: Xuá»‘ng - L&ecirc;n - Cháº·n - L&ecirc;n.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&agrave;, suá»‘t 90 ph&uacute;t táº¡i Riazor, Isco Ä‘&acirc;u chá»‰ má»™t láº§n nháº£y Disco. Anh trá»Ÿ th&agrave;nh &ocirc;ng chá»§ cá»§a tráº­n Ä‘áº¥u báº±ng nhá»¯ng pha r&ecirc; dáº¯t ngoáº¡n má»¥c, nhá»¯ng Ä‘Æ°á»ng chuyá»n tinh táº¿ v&agrave; nhá»¯ng pha dá»©t Ä‘iá»ƒm th&agrave;nh b&agrave;n. T&iacute;nh ra Isco in dáº¥u gi&agrave;y 4 trong sá»‘ 6 b&agrave;n tháº¯ng Real ghi v&agrave;o lÆ°á»›i Deportivo. T&oacute;m láº¡i, vÅ© c&ocirc;ng Isco Ä‘&atilde; c&oacute; m&agrave;n tr&igrave;nh diá»…n ho&agrave;n háº£o m&agrave; pha b&oacute;ng ph&uacute;t 43 ch&iacute;nh l&agrave; Ä‘iá»ƒm nháº¥n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>M&agrave;n tr&igrave;nh diá»…n áº¥y kháº³ng Ä‘á»‹nh gi&aacute; trá»‹ cá»§a Isco táº¡i Real. Trong má»™t chuyáº¿n h&agrave;nh qu&acirc;n m&agrave; sá»± hÆ°ng pháº¥n cá»§a Ä‘á»™i b&oacute;ng Ho&agrave;ng gia T&acirc;y Ban Nha c&oacute; pháº§n nguá»™i láº¡nh khi vá»«a tráº£i qua c&uacute; sá»‘c tháº¥t báº¡i trÆ°á»›c Ä‘áº¡i k&igrave;nh Ä‘á»‹ch Barcelona v&agrave; máº¥t h&agrave;ng loáº¡t trá»¥ cá»™t v&igrave; nhiá»u l&yacute; do,&nbsp;<a href=\"http://bongdaplus.vn/tin-tuc/tay-ban-nha/la-liga/real-dap-tra-barca-bang-man-trut-gian-vao-deportivo-1851941704.html\">ch&iacute;nh Isco l&agrave; ngÆ°á»i Ä‘&atilde; Ä‘em vá» chiáº¿n tháº¯ng</a>&nbsp;Ä‘á»“ng thá»i khai th&ocirc;ng nguá»“n cáº£m x&uacute;c.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Isco Ä‘Ã£ biáº¿n Riazor thÃ nh nÆ¡i cáº£m xÃºc thÄƒng hoa\" src=\"http://img.f51.bdpcdn.net/Assets/Media/2017/04/27/67/isco-02.jpg\" /></p>\r\n\r\n<p>Isco Ä‘&atilde; biáº¿n Riazor th&agrave;nh nÆ¡i cáº£m x&uacute;c thÄƒng hoa</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Isco, ngÆ°á»i giá»¯ má»™t pháº§n kh&iacute; cháº¥t Ho&agrave;ng gia</h2>\r\n\r\n<p>Isco kh&ocirc;ng trÆ°á»Ÿng th&agrave;nh tá»« l&ograve; La Fabrica, tháº¿ nhÆ°ng trong sá»‘ c&aacute;c cáº§u thá»§ Ä‘ang kho&aacute;c &aacute;o Real hiá»‡n táº¡i, anh c&oacute; láº½ l&agrave; ngÆ°á»i Ä‘Æ°á»£c y&ecirc;u máº¿n nháº¥t. Ä&aacute;ng n&oacute;i, c&aacute;c CÄV Real d&agrave;nh cho Isco má»™t thá»© t&igrave;nh y&ecirc;u ná»“ng tháº¯m v&agrave; vá»‹ tha. Isco c&oacute; tráº­n hay tráº­n dá»Ÿ, sá»‘ tráº­n dá»Ÿ nhiá»u kh&ocirc;ng k&eacute;m tráº­n hay, nhÆ°ng chÆ°a bao giá» bá»‹ la &oacute;. Äiá»u Ä‘&oacute; Ronaldo kh&ocirc;ng bao giá» c&oacute; Ä‘Æ°á»£c.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c CÄV Real y&ecirc;u máº¿n anh v&igrave; sá»± táº­n hiáº¿n v&agrave; cháº¥t Ä‘i&ecirc;n há»“n nhi&ecirc;n v&ocirc; tÆ° lá»±. Isco Ä‘&atilde; v&agrave;o s&acirc;n l&agrave; ch&aacute;y háº¿t m&igrave;nh. Cháº³ng háº¡n nhÆ° Juanito. C&oacute; nhá»¯ng tráº­n Ä‘áº¥u, c&aacute;c madridistas trong l&uacute;c hÆ°ng pháº¥n Ä‘&atilde; thay t&ecirc;n Isco cho Juanito trong b&agrave;i h&aacute;t Illa illa illa Juanito, b&agrave;i h&aacute;t n&ecirc;u cao tinh tháº§n chiáº¿n Ä‘áº¥u cá»§a danh thá»§ Ä‘oáº£n má»‡nh n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Táº¥t nhi&ecirc;n, Isco ch&aacute;y &nbsp;theo c&aacute;ch vá»‹ nghá»‡ thuáº­t, Ä‘em Ä‘áº¿n thá»© cáº£m x&uacute;c d&acirc;ng tr&agrave;o chá»‰ tháº¥y á»Ÿ nhá»¯ng nghá»‡ sÄ© Ä‘&iacute;ch thá»±c. Cháº³ng háº¡n nhÆ° Guti. Náº¿u Isco nháº£y Disco th&igrave; háº³n chÆ°a ai qu&ecirc;n, cÅ©ng táº¡i Riazor n&agrave;y, ch&agrave;ng tiá»n vá»‡ sá»‘ 14 tá»«ng khiáº¿n cáº£ tháº¿ giá»›i ngá»¡ ng&agrave;ng vá»›i pha Ä‘&aacute;nh g&oacute;t kiáº¿n táº¡o cho Benzema ghi b&agrave;n trong tháº¿... Ä‘á»‘i máº·t thá»§ m&ocirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ä&aacute;ng n&oacute;i hÆ¡n ná»¯a, trong thá»i Ä‘áº¡i n&agrave;y, máº«u cáº§u thá»§ nhÆ° Isco ráº¥t hiáº¿m, Ä‘&aacute;ng Ä‘Æ°á»£c ghi v&agrave;o s&aacute;ch Ä‘á». Khi m&agrave; chiáº¿n thuáº­t Ä‘Æ°á»£c Ä‘áº·t náº·ng, cáº§u thá»§ Ä‘Æ°á»£c Ä‘&agrave;o táº¡o xoay quanh nhá»¯ng sá»‘ liá»‡u thá»‘ng k&ecirc; kh&ocirc; cá»©ng má»™t c&aacute;ch &quot;c&ocirc;ng nghiá»‡p&quot; khiáº¿n sá»± s&aacute;ng táº¡o trong thi Ä‘áº¥u bá»‹ b&agrave;o m&ograve;n Ä‘&aacute;ng ká»ƒ, nhá»¯ng pha xá»­ l&yacute; vá»‹ nghá»‡ thuáº­t gáº§n nhÆ° biáº¿n máº¥t. Ká»ƒ cáº£ Messi, vá»‘n gáº¯n m&aacute;c thi&ecirc;n t&agrave;i song cÅ©ng lu&ocirc;n chá»n c&aacute;ch Ä‘Æ¡n giáº£n nháº¥t c&oacute; thá»ƒ Ä‘á»ƒ qua ngÆ°á»i, h&agrave;m lÆ°á»£ng hoa má»¹ ráº¥t &iacute;t.</p>\r\n', '2017-04-27', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id_danh_muc`),
  ADD KEY `id_danh_muc_cha` (`id_danh_muc_cha`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id_don_hang`),
  ADD KEY `id_tai_khoan` (`id_tai_khoan`);

--
-- Chỉ mục cho bảng `don_hang_ct`
--
ALTER TABLE `don_hang_ct`
  ADD PRIMARY KEY (`id_don_hang`,`id_san_pham`),
  ADD KEY `id_san_pham` (`id_san_pham`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id_lien_he`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id_san_pham`),
  ADD KEY `id_danh_muc` (`id_danh_muc`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id_tai_khoan`),
  ADD UNIQUE KEY `ten_dang_nhap` (`ten_dang_nhap`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`id_tin_tuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id_danh_muc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id_don_hang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id_lien_he` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id_san_pham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id_tai_khoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `id_tin_tuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_ibfk_1` FOREIGN KEY (`id_tai_khoan`) REFERENCES `tai_khoan` (`id_tai_khoan`);

--
-- Các ràng buộc cho bảng `don_hang_ct`
--
ALTER TABLE `don_hang_ct`
  ADD CONSTRAINT `don_hang_ct_ibfk_1` FOREIGN KEY (`id_san_pham`) REFERENCES `san_pham` (`id_san_pham`),
  ADD CONSTRAINT `don_hang_ct_ibfk_2` FOREIGN KEY (`id_don_hang`) REFERENCES `don_hang` (`id_don_hang`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_ibfk_1` FOREIGN KEY (`id_danh_muc`) REFERENCES `danh_muc` (`id_danh_muc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
