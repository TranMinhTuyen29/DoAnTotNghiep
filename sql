-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2025 lúc 12:31 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_commerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(10, 'tuyen12345@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Minh Tuyên', '9387466382', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_slug` varchar(255) NOT NULL,
  `brand_desc` text NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_slug`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(22, 'Rolex', 'Rolex', 'Xuất xứ: Thụy Sĩ\r\n\r\nĐặc trưng: Biểu tượng của sự sang trọng, bền bỉ và đẳng cấp.\r\n\r\nPhân khúc: Cao cấp – xa xỉ, giá trị giữ vững theo thời gian, thường được coi là “đồng hồ đầu tư”.', 0, '2025-09-07 07:51:05', '2025-09-07 07:51:05'),
(23, 'Patek Philippe', 'Patek Philippe', 'Xuất xứ: Thụy Sĩ\r\n\r\nĐặc trưng: Đồng hồ cơ tinh xảo, nhiều mẫu siêu phức tạp (Grand Complications).\r\n\r\nPhân khúc: Xa xỉ bậc nhất, sưu tầm đẳng cấp.', 0, '2025-09-07 07:51:26', '2025-09-07 07:51:26'),
(24, 'Audemars Piguet', 'Audemars Piguet', 'Xuất xứ: Thụy Sĩ\r\n\r\nĐặc trưng: Nổi tiếng với dòng Royal Oak, thiết kế viền bát giác độc đáo.\r\n\r\nPhân khúc: Xa xỉ, thể thao – sang trọng.', 0, '2025-09-07 07:51:47', '2025-09-07 07:51:47'),
(25, 'Omega', 'Omega', 'Xuất xứ: Thụy Sĩ\r\n\r\nĐặc trưng: Chính xác, bền bỉ, từng được NASA chọn lên Mặt Trăng.\r\n\r\nPhân khúc: Cao cấp, giá dễ tiếp cận hơn Rolex.', 1, '2025-09-07 07:52:06', '2025-09-07 07:52:06'),
(26, 'TAG Heuer', 'TAG Heuer', 'Xuất xứ: Thụy Sĩ\r\n\r\nĐặc trưng: Phong cách thể thao, đồng hồ bấm giờ chronograph nổi tiếng.\r\n\r\nPhân khúc: Trung – cao cấp.', 0, '2025-09-07 07:52:21', '2025-09-07 07:52:21'),
(27, 'Hublot', 'Hublot', 'Xuất xứ: Thụy Sĩ\r\n\r\nĐặc trưng: Thiết kế trẻ trung, táo bạo, kết hợp nhiều chất liệu mới (gốm, cao su, vàng).\r\n\r\nPhân khúc: Cao cấp – xa xỉ hiện đại.', 0, '2025-09-07 07:52:35', '2025-09-07 07:52:35'),
(28, 'Breitling', 'Breitling', 'Xuất xứ: Thụy Sĩ\r\n\r\nĐặc trưng: Đồng hồ phi công, nhiều chức năng đo lường, thiết kế mạnh mẽ.\r\n\r\nPhân khúc: Cao cấp.', 0, '2025-09-07 07:52:51', '2025-09-07 07:52:51'),
(29, 'IWC Schaffhausen', 'IWC Schaffhausen', 'Xuất xứ: Thụy Sĩ\r\n\r\nĐặc trưng: Thanh lịch, chính xác, nổi tiếng với dòng Pilot’s Watch.\r\n\r\nPhân khúc: Cao cấp – xa xỉ.', 0, '2025-09-07 07:53:23', '2025-09-07 07:53:23'),
(30, 'Jaeger-LeCoultre', 'Jaeger-LeCoultre', 'Xuất xứ: Thụy Sĩ\r\n\r\nĐặc trưng: Thợ chế tác của nhiều thương hiệu khác, nổi tiếng với Reverso (mặt xoay).\r\n\r\nPhân khúc: Cao cấp – xa xỉ.', 0, '2025-09-07 07:53:41', '2025-09-07 07:53:41'),
(31, 'Cartier', 'Cartier', 'Xuất xứ: Pháp\r\n\r\nĐặc trưng: Thiết kế mang tính trang sức, thanh lịch, tinh tế.\r\n\r\nPhân khúc: Xa xỉ, thường được coi là “đồng hồ kim hoàn”.', 0, '2025-09-07 07:53:54', '2025-09-07 07:53:54'),
(32, 'Longines', 'Longines', 'Xuất xứ: Thụy Sĩ\r\n\r\nĐặc trưng: Lâu đời, phong cách cổ điển, thanh lịch, giá hợp lý.\r\n\r\nPhân khúc: Trung – cận cao cấp.', 0, '2025-09-07 07:56:00', '2025-09-07 07:56:00'),
(33, 'Seiko', 'Seiko', 'Xuất xứ: Nhật Bản\r\n\r\nĐặc trưng: Đa dạng từ phổ thông đến cao cấp, nổi bật với công nghệ Quartz và Spring Drive.\r\n\r\nPhân khúc: Bình dân – trung cấp (có dòng Grand Seiko cạnh tranh xa xỉ).', 0, '2025-09-07 07:56:21', '2025-09-07 07:56:21'),
(34, 'Casio', 'Casio', 'Xuất xứ: Nhật Bản\r\n\r\nĐặc trưng:\r\n\r\nNổi tiếng với độ bền bỉ, đa năng và giá cả hợp lý.\r\n\r\nDòng G-Shock & Baby-G: siêu bền, chống sốc, chống nước, phong cách thể thao.\r\n\r\nDòng Edifice: lịch lãm, hiện đại, nhiều tính năng.\r\n\r\nDòng Vintage & Classic: thiết kế hoài cổ, đơn giản, dễ phối đồ.\r\n\r\nPhân khúc: Bình dân – trung cấp, dễ tiếp cận cho học sinh, sinh viên đến dân công sở.', 0, '2025-09-07 08:08:08', '2025-09-07 08:08:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `meta_keywords` text NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug_category_product` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `meta_keywords`, `category_name`, `slug_category_product`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(34, 'đồng hồ nam\r\nđồng hồ nam thời trang\r\nđồng hồ nam cao cấp\r\nđồng hồ nam thể thao\r\nđồng hồ nam công sở\r\nđồng hồ nam cổ điển\r\nđồng hồ nam sang trọng\r\nđồng hồ nam thời trang\r\nđồng hồ nam dây da\r\nđồng hồ nam dây kim loại\r\nđồng hồ nam dây thép\r\nđồng hồ nam dây cao su\r\nđồng hồ nam Casio\r\nđồng hồ nam Seiko\r\nđồng hồ nam Citizen\r\nđồng hồ nam Orient\r\nđồng hồ nam Tissot\r\nđồng hồ nam Patek Philipp', 'Đồng Hồ Nam', 'Nam', 'Đặc điểm: Kích thước mặt lớn hơn, thiết kế mạnh mẽ, lịch lãm, phù hợp với cổ tay nam.\r\n\r\nChất liệu: Dây kim loại, dây da, dây cao su; mặt kính cường lực hoặc sapphire.\r\n\r\nDành cho: Phong cách công sở, thể thao, hoặc thời trang.', 0, '2025-09-07 06:26:39', '2025-09-07 06:26:39'),
(35, 'Nữ', 'Đồng Hồ Nữ', 'Nữ', '1.Thiết kế\r\nThường mang phong cách thanh lịch, tinh tế và nh    gọn, phù hợp với cổ tay nữ.\r\nChất liệu phổ biến: dây da mềm, dây kim loại mạ vàng/ bạc/ hồng, mặt kính chống xước.\r\nKích thước mặt thường 28mm – 34mm, mảnh mai hơn đồng hồ nam.\r\nMàu sắc: trắng, hồng, vàng hồng, bạc, đen – toát lên sự nữ tính và thời trang.\r\n2.Tính năng\r\nHiển thị giờ, phút, giây cơ bản.\r\nMột số mẫu có thêm: lịch ngày, chống nước nhẹ, chống va đập.\r\nĐồng hồ thông minh nữ (smartwatch) còn hỗ trợ: đo nhịp tim, đếm bước chân, theo dõi giấc ngủ.\r\n3.Ý nghĩa & phong cách\r\nLà phụ kiện thời trang tôn lên sự sang trọng, quyến rũ.\r\nThường dùng trong dự tiệc, công sở hoặc hằng ngày.\r\nNgoài chức năng xem giờ, còn thể hiện gu thẩm mỹ, phong cách sống và sự tinh tế của phái đẹp.', 0, '2025-09-07 06:33:35', '2025-09-07 06:33:35'),
(37, 'Trẻ em', 'Đồng Hồ Cho Trẻ Em', 'Trẻ Em', 'Đặc điểm:\r\nKiểu dáng nhỏ gọn, dễ thương, nhiều màu sắc bắt mắt (xanh, hồng, đỏ, vàng…).\r\nThiết kế đơn giản, dễ đọc số, giúp bé tập làm quen với việc xem giờ.\r\nMột số mẫu là đồng hồ thông minh (smartwatch) có GPS, nghe gọi, chống nước nhẹ.\r\nChất liệu:\r\nDây cao su, nhựa dẻo an toàn, nhẹ, êm ái không gây kích ứng da.\r\nMặt kính nhựa hoặc khoáng chống va đập.\r\n\r\nDành cho:\r\nTrẻ em từ 4–12 tuổi.\r\nPhụ huynh muốn rèn cho bé thói quen xem giờ đúng giờ giấc.\r\nNgười thân, cha mẹ tặng bé trong dịp sinh nhật, lễ, Tết.', 0, '2025-09-07 06:37:25', '2025-09-07 06:37:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(16, 'Trần Minh Tuyên', 'tuyen12345@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0916662617', NULL, NULL),
(17, 'Trần Minh Tuyên', 'tuyen12345@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0916662617', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_status` int(20) NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `order_status`, `order_code`, `created_at`, `updated_at`) VALUES
(47, 12, 48, 3, 'bdec7', '2025-10-04 21:07:07', NULL),
(48, 12, 49, 2, '75483', '2025-10-04 02:21:02', NULL),
(49, 16, 50, 2, '7f56a', '2025-10-20 20:17:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_code`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(84, '7f56a', 68, 'Đồng hồ Nam G-Shock', '1500000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` varchar(50) NOT NULL,
  `product_sold` int(11) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_content` text NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_quantity`, `product_sold`, `product_slug`, `category_id`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(63, 'Đồng hồ Baby-G', '10', 0, 'Nữ', 35, 34, '<p>Trẻ trung, năng động, nhiều m&agrave;u sắc, chống va đập.</p>', '<p>Trẻ trung, năng động, nhiều m&agrave;u sắc, chống va đập.</p>', '1000000', 'Baby-G7861.jpeg', 0, NULL, NULL),
(64, 'Đồng hồ nữ Sheen', '10', 0, 'Nữ', 35, 34, '<p>Sang trọng, nữ t&iacute;nh, d&acirc;y kim loại hoặc da, đ&iacute;nh đ&aacute; pha l&ecirc;.</p>', '<p>Sang trọng, nữ t&iacute;nh, d&acirc;y kim loại hoặc da, đ&iacute;nh đ&aacute; pha l&ecirc;.</p>', '1000000', 'Sheen67.jpeg', 0, NULL, NULL),
(65, 'Đồng hồ Standard nữ', '10', 0, 'Nữ', 35, 34, '<p>Nhỏ gọn, thanh lịch, dễ phối đồ c&ocirc;ng sở.</p>', '<p>Nhỏ gọn, thanh lịch, dễ phối đồ c&ocirc;ng sở.</p>', '1500000', 'Standard44.jpeg', 0, NULL, NULL),
(66, 'Đồng hồ Baby-G Kid', '10', 0, 'Trẻ em', 37, 34, '<p>D&agrave;nh cho b&eacute; g&aacute;i, m&agrave;u sắc dễ thương, chống sốc</p>', '<p>D&agrave;nh cho b&eacute; g&aacute;i, m&agrave;u sắc dễ thương, chống sốc</p>', '500000', 'Baby-G Kid74.jpeg', 0, NULL, NULL),
(67, 'Casio Smartwatch Kid', '10', 0, 'Trẻ em', 37, 34, '<ul>\r\n	<li>\r\n	<p>C&oacute; GPS, chống nước, hỗ trợ phụ huynh quản l&yacute;.</p>\r\n	</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<p>C&oacute; GPS, chống nước, hỗ trợ phụ huynh quản l&yacute;.</p>\r\n	</li>\r\n</ul>', '1000000', 'Casio Smartwatch Kid7.jpeg', 0, NULL, NULL),
(68, 'Đồng hồ Nam G-Shock', '9', 1, 'Nam', 34, 34, '<p>Bền bỉ, chống sốc, chống nước, phong c&aacute;ch thể thao &ndash; đường phố.</p>', '<p>Bền bỉ, chống sốc, chống nước, phong c&aacute;ch thể thao &ndash; đường phố.</p>', '1500000', 'G-Shock86.jpeg', 0, NULL, NULL),
(69, 'Đồng hồ Nam Standard & Vintage', '10', 0, 'Nam', 34, 34, '<p>Đơn giản, cổ điển, gi&aacute; dễ tiếp cận</p>', '<p>Đơn giản, cổ điển, gi&aacute; dễ tiếp cận</p>', '500000', 'Standard & Vintage72.jpeg', 0, NULL, NULL),
(70, 'Seiko Adventure Kids Watch', '10', 0, 'Trẻ em', 37, 33, '<p>mẫu đồng hồ trẻ em t&aacute;i hiện thiết kế &ldquo;Tuna&rdquo; (vỏ h&igrave;nh hộp c&aacute; ngừ), l&agrave;m bằng silicon bền v&agrave; c&oacute; khả năng chịu nước đến 20 bar. D&acirc;y được l&agrave;m dạng accordion co gi&atilde;n gi&uacute;p trẻ dễ tự đeo, dễ d&agrave;ng th&aacute;o rửa v&agrave; an to&agrave;n khi vận động mạnh</p>', '<p>mẫu đồng hồ trẻ em t&aacute;i hiện thiết kế &ldquo;Tuna&rdquo; (vỏ h&igrave;nh hộp c&aacute; ngừ), l&agrave;m bằng silicon bền v&agrave; c&oacute; khả năng chịu nước đến 20 bar. D&acirc;y được l&agrave;m dạng accordion co gi&atilde;n gi&uacute;p trẻ dễ tự đeo, dễ d&agrave;ng th&aacute;o rửa v&agrave; an to&agrave;n khi vận động mạnh</p>', '1000000', 'Seiko Adventure Kids Watch44.jpeg', 0, NULL, NULL),
(71, 'Seiko 5 Sports', '10', 0, 'Nam', 34, 33, '<p>d&ograve;ng cơ tự động nổi tiếng, gi&aacute; phải chăng, đa dạng về kiểu d&aacute;ng v&agrave; d&acirc;y đeo. L&agrave; lựa chọn phổ biến cho phong c&aacute;ch năng động, trẻ trung</p>', '<p>d&ograve;ng cơ tự động nổi tiếng, gi&aacute; phải chăng, đa dạng về kiểu d&aacute;ng v&agrave; d&acirc;y đeo. L&agrave; lựa chọn phổ biến cho phong c&aacute;ch năng động, trẻ trung</p>', '1500000', 'Seiko 5 Sports56.jpeg', 0, NULL, NULL),
(72, 'Seiko Lukia', '10', 0, 'Nữ', 35, 33, '<p>ra mắt từ năm 1995, hướng đến phụ nữ hiện đại, năng động. T&ecirc;n Lukia gh&eacute;p từ Lucid &ndash; Unison &ndash; Keen &ndash; Intellectual &ndash; Active</p>', '<p>ra mắt từ năm 1995, hướng đến phụ nữ hiện đại, năng động. T&ecirc;n Lukia gh&eacute;p từ Lucid &ndash; Unison &ndash; Keen &ndash; Intellectual &ndash; Active</p>', '12000000', 'Seiko Lukia94.jpeg', 0, NULL, NULL),
(73, 'Đồng hồ Longines Flagship Classic', '10', 0, 'Nam', 34, 32, '<p>Size khoảng <strong>40 mm</strong>&ensp;&ndash; ph&ugrave; hợp với cổ tay nam trung b&igrave;nh.</p>\r\n\r\n<p>Thiết kế Automatic, mặt c&oacute; đ&iacute;nh kim cương nhẹ, vỏ th&eacute;p + mạ v&agrave;ng</p>', '<p>Size khoảng <strong>40 mm</strong>&ensp;&ndash; ph&ugrave; hợp với cổ tay nam trung b&igrave;nh.</p>\r\n\r\n<p>Thiết kế Automatic, mặt c&oacute; đ&iacute;nh kim cương nhẹ, vỏ th&eacute;p + mạ v&agrave;ng</p>', '1500000', 'Đồng hồ Longines Flagship Classic19.jpeg', 0, NULL, NULL),
(74, 'Đồng hồ Longines HydroConquest', '10', 0, 'Nam', 34, 32, '<ul>\r\n	<li>\r\n	<p>Size ~ 41 mm&ensp;&ndash; mạnh mẽ, thể thao.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chống nước tốt, viền gốm, m&aacute;y automatic.&nbsp;</p>\r\n	</li>\r\n</ul>', '<ul>\r\n	<li>\r\n	<p>Size ~ 41 mm&ensp;&ndash; mạnh mẽ, thể thao.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chống nước tốt, viền gốm, m&aacute;y automatic.</p>\r\n	</li>\r\n</ul>', '1500000', 'Longines HydroConquest61.jpeg', 0, NULL, NULL),
(75, 'Đồng hồ Longines Mini DolceVita', '10', 0, 'Nữ', 35, 32, '<p>K&iacute;ch thước 21.50 &times; 29.00 mm&ensp;&ndash; mặt chữ nhật nhỏ gọn, thanh lịch.</p>\r\n\r\n<p>C&oacute; loại đ&iacute;nh kim cương, thiết kế nữ t&iacute;nh &amp; sang trọng.</p>', '<p>K&iacute;ch thước 21.50 &times; 29.00 mm&ensp;&ndash; mặt chữ nhật nhỏ gọn, thanh lịch.</p>\r\n\r\n<p>C&oacute; loại đ&iacute;nh kim cương, thiết kế nữ t&iacute;nh &amp; sang trọng.</p>', '12000000', 'Longines Mini DolceVita12.jpeg', 0, NULL, NULL),
(76, 'Đồng hồ Longines Flagship Classic', '10', 0, 'Nữ', 35, 32, '<p>Size ~30 mm&ensp;&ndash; vừa tay nữ.</p>\r\n\r\n<p>Tự động, th&eacute;p + v&agrave;ng PVD + đ&iacute;nh kim cương nhỏ</p>', '<p>Size ~30 mm&ensp;&ndash; vừa tay nữ.</p>\r\n\r\n<p>Tự động, th&eacute;p + v&agrave;ng PVD + đ&iacute;nh kim cương nhỏ</p>', '1000000', 'Longines Flagship Classic82.jpeg', 0, NULL, NULL),
(77, 'Đồng hồ Mini DolceVita', '10', 0, 'Trẻ em', 37, 32, '<p>Mẫu cực nhỏ, đủ nhỏ để đeo vừa cho trẻ em lớn hoặc người c&oacute; cổ tay rất nhỏ.</p>', '<p>Mẫu cực nhỏ, đủ nhỏ để đeo vừa cho trẻ em lớn hoặc người c&oacute; cổ tay rất nhỏ.</p>', '500000', 'Mini DolceVita9.jpeg', 0, NULL, NULL),
(78, 'Đồng hồ La Grande Classique', '10', 0, 'Trẻ em', 37, 32, '<p>La Grande Classique thường c&oacute; phi&ecirc;n bản nhỏ &ldquo;nữ nhỏ&rdquo;, nếu trẻ em trai hoặc g&aacute;i muốn đeo nhẹ nh&agrave;ng th&igrave; c&oacute; thể chọn loại ~28-30 mm.</p>', '<p>La Grande Classique thường c&oacute; phi&ecirc;n bản nhỏ &ldquo;nữ nhỏ&rdquo;, nếu trẻ em trai hoặc g&aacute;i muốn đeo nhẹ nh&agrave;ng th&igrave; c&oacute; thể chọn loại ~28-30 mm.</p>', '500000', 'La Grande Classique27.jpeg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `shipping_notes` text NOT NULL,
  `shipping_method` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `shipping_method`, `created_at`, `updated_at`) VALUES
(50, 'Tran MInh Tuyen', '296 le thanh nghi', '123456', 'Tuyentk123456@gmail.com', '1', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
