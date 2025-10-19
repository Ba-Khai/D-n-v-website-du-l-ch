-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th9 12, 2025 lúc 03:18 PM
-- Phiên bản máy phục vụ: 10.6.23-MariaDB-cll-lve-log
-- Phiên bản PHP: 8.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `botcheck_testcodektm2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `customer_name` varchar(120) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `payment_method` enum('MOMO','VNPAY','TIEN_MAT') NOT NULL,
  `total_price` varchar(555) NOT NULL,
  `status` enum('pending','approved','declined') NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `tour_id`, `room_id`, `customer_name`, `phone`, `note`, `payment_method`, `total_price`, `status`, `created_at`) VALUES
(1, 2, 2, 2, 'ktmitvn', '0708653781', 'sssss', 'TIEN_MAT', '2000000.00', 'pending', '2025-09-01 12:31:26'),
(2, 2, 2, 2, 'sss', '2312', 'dsad', 'TIEN_MAT', '2000000', 'approved', '2025-09-02 15:27:24'),
(3, 3, 2, 2, 'khai', '11111111111', 'ok', 'VNPAY', '2000000', 'pending', '2025-09-02 16:14:42'),
(4, 3, 2, 2, 'khai', '11111111111', 'ok', 'VNPAY', '2000000', 'pending', '2025-09-02 16:15:26'),
(5, 3, 2, 2, 'khai', '11111111111', 'ok', 'MOMO', '2000000', 'pending', '2025-09-02 16:15:32'),
(6, 3, 2, 2, 'khai', 'admin@gmail.com', 'ok', 'MOMO', '2000000', 'pending', '2025-09-02 16:16:16'),
(7, 4, 2, 2, 'ok', '1111111111', 'ok', 'MOMO', '2000000', 'pending', '2025-09-02 16:20:23'),
(8, 4, 2, 2, 'k', '111', 'hdhdh', 'VNPAY', '2000000', 'pending', '2025-09-02 16:51:37'),
(9, 4, 2, 2, 'ok', '0372648552', 'om', 'VNPAY', '2000000', 'approved', '2025-09-02 17:01:52'),
(10, 2, 2, 2, 'jj', '01001010', 'ndhdh', 'VNPAY', '2000000', 'pending', '2025-09-03 14:12:12'),
(11, 2, 2, 2, 'jj', '01001010', 'ndhdh', 'MOMO', '2000000', 'pending', '2025-09-03 14:12:18'),
(12, 2, 2, 2, 'jj', '01001010', 'ndhdh', 'MOMO', '2000000', 'pending', '2025-09-03 14:12:20'),
(13, 2, 2, 2, 'jj', '01001010', 'ndhdh', 'MOMO', '2000000', 'approved', '2025-09-03 14:12:20'),
(14, 2, 2, 2, 'jj', '01001010', 'ndhdh', 'MOMO', '2000000', 'approved', '2025-09-03 14:12:22'),
(15, 2, 2, 2, 'jj', '01001010', 'ndhdh', 'MOMO', '2000000', 'approved', '2025-09-03 14:12:23'),
(16, 2, 2, 2, 'jj', '01001010', 'ndhdh', 'MOMO', '2000000', 'approved', '2025-09-03 14:12:23'),
(17, 2, 3, 3, 'khai', '0123456789', 'kkkk', 'MOMO', '2500000', 'approved', '2025-09-03 14:50:53'),
(18, 2, 3, 3, 'khai', '0123456789', 'cv', 'MOMO', '2500000', 'approved', '2025-09-04 15:40:56'),
(19, 2, 4, 4, 'khai', '0123456789', 'x', 'MOMO', '909999000', 'approved', '2025-09-04 15:50:10'),
(20, 4, 5, 5, 'ok', '0372648552', 'cề', 'VNPAY', '8436000', 'pending', '2025-09-04 16:12:28'),
(21, 2, 5, 5, 'khai', '0123456789', 'cvd', 'TIEN_MAT', '8436000', 'pending', '2025-09-05 03:55:44'),
(22, 2, 4, 4, 'khai', '0123456789', 'wf', 'TIEN_MAT', '909999000', 'pending', '2025-09-05 03:56:19'),
(23, 4, 7, 7, 'ok', '0372648552', 'db', 'VNPAY', '58999000', 'pending', '2025-09-05 16:06:33'),
(24, 8, 7, 7, 'Nguyen Tran Linh', '0825219997', 'huhu', 'MOMO', '58999000', 'pending', '2025-09-11 09:21:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL CHECK (`rating` between 1 and 5),
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `tour_id`, `user_id`, `rating`, `comment`, `created_at`) VALUES
(1, 5, 2, 5, 'ok', '2025-09-05 14:35:48'),
(2, 5, 4, 5, 'quá tuy?t v?i', '2025-09-05 15:40:03'),
(3, 6, 2, 5, 'quá ok', '2025-09-05 15:52:36'),
(4, 6, 4, 5, 'quá s?ch s? ?ii ch?i ok', '2025-09-05 15:53:07'),
(5, 4, 8, 1, 'Tôi c?m th?y không hài lòng v??i d?ch v? , th?c s? không x?ng ?áng v?i s? ti?n mình b? ra . nói chung là nh? ***', '2025-09-11 09:22:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `name` varchar(180) NOT NULL,
  `area` varchar(60) NOT NULL,
  `max_guests` int(11) NOT NULL,
  `bed_type` varchar(100) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `location` varchar(200) NOT NULL,
  `hotel_name` varchar(200) NOT NULL,
  `hotel_address` varchar(255) NOT NULL,
  `hotel_description` mediumtext DEFAULT NULL,
  `remaining` int(11) NOT NULL DEFAULT 0,
  `options_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options_json`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `tour_id`, `name`, `area`, `max_guests`, `bed_type`, `price`, `location`, `hotel_name`, `hotel_address`, `hotel_description`, `remaining`, `options_json`, `created_at`) VALUES
(2, 2, 'KS CTB', '30m2', 2, 'Double', 500000.00, 'Đà Nẵng', 'CTB', 'TPHCM , CC', 'Vinpearl Condotel Riverfront Đà Nẵng là khách sạn 5 sao nằm ngay bên bờ sông Hàn, sở hữu vị trí trung tâm thuận tiện di chuyển đến các địa điểm nổi tiếng của thành phố như cầu Rồng, biển Mỹ Khê và phố cổ Hội An.', 5, '[\"Bao \\u0103n bao ng\\u1ee7\"]', '2025-09-01 03:51:09'),
(3, 3, 'khaile', '30m2', 2, 'Double', 500000.00, 'đà nẵng', 'novotel', '03quangtrung', 'rất sạch thoáng mát', 5, '[\"qu\\u00e1 ok\"]', '2025-09-03 14:50:13'),
(4, 4, 'Bãi sạn', '99m2', 9, 'Double', 10000000.00, '02 Hồ Nghinh', 'PHÚ MỸ THÀNH', '327  Nguyễn Tất Thành', 'sạch sẽ có view thoáng mát', 4, '[\"ch\\u01a1i t\\u1eb9t ga\"]', '2025-09-04 15:49:25'),
(5, 5, 'PHÚ QUỐC', '77m2', 2, 'Double', 548000.00, '11 HÀM NGHI', 'DIANA', '14 HỒ GƯƠM', 'Tour Du Lịch Phú Quốc – Hệ thống hoạt động cung cấp voucher du lịch/ Combo & Tour du lịch uy tín tại thị trường Phú Quốc kèm theo liên kết phân phối cho hơn +300 resort khách sạn trên cả nước. Tại đây, chúng tôi tập trung vào ba nhóm dịch vụ chính: Voucher đặt phòng Ks?Resort giá rẻ; Combo du lịch giá rẻ; Phân phối các Tour du lịch trải nghiệm với việc liên kết trực tiếp các đơn vị du lịch với mục tiêu mang lại cho khách hàng dịch vụ du lịch Phú Quốc được hỗ trợ toàn diện.', 5, '[\"Du L\\u1ecbch 5 Sao Vi\\u1ec7t Nam s\\u1eb5n +100 combo\\/ tour du l\\u1ecbch Ph\\u00fa Qu\\u1ed1c k\\u1ebft h\\u1ee3p h\\u1ed7 tr\\u1ee3 s\\u0103n v\\u00e9 m\\u00e1y bay v\\u00e0 kh\\u00e1ch s\\u1ea1n ti\\u1ebft ki\\u1ec7m 15 \\u2013  55%. Qu\\u00fd kh\\u00e1ch h\\u00e0ng s\\u1ebd \\u0111\\u01b0\\u1ee3c t\\u01b0 v\\u1ea5n l\\u1ef1a ch\\u1ecdn c\\u00e1c ph\\u01b0\\u01a1ng \\u00e1n, l\\u00ean k\\u1ebf ho\\u1ea1ch vui ch\\u01a1i t\\u00f9y theo nhu c\\u1ea7u c\\u1ee7a \\u0111o\\u00e0n\\/c\\u00e1 nh\\u00e2n,  h\\u00e0nh tr\\u00ecnh vi vu \\u201cNg\\u1ecdc \\u0111\\u1ea3o\\u201d s\\u1ebd tuy\\u1ec7t v\\u1eddi h\\u01a1n bao gi\\u1edd h\\u1ebft.\"]', '2025-09-04 15:56:40'),
(6, 6, 'Fansipan Legend', '90m2', 8, 'Double', 5000000.00, 'Bích Vân Thiền Tự', 'Nghỉ đêm tại Sapa', 'Hoàng thành Thăng Long', 'New Sky Airport Hotel ở Sóc Sơn, Hà Nội, cách Melinh Plaza (Trung tâm Thương mại Mê Linh) và Việt Phủ Thành Chương 15 phút lái xe. Khách sạn này cách Hồ Tây 23 km và cách Câu lạc bộ Golf Vân Trì 12,4 km.\r\nHãy thư thả ngắm cảnh từ sân thượng/sân hiên hay vườn; và tận hưởng những dịch vụ, tiện ích như quyền truy cập Internet không dây miễn phí. Các dịch vụ, tiện ích khác tại Khách sạn này bao gồm dịch vụ tư vấn/hỗ trợ khách, cửa hàng quà tặng/sạp báo và hiệu cắt tóc.\r\nKhách có thể dùng bữa tại nhà hàng của New Sky Airport Hotel hoặc ghé qua tiệm/cửa hàng đồ ăn nhanh để mua quà vặt và món ăn nhẹ. Đập tan cơn khát với đồ uống yêu thích tại quầy bar/khu lounge.\r\nCó nhiều dịch vụ, tiện ích dành cho khách, bao gồm máy vi tính, nhận phòng nhanh và trả phòng nhanh. Xe đưa đón sân bay phục vụ 24 giờ với phụ phí, bên cạnh đó cũng có bãi đậu xe tự phục vụ miễn phí trong khuôn viên.\r\nHãy nghỉ ngơi thoải mái như đang ở nhà mình tại một trong 15 phòng được trang bị máy điều hòa cùng minibar và TV LED. Giường nệm có lớp đệm bông đi cùng chăn bông và bộ đồ giường cao cấp. Các phòng có sân riêng. Bạn luôn có thể giữ liên lạc bằng kết nối internet không dây miễn phí; trong khi các chương trình truyền hình cáp sẽ mang đến những phút giây giải trí thoải mái. Phòng tắm riêng với buồng tắm vòi sen có vòi sen phun mưa và đồ dùng nhà tắm miễn phí.', 5, '[\"B\\u1eaft \\u0111\\u1ea7u v\\u1edbi \\u01b0u \\u0111\\u00e3i ti\\u1ebft ki\\u1ec7m: \\u0110\\u0103ng nh\\u1eadp \\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c gi\\u1ea3m gi\\u00e1 10% cho \\u0111\\u1eb7t ph\\u00f2ng l\\u01b0u tr\\u00fa \\u0111\\u1ea7u ti\\u00ean c\\u1ee7a b\\u1ea1n!\"]', '2025-09-05 15:52:00'),
(7, 7, 'Quý khách dùng điểm tâm sáng và làm thủ tục trả phòng. Xe đưa Quý khách chinh phục đèo Ô Quy Hồ - con đèo đẹp, hùng vĩ và dài nhất trong Tứ Đại Đỉnh Đèo miền Bắc.  Đến với thanh ph', '308m2', 15, 'Double', 50000000.00, '7 P. Đông Thái, Hàng Buồm, Hoàn Kiếm, Hà Nội', 'Khách sạn Phố Cổ Hà Nội', '09 sóc sơn', 'New Sky Airport Hotel ở Sóc Sơn, Hà Nội, cách Melinh Plaza (Trung tâm Thương mại Mê Linh) và Việt Phủ Thành Chương 15 phút lái xe. Khách sạn này cách Hồ Tây 23 km và cách Câu lạc bộ Golf Vân Trì 12,4 km.\r\nHãy thư thả ngắm cảnh từ sân thượng/sân hiên hay vườn; và tận hưởng những dịch vụ, tiện ích như quyền truy cập Internet không dây miễn phí. Các dịch vụ, tiện ích khác tại Khách sạn này bao gồm dịch vụ tư vấn/hỗ trợ khách, cửa hàng quà tặng/sạp báo và hiệu cắt tóc.\r\nKhách có thể dùng bữa tại nhà hàng của New Sky Airport Hotel hoặc ghé qua tiệm/cửa hàng đồ ăn nhanh để mua quà vặt và món ăn nhẹ. Đập tan cơn khát với đồ uống yêu thích tại quầy bar/khu lounge.\r\nCó nhiều dịch vụ, tiện ích dành cho khách, bao gồm máy vi tính, nhận phòng nhanh và trả phòng nhanh. Xe đưa đón sân bay phục vụ 24 giờ với phụ phí, bên cạnh đó cũng có bãi đậu xe tự phục vụ miễn phí trong khuôn viên.\r\nHãy nghỉ ngơi thoải mái như đang ở nhà mình tại một trong 15 phòng được trang bị máy điều hòa cùng minibar và TV LED. Giường nệm có lớp đệm bông đi cùng chăn bông và bộ đồ giường cao cấp. Các phòng có sân riêng. Bạn luôn có thể giữ liên lạc bằng kết nối internet không dây miễn phí; trong khi các chương trình truyền hình cáp sẽ mang đến những phút giây giải trí thoải mái. Phòng tắm riêng với buồng tắm vòi sen có vòi sen phun mưa và đồ dùng nhà tắm miễn phí.', 8, '[\"V\\u1ecb tr\\u00ed\",\"Giao th\\u00f4ng\",\"S\\u00e2n Bay\",\": S\\u00e2n bay qu\\u1ed1c t\\u1ebf N\\u1ed9i B\\u00e0i\",\"1,7km\",\"V\\u00e9 T\\u00e0u\",\": ga Trung Gi\\u00e3\",\"17,4km\",\"Mua S\\u1eafm\",\"C\\u1eeda h\\u00e0ng Qu\\u00e0 \\u0111\\u1eb7c s\\u1ea3n mi\\u1ec1n b\\u1eafc\",\"<100m\",\"Yamaha Ph\\u00fa C\\u01b0\\u1eddng S\\u00f3c S\\u01a1n H\\u00e0 n\\u1ed9i\",\"580m\",\"C\\u1eeda H\\u00e0ng T\\u1ea1p H\\u00f3a, N\\u01b0\\u1edbc Gi\\u1ea3i Kh\\u00e1t Nam Dung\",\"1,0km\",\"C\\u01a1 Kh\\u00ed T\\u00fa H\\u00e0\",\"1,8km\",\"V\\u00e0ng B\\u1ea1c Kim Oanh\",\"2,1km\",\"M\\u1ef9 ph\\u1ea9m Loan X\\u1ecb\",\"2,6km\",\"C\\u1eeda h\\u00e0ng n\\u1ed9i th\\u1ea5t Anh Th\\u1ea3o\",\"2,7km\",\"Melinh Plaza\",\"3,1km\",\"B\\u00e1nh sinh nh\\u1eadt Minh Ch\\u00e2u bakery 2\",\"3,8km\",\"T\\u1ea1p H\\u00f3a B\\u00e1ch H\\u00f3a Xanh\",\"3,8km\",\"Lang \\u0110ao T\\u00eat C\\u00f4 Truy\\u00ean\",\"4,4km\",\"T\\u1ea1p ho\\u00e1 Thanh Oanh\",\"4,7km\",\"C\\u1eeda H\\u00e0ng B\\u00e1ch H\\u00f3a B\\u1eb1ng Giang\",\"5,1km\",\"T\\u1ea1p H\\u00f3a Ph\\u1ea9m Li\\u00ean\",\"5,3km\",\"Chi nh\\u00e1nh C\\u00f4ng ty C\\u1ed5 ph\\u1ea7n Th\\u01b0\\u01a1ng m\\u1ea1i v\\u00e0 D\\u1ecbch v\\u1ee5 Ng\\u1ecdc H\\u00e0 t\\u1ea1i N\\u1ed9i B\\u00e0i\",\"5,3km\",\"C\\u1eeda H\\u00e0ng T\\u1ea1p H\\u00f3a T\\u00f9ng Bi\\u1ec7n\",\"6,3km\",\"Showroom Thanh Th\\u00e1i\",\"6,4km\",\"Mai Hoa General Grocery Store\",\"6,5km\",\"Ch\\u1ee3 Hoa \\u0111\\u1ea7u m\\u1ed1i\",\"6,7km\",\"Ch\\u1ee3 M\\u00ea Linh\",\"6,8km\",\"\\u0110i\\u1ec3m n\\u1ed5i b\\u1eadt\",\"H\\u1ed9i Tr\\u01b0\\u1eddng Th\\u00f4n \\u0110i\\u1ec1n X\\u00e1\",\"600m\",\"H\\u1ed3\",\"750m\",\"CLB TH\\u1ec2 H\\u00ccNH TH\\u00c0NH LONG\",\"980m\",\"C\\u00f4ng vi\\u00ean N\\u00f4ng nghi\\u00ea\\u0323p Long Vi\\u00eat\",\"1,4km\",\"Ch\\u00f9a Kinh L\\u00e2m\",\"2,2km\",\"\\u0110\\u1ec1n Thanh Nh\\u00e0n\",\"4,0km\",\"Nh\\u00e0 V\\u0103n H\\u00f3a Th\\u00f4n Xu\\u00e2n L\\u1ec5\",\"4,5km\",\"Nh\\u00e0 V\\u0103n H\\u00f3a Th\\u00f4n \\u0110\\u00f4ng\",\"5,2km\",\"Hoa H\\u1ed3ng Anh\",\"6,6km\",\"Khu sinh th\\u00e1i My Hill \\u0110\\u1ed3ng Quan\",\"6,8km\",\"H\\u1ed3 \\u0110\\u1ed3ng Quan\",\"7,0km\",\"Ch\\u00f9a Nam Thi\\u00ean N\\u1ed9i Ph\\u1eadt\",\"7,2km\",\"Ch\\u00f9a Trung H\\u1eadu\"]', '2025-09-05 16:01:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_images`
--

