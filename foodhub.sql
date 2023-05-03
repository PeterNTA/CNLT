-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 29, 2023 lúc 05:08 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `foodhub`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `restaurant_id`, `item_id`, `item_name`, `item_price`, `quantity`) VALUES
(2, 1, 1, 1, 'Phở bò chín tái', 30, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `restaurant_id`, `category_name`, `status`) VALUES
(1, 1, 'Phở', 1),
(3, 2, 'Cơm tấm', 1),
(4, 3, 'Pizza', 1),
(5, 3, 'Nui', 1),
(6, 4, 'Gà', 1),
(7, 4, 'Snack', 1),
(8, 4, 'Burger', 1),
(9, 5, 'Ganesh', 1),
(10, 6, 'Taj Mahal', 1),
(11, 7, 'Khai vị', 1),
(12, 7, 'Món chính', 1),
(13, 8, 'Khai vị', 1),
(14, 8, 'Món chính', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `menu_cat` int(11) NOT NULL,
  `menu_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `menu_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `restaurant_id`, `menu_cat`, `menu_name`, `description`, `price`, `menu_image`) VALUES
(1, 1, 1, 'Phở tái', 'Phở bò tái thơm ngon, với từng thớ thịt dai dai, vị ngọt thanh của nước dùng', 20, 'Phở bò chín tái_1668489194'),
(2, 1, 1, 'Phở tái bò viên', 'Phở tái bò viên đơn giản với nước dùng đậm đà, thơm ngon, thịt bò mềm ngọt vừa chín tới khi ăn sẽ cảm nhận được hương vị hấp dẫn', 22, 'Phở tái bò viên_1682692716'),
(3, 1, 1, 'Phở gân', 'Phở gân bò với phần nước dùng ngọt thanh, có chút ngậy béo, những miếng gân được cắt khúc vừa miệng dai dai', 19, 'Phở gân_1682692833'),
(4, 1, 1, 'Phở tái nạm', 'Phở kết hợp giữa thịt bò tái và thịt nạm cùng nước dùng đậm đà ngọt thanh', 22, 'Phở tái nạm_1682693143'),
(5, 2, 3, 'Cơm Sườn Trứng opla', 'Cơm nóng, sườn nướng mỡ hành, trứng ốp la, đồ chua', 15, 'Cơm Sườn Trứng opla_1682694002'),
(6, 2, 3, 'Cơm sườn cốt lết', 'Sườn cốt lết ướp sốt nước tương muối tiêu nướng', 17, 'Cơm sườn cốt lết_1682694057'),
(7, 2, 3, 'Cơm sườn bì chả', 'Sườn nướng kết hợp với bì dai và chả trứng', 22, 'Cơm sườn bì chả_1682694104'),
(8, 2, 3, 'Cơm ba rọi ngũ vị', 'Ba rọi ướp xốt ngũ vị, muối tiêu,nước tương nướng', 20, 'Cơm ba rọi ngũ vị_1682694156'),
(9, 3, 4, 'Pizza Chất_Thanh Cua và Xúc Xích Cocktail', 'Phô mai, thịt xông khói với mùi tây, thanh cua và sốt Thousand Island', 20, 'Pizza Chất_Thanh Cua và Xúc Xích Cocktail_1682694653'),
(10, 3, 4, 'Pizza Sandwich_Giăm Bông & Phô Mai', 'Thịt giăm bông, phô mai và sốt Thousand Island.', 22, 'Pizza Sandwich_Giăm Bông & Phô Mai_1682694723'),
(11, 3, 4, 'Pizza Gà Nướng 3 Vị Nhân Nhồi', 'Gà nướng, gà bơ tỏi, gà ướp sốt, nấm, ớt và sốt cà chua', 35, 'Pizza Gà Nướng 3 Vị Nhân Nhồi_1682694769'),
(12, 3, 5, 'Nui Bỏ Lò Phô Mai Gà Bơ Tỏi & Nấm Sốt Kem', 'Gà bơ tỏi và nấm hoà quyện trong sốt kem phủ phô mai, cùng với lá mùi tây tạo hương thơm hấp dẫn', 30, 'Nui Bỏ Lò Phô Mai Gà Bơ Tỏi & Nấm Sốt Kem_1682694907'),
(13, 4, 6, 'Combo Gà và Hải sản', '2 Gà Không Xương + 1 Cá Rán Cajun + Sauce Chấm (Phần gà được phục vụ ngẫu nhiên)', 23, 'Combo Gà và Hải sản_1682695105'),
(14, 4, 6, '1 Miếng Gà Tắm Nước Mắm', 'Gà tắm mắm gia vị cực ngon', 18, '1 Miếng Gà Tắm Nước Mắm_1682695142'),
(15, 4, 7, 'Snack Mực', 'Snack mực giòn tan', 15, 'Snack Mực_1682695182'),
(16, 4, 8, 'Burger Gà', 'Burger với thịt gà được tẩm ướp gia vị thơm ngon', 22, 'Burger Gà_1682695240'),
(17, 5, 9, 'Tandoori Prawn(8 Pcs)', 'Prwan marinated with garlic,chili, butter then grilled in the traditional clay oven.', 30, 'Tandoori Prawn ( 8 Pcs)_1682695491'),
(18, 5, 9, 'Lamb Momo(10Pcs)', 'Momo is one of the most popular Indian Chinese dish in India / nepal, served with hot and garlic sauce & clear soup.', 34, 'Lamb Momo(10Pcs)_1682695726'),
(19, 5, 9, 'Tandoori Vegetables Platter Half', 'Seasonable mixed vegetable & cottage cheese BBQ', 31, 'Tandoori Vegetables Platter Half_1682695982'),
(20, 5, 9, 'Vegetables Manchurian', 'Minced vegetables ball cooked with garlic, onion, capsicum and chili.', 33, 'Vegetables Manchurian_1682696052'),
(21, 6, 10, 'Chana pulaw', '50% Cơm Ấn, 50%Cơm Việt chiên với đậu gà (chick peas), masala', 27, 'Chana pulaw_1682696222'),
(22, 6, 10, 'Vegetable Biryani', 'Hạt gạo Ấn Độ ninh với Gà nạc, cravy, masala', 28, 'Vegetable Biryani_1682696259'),
(23, 6, 10, 'Chicken Biryani', 'Hạt gạo Ấn Độ ninh với Rau Củ thập cẩm, cravy, masala (Món chay)', 29, 'Chicken Biryani_1682696328'),
(24, 6, 10, 'Fish Biryani', 'Hạt gạo Ấn Độ ninh với cá phile, cravy, masala', 32, 'Fish Biryani_1682696375'),
(25, 7, 11, 'Thịt heo quay giòn', 'được nướng từ thịt lợn sau đó được phết một lớp mật ong hoặc đường cùng các gia vị như nước tương, hạt tiêu và tỏi', 20, 'Thịt heo quay giòn_1682696640'),
(26, 7, 12, 'Bánh bao nhân thịt', 'làm từ bột mì và nhân bên trong bao gồm thịt heo, tôm hoặc rau củ.', 22, 'Bánh bao nhân thịt_1682696678'),
(27, 7, 12, 'Hủ tiếu mì', 'Được làm từ sợi mì dai và mềm, dùng chung với nước súp và các loại thịt, hải sản và rau củ', 24, 'Hủ tiếu mì_1682696714'),
(28, 7, 11, 'Đậu hũ chiên', 'Đậu hũ được cắt thành miếng và chiên giòn, thường được chế biến với các gia vị như hành tây, tương, tỏi và hạt tiêu.', 21, 'Đậu hũ chiên_1682696745'),
(29, 8, 13, 'Tôm chiên giòn sốt mayonnaise', 'Tôm chiên giòn cùng với nước sốt béo ngậy', 18, 'Tôm chiên giòn sốt mayonnaise_1682696934'),
(30, 8, 14, 'Vịt quay Bắc Kinh', 'Vịt quay với là lớp da mỏng và giòn', 20, 'Vịt quay Bắc Kinh_1682696963'),
(31, 8, 13, 'Súp Trái Bí Tiềm Tứ Bảo', 'Súp Trái Bí Tiềm Tứ Bảo với Sò Điệp Khô, Nấm Tuyết, Nấm Rơm,... hầm cùng trong trái bí xanh được tỉa tỉ mỉ', 22, 'Súp Trái Bí Tiềm Tứ Bảo_1682697010'),
(32, 8, 14, 'Xá xíu mật ong', 'Từng miếng thịt xá xíu vàng ươm, cùng vị sốt mật ong đặc trưng', 19, 'Xá xíu mật ong_1682697046');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_03_01_045158_create_cart_table', 1),
(4, '2016_03_01_050539_create_categories_table', 1),
(5, '2016_03_01_050801_create_menu_table', 1),
(6, '2016_03_01_051123_create_restaurants_table', 1),
(7, '2016_03_01_051949_create_restaurant_order_table', 1),
(8, '2016_03_01_052459_create_restaurant_review_table', 1),
(9, '2016_03_01_052824_create_restaurant_types_table', 1),
(10, '2016_03_01_053018_create_settings_table', 1),
(11, '2016_03_01_053529_create_widgets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$f5A5v6j..4pTMQIebDM0huSbFFn2kmcxLqcaAR6Nt2j/3oyJnrLMG', '2023-04-26 07:15:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_type` int(11) NOT NULL,
  `restaurant_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurant_bg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_monday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_tuesday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_wednesday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_thursday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_friday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_saturday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_sunday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_avg` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `restaurants`
--

INSERT INTO `restaurants` (`id`, `user_id`, `restaurant_type`, `restaurant_name`, `restaurant_slug`, `restaurant_description`, `restaurant_address`, `delivery_charge`, `restaurant_logo`, `restaurant_bg`, `open_monday`, `open_tuesday`, `open_wednesday`, `open_thursday`, `open_friday`, `open_saturday`, `open_sunday`, `review_avg`) VALUES
(1, 1, 7, 'Phở Hà Nội', 'pho-ha-noi', 'Ẩm thực phở Hà Nội<br>', 'Hà Nội, Việt Nam', NULL, 'pho-ha-noi_1668489085', NULL, '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', NULL),
(2, 1, 7, 'Cơm tấm Sài Gòn', 'com-tam-sai-gon', 'Cơm tấm Sài Gòn', 'TP.HCM - Việt Nam', NULL, 'com-tam-sai-gon_1682693857', NULL, '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', NULL),
(3, 1, 8, 'Pizza company', 'pizza', 'Pizza company', 'Texas', NULL, 'pizza_1682694535', NULL, '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', NULL),
(4, 1, 8, 'Popeyes', 'popeyes', 'Popeyes', 'New York', NULL, 'popeyes_1682694996', NULL, '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', NULL),
(5, 1, 10, 'Ganesh', 'ganesh', '<span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 15px; text-align: center; white-space: pre-wrap;\">Ganesh</span>', 'India', NULL, 'ganesh_1682695384', NULL, '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', NULL),
(6, 1, 10, 'Taj Mahal', 'taj-mahal', '<span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 15px; text-align: center; white-space: pre-wrap;\">Taj Mahal</span>', 'India', NULL, 'taj-mahal_1682696156', NULL, '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', NULL),
(7, 1, 9, 'Ja di luoon', 'ja-di-luoon', 'Ja di luoon', 'China', NULL, 'ja-di-luoon_1682696525', NULL, '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', NULL),
(8, 1, 9, 'Crystal Jade Palace', 'crystal-jade-palace', '<span style=\"color: rgb(0, 0, 0); font-family: Arial; font-size: 15px; text-align: center; white-space: pre-wrap;\">Crystal Jade Palace</span>', 'TP.HCM', NULL, 'crystal-jade-palace_1682696862', NULL, '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', '06h00 - 21h00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurant_order`
--

CREATE TABLE `restaurant_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_date` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `restaurant_order`
--

INSERT INTO `restaurant_order` (`id`, `user_id`, `restaurant_id`, `item_id`, `item_name`, `item_price`, `quantity`, `created_date`, `status`) VALUES
(1, 1, 1, 1, 'Phở bò chín tái', 15, 1, 1668470400, 'Pending'),
(2, 1, 1, 1, 'Phở bò chín tái', 30, 2, 1682467200, 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurant_review`
--

CREATE TABLE `restaurant_review` (
  `id` int(10) UNSIGNED NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `punctuality` int(11) NOT NULL,
  `courtesy` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurant_types`
--

CREATE TABLE `restaurant_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `restaurant_types`
--

INSERT INTO `restaurant_types` (`id`, `type`, `type_image`) VALUES
(7, 'Viet Nam', 'Viet Nam_1668489016'),
(8, 'American', 'American_1682518239'),
(9, 'Chinese', 'Chinese_1682694364'),
(10, 'Indian', 'Indian_1682694374');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_header_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_footer_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_copyright` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addthis_share_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disqus_comment_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_comment_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_slide_image1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_slide_image2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_slide_image3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_bg_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_restaurant` int(11) DEFAULT NULL,
  `total_people_served` int(11) DEFAULT NULL,
  `total_registered_users` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `currency_symbol`, `site_email`, `site_logo`, `site_favicon`, `site_description`, `site_header_code`, `site_footer_code`, `site_copyright`, `addthis_share_code`, `disqus_comment_code`, `facebook_comment_code`, `home_slide_image1`, `home_slide_image2`, `home_slide_image3`, `page_bg_image`, `total_restaurant`, `total_people_served`, `total_registered_users`) VALUES
(1, 'Viavi Food Delivery', '$', 'admin@admin.com', 'logo.png', 'favicon.png', 'Viavi - Food Delivery Script Viavi - Food Delivery is an laravel script for Delivery Restaurants', NULL, NULL, 'Copyright © 2016 Viavi - Food Delivery Script. All Rights Reserved.', NULL, NULL, NULL, 'home_slide_image1.png', 'home_slide_image2.png', 'home_slide_image3.png', 'page_bg_image.png', 2550, 5355, 12454),
(3, 'Viavi Food Delivery', '$', 'admin@admin.com', 'logo.png', 'favicon.png', 'Viavi - Food Delivery Script Viavi - Food Delivery is an laravel script for Delivery Restaurants', NULL, NULL, 'Copyright © 2016 Viavi - Food Delivery Script. All Rights Reserved.', NULL, NULL, NULL, 'home_slide_image1.png', 'home_slide_image2.png', 'home_slide_image3.png', 'page_bg_image.png', 2550, 5355, 12454);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usertype` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `usertype`, `first_name`, `last_name`, `email`, `password`, `image_icon`, `mobile`, `address`, `city`, `postal_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Dũng', 'Trần', 'admin@admin.com', '$2y$10$2vz2QvFh.AJnUMgiUnUu9u4Sa2lQ31s6.2TUA7cXh28gev2gLtIdi', 'admin', '123456789', 'HCM', 'HCM', 'ACB123', 'geaN0kMPZJB830xuLweJgBMRYvlNSxHAU4UteY1uNWzfF9ptCsQ8rE59rhmT', '2023-04-26 01:19:43', '2023-04-26 07:32:26'),
(2, 'User', 'Trần', 'Dũng', 'tranquocdung@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, '', '2023-04-26 14:16:38', '2023-04-26 14:16:38'),
(3, 'User', 'Dũng', 'Trần', 'tranquocdung1@gmail.com', '$2y$10$Q4xpY1//pmAkzW4xllBbV.jpD9pWR3DcSKQkN1Y.GQUmYU5uAIeau', NULL, NULL, NULL, NULL, NULL, '9M9swZIEVRGc0R8dWjOy8ztrPZRsKXhh7wsWTmeXQy395fGq4LaheZ7OicXB', '2023-04-26 07:24:23', '2023-04-26 07:24:23'),
(4, 'Owner', 'Dũng', 'Trần', 'tranquocdung2@gmail.com', '$2y$10$eOuMz6njxuwD1Bz.DbQdpOYbQIHyLz3afP/a0732smLrch1mrbnBe', NULL, NULL, NULL, NULL, NULL, 'N2SwePy2Tnm9yo24ghMI2TFFXocBANwOlcylt7OdEHloT55FJoRbQ3ftuYUj', '2023-04-26 07:28:05', '2023-04-26 07:28:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `widgets`
--

CREATE TABLE `widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `footer_widget1_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_widget1_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_widget2_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_widget2_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_widget3_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_widget3_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_widget3_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_widget3_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_pinterest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_vimeo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `need_help_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `need_help_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `need_help_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_advertise` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `widgets`
--

INSERT INTO `widgets` (`id`, `footer_widget1_title`, `footer_widget1_desc`, `footer_widget2_title`, `footer_widget2_desc`, `footer_widget3_title`, `footer_widget3_address`, `footer_widget3_phone`, `footer_widget3_email`, `about_title`, `about_desc`, `social_facebook`, `social_twitter`, `social_google`, `social_instagram`, `social_pinterest`, `social_vimeo`, `social_youtube`, `need_help_title`, `need_help_phone`, `need_help_time`, `sidebar_advertise`) VALUES
(1, 'About Restaurant', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Recent Tweets', '', 'Contact Info', 'Lorem Ipsum is simply dummy text of the printing Lorem Ipsum is simply dummy text of the printing', '+01 123 456 78', 'demo@example.com', 'About Us', 'Aenean ultricies mi vitae est. Mauris placerat eleifend leosit amet est.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Need Help?', '+61 3 8376 6284', 'Monday to Friday 9.00am - 7.30pm', NULL),
(3, 'About Restaurant', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Recent Tweets', '', 'Contact Info', 'Lorem Ipsum is simply dummy text of the printing Lorem Ipsum is simply dummy text of the printing', '+01 123 456 78', 'demo@example.com', 'About Us', 'Aenean ultricies mi vitae est. Mauris placerat eleifend leosit amet est.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Need Help?', '+61 3 8376 6284', 'Monday to Friday 9.00am - 7.30pm', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `restaurant_order`
--
ALTER TABLE `restaurant_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `restaurant_review`
--
ALTER TABLE `restaurant_review`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `restaurant_types`
--
ALTER TABLE `restaurant_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `restaurant_order`
--
ALTER TABLE `restaurant_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `restaurant_review`
--
ALTER TABLE `restaurant_review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `restaurant_types`
--
ALTER TABLE `restaurant_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