CREATE TABLE `room_images` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `room_images`
--

INSERT INTO `room_images` (`id`, `room_id`, `image_url`, `created_at`) VALUES
(1, 2, 'uploads/room_68b5182d1e99d.jpg', '2025-09-01 03:51:09'),
(2, 3, 'uploads/room_68b855a5e2597.jpg', '2025-09-03 14:50:13'),
(3, 4, 'uploads/room_68b9b5050226c.webp', '2025-09-04 15:49:25'),
(4, 5, 'uploads/room_68b9b6b854b56.png', '2025-09-04 15:56:40'),
(5, 6, 'uploads/room_68bb07205c1db.webp', '2025-09-05 15:52:00'),
(6, 7, 'uploads/room_68bb09498f2a6.webp', '2025-09-05 16:01:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(150) NOT NULL,
  `logo_url` varchar(300) DEFAULT NULL,
  `homepage_hero` varchar(255) DEFAULT NULL,
  `about_html` mediumtext DEFAULT NULL,
  `payment_info_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payment_info_json`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `site_settings`
--

INSERT INTO `site_settings` (`id`, `site_name`, `logo_url`, `homepage_hero`, `about_html`, `payment_info_json`) VALUES
(1, 'TourX', '', 'Khám phá thế giới cùng TourX', '<p>Về chúng tôi</p>', '{}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `name` varchar(200) NOT NULL,
  `departure` varchar(150) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `duration_days` int(11) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `tour_type` varchar(120) NOT NULL,
  `transport` varchar(120) NOT NULL,
  `status` enum('Còn chỗ','Hết chỗ','Sắp khởi hành') NOT NULL DEFAULT 'Còn chỗ',
  `price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `image_url` varchar(300) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `itinerary` mediumtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `code`, `name`, `departure`, `start_date`, `end_date`, `duration_days`, `destination`, `tour_type`, `transport`, `status`, `price`, `image_url`, `description`, `itinerary`, `created_at`) VALUES
(2, 'KTM12345', 'TPHCM', 'TPHCM2', '2025-09-01', '2025-09-04', 3, 'TPHCM3', 'Loại hình tour là gì', 'Xe 16 chỗ', 'Còn chỗ', 1500000.00, 'uploads/tour_68b517b6cf6e4.jpg', '<p>TPHCM verry good</p>\r\n\r\n<p>Kkkk</p>\r\n', '<h2>1. Giới thiệu</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Đ&agrave; Nẵng: Th&agrave;nh phố biển đ&aacute;ng sống nhất Việt Nam, nổi tiếng với B&agrave; N&agrave; Hills, cầu Rồng, biển Mỹ Kh&ecirc;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Hội An: Phố cổ được UNESCO c&ocirc;ng nhận l&agrave; di sản văn h&oacute;a thế giới, lung linh đ&egrave;n lồng, ẩm thực đặc sắc.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>2. Lịch tr&igrave;nh chi tiết</h2>\r\n\r\n<h3><strong>Ng&agrave;y 1: Đ&agrave; Nẵng &ndash; B&agrave; N&agrave; Hills &ndash; Cầu Rồng</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>S&aacute;ng: Đ&oacute;n đo&agrave;n tại s&acirc;n bay/ga &rarr; đi B&agrave; N&agrave; Hills, trải nghiệm C&aacute;p treo, check-in Cầu V&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Trưa: Ăn buffet tại nh&agrave; h&agrave;ng B&agrave; N&agrave;.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chiều: Tham quan L&agrave;ng Ph&aacute;p, hầm rượu Debay.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tối: Trả về kh&aacute;ch sạn, ăn tối, dạo biển Mỹ Kh&ecirc;, xem cầu Rồng phun lửa.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>Ng&agrave;y 2: Hội An &ndash; Ngũ H&agrave;nh Sơn</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>S&aacute;ng: Tham quan Ngũ H&agrave;nh Sơn, l&agrave;ng đ&aacute; Non Nước.</p>\r\n	</li>\r\n	<li>\r\n	<p>Trưa: Ăn đặc sản M&igrave; Quảng, Cao Lầu.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chiều: Kh&aacute;m ph&aacute; phố cổ Hội An, ch&ugrave;a Cầu, chợ đ&ecirc;m Nguyễn Ho&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tối: Thả hoa đăng tr&ecirc;n s&ocirc;ng Ho&agrave;i, về Đ&agrave; Nẵng nghỉ ngơi.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3><strong>Ng&agrave;y 3: Đ&agrave; Nẵng &ndash; Chợ H&agrave;n &ndash; Tiễn đo&agrave;n</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>S&aacute;ng: Mua sắm tại Chợ H&agrave;n, thưởng thức đặc sản b&aacute;nh tr&aacute;ng cuốn thịt heo.</p>\r\n	</li>\r\n	<li>\r\n	<p>Trưa: Trả ph&ograve;ng kh&aacute;ch sạn, d&ugrave;ng bữa trưa.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chiều: Xe đưa đo&agrave;n ra s&acirc;n bay/ga. Kết th&uacute;c tour.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>3. Dịch vụ bao gồm</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xe du lịch đời mới, kh&aacute;ch sạn 3 sao.</p>\r\n	</li>\r\n	<li>\r\n	<p>Ăn uống theo chương tr&igrave;nh (5 bữa ch&iacute;nh + 2 bữa s&aacute;ng).</p>\r\n	</li>\r\n	<li>\r\n	<p>V&eacute; tham quan, hướng dẫn vi&ecirc;n.</p>\r\n	</li>\r\n	<li>\r\n	<p>Bảo hiểm du lịch.</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>4. Gi&aacute; tour dự kiến</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Người lớn: 3.500.000 VNĐ/kh&aacute;ch</p>\r\n	</li>\r\n	<li>\r\n	<p>Trẻ em: 2.500.000 VNĐ/kh&aacute;ch</p>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>5. Kết luận</h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tour Đ&agrave; Nẵng &ndash; Hội An 3N2Đ mang lại trải nghiệm vừa thư gi&atilde;n, vừa kh&aacute;m ph&aacute; văn h&oacute;a &ndash; lịch sử.</p>\r\n	</li>\r\n	<li>\r\n	<p>Th&iacute;ch hợp cho nh&oacute;m bạn trẻ, gia đ&igrave;nh, tập thể muốn du lịch kết hợp nghỉ dưỡng.</p>\r\n	</li>\r\n</ul>\r\n', '2025-09-01 03:49:10'),
(3, 'mo2', 'đà nẵng', 'tiên phước', '2025-09-05', '2025-10-22', 3, 'đà nẵng bà nà hiu', 'dài', 'xe oto', 'Còn chỗ', 2000000.00, 'uploads/tour_68b855334bb26.png', '<p>tour d&agrave;nh cho c&aacute;c vị&nbsp;</p>\r\n', '<p>3 ng&agrave;y 2 đ&ecirc;m</p>\r\n', '2025-09-03 14:48:19'),
(4, 'A01', 'Nha Trang', 'bến lức', '2025-09-12', '2025-09-15', 3, 'Biển Nha Trang', 'Biển  ,chèo ge', 'máy bay', 'Hết chỗ', 899999000.00, 'uploads/tour_68b9b4283f363.webp', '<h1>Nha Trang nh&igrave;n từ tr&ecirc;n cao</h1>\r\n', '<p>ban ng&agrave;y tăm biển , ban đ&ecirc;m c&acirc;u mực c&aacute; , h&aacute;t h&egrave; nhậu nhẹt&nbsp;</p>\r\n', '2025-09-04 15:45:44'),
(5, 'A02', 'PHÚ QUỐC', 'NHA TRANG', '2025-09-01', '2025-09-05', 5, 'PHÚ QUỐC', 'du lịch 5 ngày 4 đêm', 'máy bay', 'Sắp khởi hành', 7888000.00, 'uploads/tour_68b9b642ca191.jpg', '<p>Biển đảo&nbsp;<a href=\"https://www.vntrip.vn/cam-nang/du-lich-kien-giang/du-lich-huyen-phu-quoc/\" target=\"_blank\">Ph&uacute; Quốc</a>&nbsp;tr&ugrave; ph&uacute;, được thi&ecirc;n nhi&ecirc;n ưu đ&atilde;i những cảnh đẹp đến m&ecirc; hoặc l&ograve;ng người. V&agrave; dưới ống k&iacute;nh của nhiếp ảnh gia, Ph&uacute; Quốc c&agrave;ng trở n&ecirc;n quyến rũ, độc đ&aacute;o hơn.</p>\r\n', '<p><em>Tour</em>&nbsp;trọn g&oacute;i &amp; combo tự chọn độc đ&aacute;o, ưu đ&atilde;i H&egrave; lớn. Đặt chỗ h&ocirc;m nay! Ưu đ&atilde;i H&egrave; l&ecirc;n đến 50%. Đặt v&eacute; online tiện lợi. Số lượng c&oacute; hạn.</p>\r\n', '2025-09-04 15:54:42'),
(6, 'K09', 'Du lịch Hà Nội', 'NHA TRANG', '2025-09-30', '2025-10-02', 3, 'Hà Nội là thủ đô ngàn năm văn hiến, còn lưu dấu nhiều di tích như Hồ Gươm, Cầu Thê Húc, Chùa Quán Sứ, Hồ Tây, 36 phố phường. Hà Nội có bốn mùa, luôn mang đến nhiều hoài niệm khó phai, mỗi mùa một vẻ, ', 'Du lịch trong nước', 'máy bay', 'Sắp khởi hành', 90000000.00, 'uploads/tour_68bb06706cba8.webp', '<h2>Sapa - Fansipan - Y&ecirc;n Tử - Hạ Long - Tr&agrave;ng An - B&aacute;i Đ&iacute;nh - H&agrave; Nội - Tặng v&eacute; t&agrave;u hỏa leo n&uacute;i Mường Hoa</h2>\r\n', '<p>Qu&yacute; kh&aacute;ch tập trung tại s&acirc;n bay T&acirc;n Sơn Nhất (Ga nội địa), hướng dẫn vi&ecirc;n hỗ trợ kh&aacute;ch l&agrave;m thủ tục đ&aacute;p chuyến bay đi H&agrave; Nội. Đến s&acirc;n bay Nội B&agrave;i, xe v&agrave; HDV Vietravel đ&oacute;n Qu&yacute; kh&aacute;ch đi khởi h&agrave;nhtheo cao tốc H&agrave; Nội - L&agrave;o Cai đưa Qu&yacute; kh&aacute;ch đến phố n&uacute;i Sapa. Tr&ecirc;n đường, Qu&yacute; kh&aacute;ch d&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng địa phương. Đến nơi, Qu&yacute; kh&aacute;ch tham quan:</p>\r\n\r\n<ul>\r\n	<li><strong>Bản C&aacute;t C&aacute;t&nbsp;</strong>- đẹp như một bức tranh giữa v&ugrave;ng phố cổ Sapa, nơi đ&acirc;y thu h&uacute;t du kh&aacute;ch bởi cầu treo, th&aacute;c nước, guồng nước v&agrave; những mảng m&agrave;u hoa m&ecirc; hoặc du kh&aacute;ch khi lạc bước đến đ&acirc;y. Thăm những nếp nh&agrave; của người M&ocirc;ng, Dao, Gi&aacute;y trong bản, du kh&aacute;ch sẽ kh&ocirc;ng khỏi ngỡ ng&agrave;ng trước vẻ đẹp mộng mị của một trong những ng&ocirc;i l&agrave;ng cổ đẹp nhất Sapa. Tại đ&acirc;y, Qu&yacute; kh&aacute;ch xem chương tr&igrave;nh biễu diễn văn nghệ của người H&#39;M&ocirc;ng.</li>\r\n</ul>\r\n\r\n<p>Qu&yacute; kh&aacute;ch d&ugrave;ng cơm tối v&agrave; nhận ph&ograve;ng nghỉ ngơi hoặc tự do dạo phố&nbsp;<strong>ngắm nh&agrave; thờ Đ&aacute; Sapa</strong>, tự do thưởng thức đặc sản v&ugrave;ng cao tại&nbsp;<strong>Chợ đ&ecirc;m Sapa</strong>&nbsp;như:&nbsp;<strong>thịt lợn cắp n&aacute;ch nướng, trứng nướng, rượu t&aacute;o m&egrave;o, giao lưu với người d&acirc;n tộc v&ugrave;ng cao.</strong></p>\r\n\r\n<p><strong>Nghỉ đ&ecirc;m tại Sapa&nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch d&ugrave;ng điểm t&acirc;m s&aacute;ng tại kh&aacute;ch sạn. xe đưa đo&agrave;n ra ga Sapa, Qu&yacute; kh&aacute;ch trải nghiệm đến khu du lịch&nbsp;<strong>Fansipan Legend</strong>&nbsp;bằng&nbsp;<strong>T&agrave;u hỏa leo n&uacute;i Mường Hoa</strong>&nbsp;hiện đại nhất Việt Nam với tổng chiều d&agrave;i gần 2000m, thưởng ngoạn bức tranh phong cảnh đầy m&agrave;u sắc của c&aacute;nh rừng nguy&ecirc;n sinh, thung lũng Mường Hoa.</p>\r\n\r\n<ul>\r\n	<li>Chinh phục đỉnh n&uacute;i Fansipan với độ cao 3.143m h&ugrave;ng vĩ bằng c&aacute;p treo (chi ph&iacute; tự t&uacute;c).</li>\r\n	<li>Lễ Phật tại&nbsp;<strong>ch&ugrave;a Tr&igrave;nh</strong>&nbsp;hay cầu ph&uacute;c lộc, b&igrave;nh an cho gia đ&igrave;nh tại&nbsp;<strong>B&iacute;ch V&acirc;n Thiền Tự</strong>&nbsp;trong hệ thống cảnh quan t&acirc;m linh tr&ecirc;n đỉnh Fansipan.</li>\r\n</ul>\r\n\r\n<p>Qu&yacute; kh&aacute;ch d&ugrave;ng cơm tối tại Sapa v&agrave; tự do nghỉ ngơi.</p>\r\n\r\n<p><strong>Nghỉ đ&ecirc;m tại Sapa.</strong></p>\r\n\r\n<p><strong><em>Lưu &yacute;:</em></strong></p>\r\n\r\n<ul>\r\n	<li><em>Trong trường hợp, Fansipan kh&ocirc;ng hoạt động chương tr&igrave;nh sẽ được thay thế bằng điểm tham quan Cầu K&iacute;nh Rồng M&acirc;y (kh&ocirc;ng bao gồm v&eacute; tham quan).</em></li>\r\n	<li><em>Chương tr&igrave;nh tặng v&eacute; trải nghiệm t&agrave;u hỏa leo n&uacute;i Mường Hoa sẽ kh&ocirc;ng được ho&agrave;n lại chi ph&iacute; v&agrave; kh&ocirc;ng thay thế dịch vụ kh&aacute;c trong trường hợp Qu&yacute; kh&aacute;ch kh&ocirc;ng tham gia hoặc phải hủy do điều kiện kh&aacute;ch quan về thời tiết, cung đường, th&ocirc;ng b&aacute;o từ đơn vị cung ứng</em></li>\r\n</ul>\r\n', '2025-09-05 15:49:04'),
(7, 'P80', 'Khám phá Tây Bắc| Hòa Bình - Mộc Châu - Điện Biên - Lai Châu - Sapa - Fansipan - Yên Bái - Hà Nội', 'bến lức', '2025-09-27', '2025-09-30', 4, 'Hòa Bình - Mộc Châu - Điện Biên - Lai Châu - Sapa - Fansipan - Yên Bái - Hà Nội', 'Quanh năm', 'xe oto', 'Hết chỗ', 8999000.00, 'uploads/tour_68bb08821b748.webp', '<p>Qu&yacute; kh&aacute;ch tập trung tại s&acirc;n bay T&acirc;n Sơn Nhất (ga trong nước), hướng dẫn vi&ecirc;n l&agrave;m thủ tục cho Qu&yacute; kh&aacute;ch đ&aacute;p chuyến bay đi H&agrave; Nội. Đến s&acirc;n bay Nội B&agrave;i, xe đ&oacute;n đo&agrave;n khởi h&agrave;nh đi Mộc Ch&acirc;u (Sơn La) tr&ecirc;n đường dừng tham quan:</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo t&agrave;ng lịch sử qu&acirc;n sự</strong>&nbsp;- kh&aacute;m ph&aacute; kh&ocirc;ng gian trưng b&agrave;y ấn tượng với c&aacute;c hiện vật qu&acirc;n sự độc đ&aacute;o, m&aacute;y bay, xe tăng, v&agrave; Th&aacute;p Cờ H&agrave; Nội - biểu tượng thi&ecirc;ng li&ecirc;ng giữa l&ograve;ng thủ đ&ocirc;. Nơi đ&acirc;y mang đến c&aacute;i nh&igrave;n tổng quan về chặng đường ph&aacute;t triển của qu&acirc;n đội Việt Nam qua từng thời kỳ.</li>\r\n	<li>Chụp h&igrave;nh&nbsp;<strong>đ&egrave;o Thung Khe</strong>&nbsp;hay còn gọi là&nbsp;<strong>đèo Đá Trắng</strong>, nơi đ&acirc;y quanh năm trắng như tuy&ecirc;́t và m&acirc;y mù bao phủ tạo cảnh quan tuy&ecirc;̣t đep thu hút nhi&ecirc;̀u du khách đ&ecirc;́n chụp ảnh.</li>\r\n	<li><strong>Quần thể phức hợp vui chơi giải tr&iacute; v&agrave; nghỉ dưỡng Mộc Ch&acirc;u Island&nbsp;</strong>chi&ecirc;m ngưỡng vẻ đẹp&nbsp;<strong>Cầu k&iacute;nh Bạch Long</strong>&nbsp;c&oacute; chiều d&agrave;i 632m, ở độ cao c&aacute;ch mặt đất 150m, l&agrave; &ldquo;C&acirc;y cầu k&iacute;nh đi bộ d&agrave;i nhất thế giới&rdquo; được x&aacute;c lập kỷ&nbsp;lục Guinness v&agrave;o th&aacute;ng 28/5/2022. Trải nghiệm c&aacute;c tr&ograve; chơi: Chinh phục cầu k&iacute;nh Bạch Long, trượt Airslide, zipline, Mộc Ch&acirc;u Space,&hellip;&nbsp;<em>(chi ph&iacute; tự t&uacute;c).</em></li>\r\n</ul>\r\n\r\n<p>Qu&yacute; kh&aacute;ch nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi. Buổi tối, Qu&yacute; kh&aacute;ch c&oacute; thể tự do tham quan&nbsp;<strong>khu phố Nhật Bản</strong>&nbsp;- với nhiều khu vực kh&aacute;c nhau mang đậm phong c&aacute;ch Nhật Bản như: khu quảng trường; Sakura Caf&eacute;, tr&agrave; đạo phong c&aacute;ch Nhật,&hellip; tham gia c&aacute;c hoạt động cuối tuần tại&nbsp;<strong>Phố đi bộ Mộc Ch&acirc;u</strong>&nbsp;hoặc tận hưởng kh&ocirc;ng kh&iacute; thanh b&igrave;nh v&ugrave;ng cao nguy&ecirc;n với t&aacute;ch tr&agrave; n&oacute;ng đậm đ&agrave;.</p>\r\n', '<p>Qu&yacute; kh&aacute;ch d&ugrave;ng bữa s&aacute;ng v&agrave; l&agrave;m thủ tục trả ph&ograve;ng sớm, xe v&agrave; hướng dẫn vi&ecirc;n khởi h&agrave;nh tham quan:</p>\r\n\r\n<ul>\r\n	<li><strong>Chụp ảnh tại đồi ch&egrave; tr&aacute;i tim -</strong>&nbsp;một trong những đồi ch&egrave; lớn nhất tại Mộc Ch&acirc;u thu h&uacute;t rất nhiều sự quan t&acirc;m của c&aacute;c t&iacute;n đồ đam m&ecirc; chụp ảnh<strong>.</strong></li>\r\n</ul>\r\n\r\n<p>Tiếp tục h&agrave;nh tr&igrave;nh, Qu&yacute; kh&aacute;ch khởi h&agrave;nh đi Điện Bi&ecirc;n. Tr&ecirc;n đường&nbsp;<strong>ngắm Đ&egrave;o Pha Đin</strong>&nbsp;- đ&acirc;y cũng l&agrave; một trong &quot;tứ đại đ&egrave;o&quot; v&ugrave;ng Đ&ocirc;ng T&acirc;y Bắc v&agrave; được xếp c&ugrave;ng nh&oacute;m 6 con đ&egrave;o g&acirc;y ấn tượng nhất Việt Nam.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch nhận ph&ograve;ng kh&aacute;ch sạn v&agrave; d&ugrave;ng cơm chiều. Buổi tối, Qu&yacute; kh&aacute;ch tự do tham quan&nbsp;<strong>Tượng đ&agrave;i chiến thắng</strong><strong>&nbsp;Điện Bi&ecirc;n Phủ</strong>&nbsp;kh&aacute;m ph&aacute; th&agrave;nh phố Điện Bi&ecirc;n về đ&ecirc;m.</p>\r\n\r\n<p>Sau khi ăn s&aacute;ng v&agrave; l&agrave;m thủ tục trả ph&ograve;ng, Qu&yacute; kh&aacute;ch tham quan:</p>\r\n\r\n<ul>\r\n	<li><strong>Bảo t&agrave;ng Chiến thắng lịch sử Điện Bi&ecirc;n Phủ:&nbsp;</strong>trưng b&agrave;y hơn 1.000 tư liệu h&igrave;nh ảnh, t&agrave;i liệu, hiện vật, cảnh tượng lịch sử t&aacute;i hiện lại cuộc chiến h&agrave;o h&ugrave;ng của qu&acirc;n v&agrave; d&acirc;n ta trong Chiến dịch Điện Bi&ecirc;n Phủ năm 1954.</li>\r\n	<li><strong>Chi&ecirc;m ngưỡng kiệt t&aacute;c bức tranh Panorama to&agrave;n cảnh &ldquo;Trận chiến Điện Bi&ecirc;n Phủ&rdquo;&nbsp;</strong>sống động<strong>:&nbsp;</strong>T&aacute;i hiện ch&acirc;n thực những khoảnh khắc điển h&igrave;nh nhất trong Chiến dịch Điện Bi&ecirc;n Phủ.</li>\r\n	<li>Ngắm cầu Mường Thanh, s&ocirc;ng Nậm Rốm v&agrave; con đường hoa ban trong trung t&acirc;m th&agrave;nh phố.</li>\r\n	<li>Tham quan v&agrave; mua sắm đặc sản&nbsp;<strong>Qu&agrave; T&acirc;y Bắc Điện Bi&ecirc;n</strong>&nbsp;về l&agrave;m qu&agrave; cho người th&acirc;n v&agrave; gia đ&igrave;nh như gạo Điện Bi&ecirc;n, mật ong, s&acirc;u ch&iacute;t, thịt tr&acirc;u hun kh&oacute;i, chẳm ch&eacute;o, măng, c&aacute;c sản phẩm m&acirc;y tre đan, c&aacute;c sản phẩm th&ecirc;u, dệt thổ cẩm,..</li>\r\n</ul>\r\n\r\n<p>Qu&yacute; kh&aacute;ch khởi h&agrave;nh đi Lai Ch&acirc;u, tr&ecirc;n đường ngắm cảnh rừng n&uacute;i T&acirc;y Bắc dọc theo d&ograve;ng s&ocirc;ng Nậm Na v&agrave; v&ugrave;ng ngập nước do đập nh&agrave; m&aacute;y Thủy điện Sơn La d&acirc;ng l&ecirc;n tại ng&atilde; ba s&ocirc;ng: s&ocirc;ng Đ&agrave;, s&ocirc;ng Nậm Na v&agrave; s&ocirc;ng Nậm Rốm.</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch d&ugrave;ng cơm chiều v&agrave; nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi. Buổi tối, qu&yacute; kh&aacute;ch tự do kh&aacute;m ph&aacute;, thưởng tr&agrave; v&agrave; ngắm to&agrave;n cảnh th&agrave;nh phố Lai Ch&acirc;u về đ&ecirc;m tại Tam Đường Tea&nbsp;<em>(chi ph&iacute; tự t&uacute;c).</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch d&ugrave;ng điểm t&acirc;m s&aacute;ng v&agrave; l&agrave;m thủ tục trả ph&ograve;ng. Xe đưa Qu&yacute; kh&aacute;ch&nbsp;chinh phục đ&egrave;o&nbsp;<strong>&Ocirc; Quy Hồ</strong>&nbsp;- con đ&egrave;o đẹp, h&ugrave;ng vĩ v&agrave; d&agrave;i nhất trong Tứ Đại Đỉnh Đ&egrave;o miền Bắc.</p>\r\n\r\n<p>Đến với thanh phố trong sương Sapa, Qu&yacute; kh&aacute;ch tham quan&nbsp;<strong>khu du lịch Fansipan Legend</strong>&nbsp;thưởng ngoạn bức tranh phong cảnh đầy m&agrave;u sắc của c&aacute;nh rừng nguy&ecirc;n sinh, thung lũng Mường Hoa.</p>\r\n\r\n<ul>\r\n	<li>Chinh phục đỉnh n&uacute;i Fansipan với độ cao 3.143m h&ugrave;ng vĩ bằng c&aacute;p treo&nbsp;<em>(chi ph&iacute; tự t&uacute;c).</em></li>\r\n	<li>Lễ Phật tại&nbsp;<strong>ch&ugrave;a Tr&igrave;nh</strong>&nbsp;hay cầu ph&uacute;c lộc, b&igrave;nh an cho gia đ&igrave;nh tại&nbsp;<strong>B&iacute;ch V&acirc;n Thiền Tự</strong>&nbsp;trong hệ thống cảnh quan t&acirc;m linh tr&ecirc;n đỉnh Fansipan.</li>\r\n	<li><strong>Bản C&aacute;t C&aacute;t</strong>&nbsp;- Thăm những nếp nh&agrave; của người M&ocirc;ng, Dao, Gi&aacute;y trong bản, tại đ&acirc;y du kh&aacute;ch sẽ kh&ocirc;ng khỏi ngỡ ng&agrave;ng trước vẻ đẹp của một trong những ng&ocirc;i l&agrave;ng cổ đẹp nhất Sapa v&agrave; c&oacute; dịp được thưởng thức chương tr&igrave;nh biểu diễn văn nghệ của người H&#39;M&ocirc;ng&nbsp;<em>(chương tr&igrave;nh văn nghệ diễn ra v&agrave;o c&aacute;c thời điểm cố định trong ng&agrave;y).</em></li>\r\n</ul>\r\n\r\n<p>Qu&yacute; kh&aacute;ch d&ugrave;ng cơm chiều v&agrave; nhận ph&ograve;ng kh&aacute;ch sạn nghỉ ngơi.</p>\r\n\r\n<p>Buổi tối Qu&yacute; kh&aacute;ch tự do dạo phố, ngắm<strong>&nbsp;nh&agrave; thờ Đ&aacute; Sapa</strong>&nbsp;v&agrave; thưởng thức đặc sản v&ugrave;ng cao tại&nbsp;<strong>Chợ đ&ecirc;m Sapa</strong>&nbsp;như:&nbsp;<em>thịt lợn cắp n&aacute;ch nướng, trứng nướng, rượu t&aacute;o m&egrave;o,&hellip;&nbsp;</em>giao lưu với người d&acirc;n tộc v&ugrave;ng cao.</p>\r\n', '2025-09-05 15:57:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(160) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('member','admin') NOT NULL DEFAULT 'member',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `phone`, `password_hash`, `role`, `created_at`) VALUES
(1, 'Quản trị', 'admin', 'admin@example.com', '0900000000', '$2y$10$8mB9n2hZy9d2s6oS2d8mKeL2w5o4b9w0B.1k9jK3VgQw3HqvQ1v2.', 'admin', '2025-08-31 06:31:56'),
(2, 'Châu Thế Bảo', 'chauthebao', 'chauthebaocoder@gmail.com', '0708653781', '$2y$10$pYFLuX7xtOObkH3WeoufruHOT.etOXc4S7xY/YRhiOdvDvE.BBEHy', 'admin', '2025-08-31 13:38:46'),
(3, 'khai le', 'levanbakhai', 'khaile@gmail.com', 'khaile@gmail.com', '$2y$10$YPb8XEQw79BXDK7tZJPRFOYEl12dbM5wwyw6XdKI34.Z.zF0wOAdC', 'member', '2025-09-02 16:12:54'),
(4, 'admin', 'khaile', 'khaile123@gmail.com', 'khaile123@gmail.com', '$2y$10$mLC6d4vapWVNjKSNPANoNuQMzUCa/jeUK2hADxo4HBJYGm/8ax/3e', 'member', '2025-09-02 16:19:15'),
(5, 'hhh', 'hhhhh', 'nacdanh1@gmail.com', 'nacdanh1@gmail.com', '$2y$10$2EsBHOrwS1iLgh4A4w0WLOGg0cxh2UsdcervCH8IYgPWkVvPH/TqW', 'member', '2025-09-11 06:58:12'),
(6, 'hhh', 'NetWebSyntaxXR', 'nacdanh1@gmail.com', 'nacdanh1@gmail.com', '$2y$10$opR6E9WuzWydDtWTt0C/3.iQkGWuuEFoMFeSlTh3Xqhxa1dUV7gEu', 'member', '2025-09-11 06:58:58'),
(7, 'ok', 'okk', '12@gmail.com', '12@gmail.com', '$2y$10$ApGfPrT81WtPH8/F6nnV0ODI0/7i1xeZTRI9mB6vupEoLhR0P1oSW', 'member', '2025-09-11 07:04:22'),
(8, 'Lĩnh bầu trời', 'nguyễn trần lĩnh', 'nguyentranlinh2004@gmail.com', 'nguyentranlinh2004@gmail.com', '$2y$10$mq8FiZZqS7lx0saS8l4qEudnTQ.hE6.4S13d0KurgsJKE3liXRowG', 'member', '2025-09-11 09:19:57');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tour_id` (`tour_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_id` (`tour_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tour_id` (`tour_id`);

--
-- Chỉ mục cho bảng `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ràng buộc đối với các bảng kết xuất
--

--
-- Ràng buộc cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Ràng buộc cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
