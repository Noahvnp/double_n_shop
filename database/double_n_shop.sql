-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 28, 2022 lúc 12:02 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `website_mvc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `adminEmail` varchar(150) CHARACTER SET utf8mb4 NOT NULL,
  `adminUser` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `adminPass` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'phu', 'phu@gmail.com', 'phuAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(6, 'Samsung'),
(7, 'Apple'),
(8, 'Huawei'),
(9, 'Oppo'),
(10, 'Dell'),
(12, 'Xiaomi'),
(15, 'Acer'),
(16, 'sony'),
(17, 'JBL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 7, '0omn99jipm7namf6srjhj4kva2', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 3, '6deaf01c29.jpg'),
(2, 7, 'up8l6ff347ik19fsoa18qff452', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(3, 7, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(4, 8, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(8, 6, 'c6o66m1rfnpfhqmdffk77pu083', 'MÃ¡y tÃ­nh Dell A503', '10000000', 1, 'dbb417a309.jpg'),
(9, 8, '3e1a29t1pgb3ock6s8hi8ho2d5', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(13, 17, 'grfc2bmmrmga6mn5q7484i87f2', 'á»” Cá»©ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - HÃ ng Nháº­p Kháº©u', '1099000', 1, '785e8d373d.jpg'),
(14, 19, '39p4lauudimhcb91i8mhna4bf2', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 3, '6d72eb58ae.jpg'),
(18, 18, '3eg83l0tcklmed91e5h8raqsa2', 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', 1000, '32942e9470.jpg'),
(19, 19, 'hlkksgphiqn70b37sjg3u89unu', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 1, '6d72eb58ae.jpg'),
(24, 21, '43auoeb0mu8g70th2qj79ggugt', 'Apple New For Mysql Server', '50000', 3, 'ad351ef94f.png'),
(25, 22, 'jjukt2rteajh53d2gn6lgvd39r', 'Apple New For Mysql Server', '60000', 4, '643929ce40.jpg'),
(26, 20, 'jjukt2rteajh53d2gn6lgvd39r', 'Router Wifi 4G Huawei 300Mbps B593S-12', '1240000', 1, '49b106217c.jpg'),
(28, 58, '69v58v87aoh8ja6b1ha83kj8ec', 'Loa Bluetooth Sony Extra Bass SRS-XB23', '1990000', 1, '4bd3d0fbb0.jpg'),
(29, 38, '69v58v87aoh8ja6b1ha83kj8ec', 'Laptop Acer TravelMate TMP215 53 50CP i5 1135G7/8GB/512GB/Win10 Pro', '22290000', 1, 'ea5f9c164a.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(3, 'Laptop'),
(5, 'Điện thoại'),
(6, 'Phụ Kiện'),
(7, 'Đồng hồ thông minh'),
(18, 'Loa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `city` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `country` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `zipcode` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'Ng.Anh tu', '113 Láº¡c Long QuÃ¢n HCM', 'TPHCM', 'hcm', '700000', '099999123', 'thanhviendangki@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'vÃµ thá»‹ tháº£o nguyÃªn', '149 LÅ©y BÃ¡n BÃ­ch, phÆ°á»ng TÃ¢n Thá»›i HÃ²a, quáº­n TÃ¢n PhÃº, TP.HCM', 'TPHCM', 'hcm', '700000', '522525294', 'hoathuytinh071@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Sin', '149 LÃ½ ThÃ¡i Tá»•', 'TPHCM', 'hcm', '700000', '0522525294', 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'Phan Van Nam', 'Can Tho', 'Cần Thơ', 'na', '900000', '0837940430', 'namb1910107@student.ctu.edu.vn', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(56, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:54:42'),
(57, 22, 'Apple New For Mysql Server', 3, 4, '240000', '643929ce40.jpg', 1, '2019-07-17 00:56:49'),
(58, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:57:49'),
(59, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 3, 10, '12400000', '49b106217c.jpg', 1, '2019-07-17 01:51:22'),
(60, 24, 'iPhone 13 Pro Max 128GB', 6, 3, '101970000', '836ea69532.jpg', 0, '2022-04-26 23:11:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext CHARACTER SET utf8mb4 NOT NULL,
  `product_code` varchar(200) CHARACTER SET utf8mb4 NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text CHARACTER SET utf8mb4 NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(19, 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', 'MH1140', 16, 7, '<p>K&iacute;ch thÆ°á»›c m&agrave;n h&igrave;nh c&oacute; 2 loáº¡i: 40mm v&agrave; 44mm</p>\r\n<p>Chuáº©n kh&aacute;ng nÆ°á»›c ISO 22810:2010</p>\r\n<p>Káº¿t ná»‘i: Wi-Fi (802.11b / g / n 2,4 GHz), bluetooth 5.0</p>\r\n<p>TÆ°Æ¡ng th&iacute;ch: iPhone</p>\r\n<p>Chá»©c nÄƒng: CaÌ‰m bi&ecirc;Ìn nhiÌ£p tim, chÆ°Ìc nÄƒng Ä‘o Ä‘i&ecirc;Ì£n t&acirc;m Ä‘&ocirc;Ì€ (EKG)</p>\r\n<p>T&iacute;ch há»£p GPS, GLONASS, Galileo v&agrave; QZSS</p>\r\n<p>Gia tá»‘c Ä‘Æ°á»£c cáº£i thiá»‡n l&ecirc;n tá»›i 32 gâ€‘forces</p>\r\n<p>Th&ocirc;ng b&aacute;o cuá»™c gá»i, tin nháº¯n</p>\r\n<p>C&oacute; thá»ƒ nghe nháº¡c, xem báº£n Ä‘á»“</p>\r\n<p>Thá»i gian sá»­ dá»¥ng l&ecirc;n Ä‘áº¿n 18 giá»</p>\r\n<p>Pin lithium-ion sáº¡c láº¡i Ä‘Æ°á»£c t&iacute;ch há»£p sáºµn</p>', 0, '9700000', '6d72eb58ae.jpg'),
(20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 'MH1150', 17, 8, '<p>T&ocirc;Ìc Ä‘&ocirc;Ì£ maÌ£ng 4G/LTE FDD link Speed: Downstream: 100Mbps Upstream: 50Mbps</p>\r\n<p>Nhi&ecirc;Ì€u maÌy truy c&acirc;Ì£p vaÌ€ sÆ°Ì‰ duÌ£ng cuÌ€ng m&ocirc;Ì£t thÆ¡Ì€i gian, Ä‘iÌ£a Ä‘i&ecirc;Ì‰m</p>\r\n<p>ThiÌch hÆ¡Ì£p vÆ¡Ìi caÌc loaÌ£i sim 3G, 4G tr&ecirc;n thiÌ£ trÆ°Æ¡Ì€ng hi&ecirc;Ì£n nay</p>\r\n<p>Thi&ecirc;Ìt k&ecirc;Ì sang troÌ£ng, goÌ£n nheÌ£, ti&ecirc;Ì£n lÆ¡Ì£i cho ngÆ°Æ¡Ì€i duÌ€ng</p>', 0, '1240000', '49b106217c.jpg'),
(21, 'Apple New For Mysql Server', 'MH1115', 17, 14, '<p>Apple New For Mysql Server</p>', 0, '50000', 'ad351ef94f.png'),
(22, 'Apple New For Mysql Server', 'MH1111', 17, 14, '<p>Apple New For Mysql Server</p>', 0, '60000', '643929ce40.jpg'),
(25, 'iPhone 13 Pro Max 128GB', '', 5, 7, '<p>iPhone 13 Pro Max 128 GB - si&ecirc;u phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. M&aacute;y c&oacute; thiết kế kh&ocirc;ng mấy đột ph&aacute; khi so với người tiền nhiệm, b&ecirc;n trong đ&acirc;y vẫn l&agrave; một sản phẩm c&oacute; m&agrave;n h&igrave;nh si&ecirc;u đẹp, tần số qu&eacute;t được n&acirc;ng cấp l&ecirc;n 120 Hz mượt m&agrave;, cảm biến camera c&oacute; k&iacute;ch thước lớn hơn, c&ugrave;ng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn s&agrave;ng c&ugrave;ng bạn chinh phục mọi thử th&aacute;ch.</p>', 1, '33990000', 'a107d92c9d.jpg'),
(27, 'iPhone 11 64GB', '', 5, 7, '<p>Apple đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng bộ 3 si&ecirc;u phẩm iPhone 11, trong đ&oacute; phi&ecirc;n bản iPhone 11 64GB c&oacute; mức gi&aacute; rẻ nhất nhưng vẫn được n&acirc;ng cấp mạnh mẽ như iPhone Xr ra mắt trước đ&oacute;.</p>', 0, '14990000', '6091bc77ea.jpg'),
(28, 'iPhone 12 Pro', '', 5, 7, '<p>iPhone 12 Pro - \"Si&ecirc;u ph&acirc;̉m c&ocirc;ng nghệ\" với nhiều n&acirc;ng c&acirc;́p mạnh mẽ về thiết kế, cấu h&igrave;nh và hi&ecirc;̣u năng, khẳng định đẳng c&acirc;́p thời thượng tr&ecirc;n thị trường smartphone cao cấp.</p>', 1, '24590000', '3d02379d00.jpg'),
(29, 'Laptop Acer Nitro 5 Gaming AN515 57 5831 i5 11400H/8GB/512GB/6GB RTX3060/144Hz/Win10 (NH.QDGSV.003) ', '', 3, 15, '<p>Chiếc laptop n&agrave;y mang đến cảm gi&aacute;c cực hầm hố thể hiện sự mạnh mẽ tr&ecirc;n từng đường n&eacute;t với gam m&agrave;u đen tuyền, c&aacute;c g&oacute;c cạnh cứng c&aacute;p. Vỏ m&aacute;y được l&agrave;m từ nhựa cao cấp đem đến khả năng chịu lực tốt, m&aacute;y c&oacute; độ d&agrave;y khoảng 23.9 mm v&agrave; trọng lượng 2.2 kg, kh&ocirc;ng qu&aacute; nặng khi cho v&agrave;o balo để di chuyển đối với một chiếc m&aacute;y t&iacute;nh gaming 15.6 inch. Mặt lưng của phi&ecirc;n bản mới n&agrave;y được t&ocirc; điểm th&ecirc;m bằng những đường cắt g&oacute;c cạnh tựa như những tia s&eacute;t tr&ecirc;n nền đen nh&aacute;m, tạo cảm gi&aacute;c kh&iacute; thế mỗi khi mở nắp m&aacute;y.</p>', 1, '24740000', '73cb28ed1c.jpg'),
(31, 'Điện thoại iPhone SE 64GB (2022)', '', 5, 7, '<p><span>iPhone SE 64 GB (2022) vẫn kh&ocirc;ng thay đổi thiết kế nhiều so với phi&ecirc;n bản tiền nhiệm. M&aacute;y vẫn c&oacute; m&agrave;n h&igrave;nh 4.7 inch, viền m&agrave;n h&igrave;nh tr&ecirc;n v&agrave; dưới được giữ lại để chứa camera selfie v&agrave; n&uacute;t Home &ldquo;huyền thoại\".&nbsp;</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 0, '12990000', 'ce18592cbc.jpg'),
(32, 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB ', '', 5, 6, '<p><span>Galaxy S22 Ultra 5G được kế thừa form thiết kế từ những d&ograve;ng Note trước đ&acirc;y của h&atilde;ng đem đến cho bạn c&oacute; cảm gi&aacute;c vừa mới lạ vừa ho&agrave;i niệm. Trọng lượng của m&aacute;y khoảng 228 g cho cảm gi&aacute;c cầm nắm đầm tay, khi cầm m&aacute;y trần th&igrave; hơi c&oacute; cảm gi&aacute;c dễ trượt.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '30990000', 'c54f1387df.jpg'),
(33, 'Điện thoại Samsung Galaxy Z Fold3 5G 256GB ', '', 5, 6, '<p><span>C&oacute; thể thấy mẫu smartphone Galaxy Z Fold3 lần n&agrave;y vẫn giữ nguy&ecirc;n ngoại h&igrave;nh c&ugrave;ng cơ chế m&agrave;n h&igrave;nh gập mở dạng quyển s&aacute;ch như của tiền nhiệm, hồ biến chiếc smartphone th&agrave;nh một chiếc m&aacute;y t&iacute;nh bảng mini một c&aacute;ch dễ d&agrave;ng v&agrave; ngược lại.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '37990000', '8d9ee354f9.jpg'),
(34, 'Điện thoại Samsung Galaxy S22+ 5G 128GB ', '', 5, 6, '<p><span>Galaxy S22+ 5G thiết kế bền bỉ với khung viền từ hợp kim Armor Aluminum cứng c&aacute;p, trang bị&nbsp;k&iacute;nh cường lực Gorilla Glass Victus+. Kh&ocirc;ng chỉ c&oacute; độ ho&agrave;n thiện cao, mẫu điện thoại mới của Samsung c&ograve;n đạt chỉ số&nbsp;kh&aacute;ng nước v&agrave; bụi&nbsp;IP68, gi&uacute;p m&aacute;y tr&aacute;nh khỏi những hư hỏng khi tiếp x&uacute;c với nước trong qu&aacute; tr&igrave;nh sử dụng.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '25990000', 'a858e23e85.jpg'),
(35, 'Điện thoại Samsung Galaxy A52s 5G 128GB', '', 5, 6, '<p><span>Samsung Galaxy A52s tiếp tục sử dụng ng&ocirc;n ngữ thiết kế nguy&ecirc;n khối theo phong c&aacute;ch trẻ trung với c&aacute;c tuỳ chọn m&agrave;u sắc như: Đen, trắng, t&iacute;m v&agrave; xanh mint.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '10990000', 'd05bd90ca8.jpg'),
(36, 'Điện thoại Samsung Galaxy S22 5G 128GB', '', 5, 6, '<p><span>Cảm gi&aacute;c đầu ti&ecirc;n Samsung Galaxy S22 mang lại cho m&igrave;nh khi sử dụng l&agrave; m&aacute;y cho cảm gi&aacute;c cầm nắm cực kỳ chắc chắn v&agrave; đằm tay với thiết kế nhỏ gọn của m&igrave;nh.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '21990000', '9495aae976.jpg'),
(37, 'Laptop Acer Nitro 5 Gaming AN515 57 553E i5 11400H/8GB/512GB/4GB RTX3050/144Hz/Win11', '', 3, 15, '<p><span>&nbsp;Sở hữu hiệu năng mạnh mẽ của&nbsp;</span><strong>CPU Intel Core i5&nbsp;11400H</strong><span>, đi k&egrave;m card m&agrave;n h&igrave;nh rời&nbsp;</span><strong>RTX 3050 4 GB&nbsp;</strong><span>cung cấp khả năng chiến game mượt m&agrave;, c&aacute;c t&aacute;c vụ hằng ng&agrave;y như: Word, Excel, PowerPoint,... hay thiết kế đồ hoạ Premiere, After Effect, Photoshop,... sẽ kh&ocirc;ng l&agrave;m kh&oacute; được chiếc&nbsp;</span><a title=\"Xem th&ecirc;m laptop đang b&aacute;n tại thegioididong.com\" href=\"https://www.thegioididong.com/laptop\" target=\"_blank\">laptop</a><span>&nbsp;n&agrave;y.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '23840000', '50daa94c60.jpg'),
(38, 'Laptop Acer TravelMate TMP215 53 50CP i5 1135G7/8GB/512GB/Win10 Pro', '', 3, 15, '<p><span>Acer TravelMate được trang bị bộ vi xử l&yacute;&nbsp;</span><a title=\"Một số laptop c&oacute; Intel Core i5 đang kinh doanh tại thegioididong.com\" href=\"https://www.thegioididong.com/laptop?g=core-i5\" target=\"_blank\">Intel Core i5</a><span>&nbsp;</span><strong>Tiger Lake 1135G7&nbsp;</strong><span>với&nbsp;</span><strong>4 nh&acirc;n 8 luồng</strong><span>&nbsp;mang đến tốc độ cơ bản</span><strong>&nbsp;2.40 GHz</strong><span>&nbsp;v&agrave; đạt tối đa l&ecirc;n đến&nbsp;</span><strong>4.2 GHz&nbsp;</strong><span>nhờ&nbsp;</span><strong>Turbo Boost</strong><span>, c&ugrave;ng bộ nhớ đệm&nbsp;</span><strong>8 MB</strong><span>, hỗ trợ người d&ugrave;ng ho&agrave;n th&agrave;nh c&aacute;c c&ocirc;ng việc văn ph&ograve;ng đơn giản một c&aacute;ch nhanh gọn c&ugrave;ng Word, Excel,... mang đến hiệu suất c&ocirc;ng việc tốt nhất.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 0, '22290000', 'ea5f9c164a.jpg'),
(42, 'Laptop Dell Inspiron 14 5415 R7 5700U/8GB/512GB/Office H&S/Win11', '', 3, 10, '<p><span>&bull;&nbsp;Bộ vi xử l&yacute;&nbsp;</span><strong>AMD Ryzen 7 5700U</strong><span>&nbsp;kết hợp c&ugrave;ng card t&iacute;ch hợp&nbsp;</span><strong>AMD Radeon Graphics</strong><span>&nbsp;vừa hỗ trợ bạn xử l&yacute; trơn tru những t&aacute;c vụ văn ph&ograve;ng th&ocirc;ng thường, vừa cho bạn thỏa sức s&aacute;ng tạo c&ugrave;ng c&aacute;c ứng dụng nh&agrave; Adobe như thiết kế posters, banners, render video,... một c&aacute;ch mượt m&agrave;.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '23990000', '8f5c3ffbed.jpg'),
(43, 'Tai nghe Bluetooth AirPods 3 Apple MME73 Trắng ', '', 6, 7, '<p><span>Airpods 3 c&oacute; thiết kế tương tự như&nbsp;</span><a title=\"AirPods Pro\" href=\"https://www.thegioididong.com/tai-nghe/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3\" target=\"_blank\">AirPods Pro</a><span>&nbsp;nhưng kh&ocirc;ng c&ograve;n phần&nbsp;eartips,&nbsp;đường viền v&agrave; th&acirc;n ngắn hơn cho &acirc;m thanh truyền tải đến tai tối ưu. Bề mặt&nbsp;</span><a title=\"Tai nghe bluetooth Apple tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/tai-nghe-apple-bluetooth\" target=\"_blank\">tai nghe&nbsp;Bluetooth Apple</a><span>&nbsp;phủ sắc trắng thời thượng,&nbsp;được l&agrave;m từ c&aacute;c vật liệu t&aacute;i chế với độ bền cao, bảo vệ m&ocirc;i trường sống của con người.&nbsp;</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '5490000', '041fa64a8d.jpg'),
(45, 'Ốp lưng Magsafe iPhone 13 Pro Nhựa dẻo Gear4 Santa Cruz Snap', '', 6, 7, '<ul>\r\n<li>Thiết kế trong veo, ph&ocirc; b&agrave;y trọn vẹn ngoại h&igrave;nh thời trang của&nbsp;<strong>iPhone 13 Pro</strong>.</li>\r\n<li>Ốp lưng &ocirc;m kh&iacute;t v&agrave;o c&aacute;c chi tiết m&aacute;y, hạn chế trầy xước.</li>\r\n<li>L&agrave;m bằng vật liệu<strong>&nbsp;nhựa dẻo</strong>&nbsp;nhẹ bền, cầm &ecirc;m tay.</li>\r\n</ul>', 0, '1200000', 'e10286dc5d.jpg'),
(46, 'Ốp lưng Galaxy A33 Nhựa dẻo Samsung', '', 6, 6, '<ul>\r\n<li>Kết cấu gọn đẹp, trong suốt, tạo điểm nhấn c&aacute; t&iacute;nh cho&nbsp;<strong>Galaxy A33</strong>.</li>\r\n<li>Ốp lưng &ocirc;m s&aacute;t th&acirc;n m&aacute;y n&ecirc;n n&acirc;ng cao khả năng bảo vệ khi sử dụng.</li>\r\n<li>Cắt kho&eacute;t tinh tế, dễ d&ugrave;ng c&aacute;c n&uacute;t nhấn v&agrave; cổng chức năng.</li>\r\n</ul>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '200000', '573e9aebc2.jpg'),
(47, 'Bộ Adapter sạc kèm cáp Type C - Type C PD 45W Samsung EP-T4510X Đen', '', 6, 6, '<p><span>T&ecirc;n gọi của bộ&nbsp;</span><a title=\"Xem th&ecirc;m c&aacute;c loại Adapter sạc đang b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/adapter-sac\" target=\"_blank\">Adapter sạc</a><span>&nbsp;đ&atilde; sự thay đổi theo c&aacute;c đời, ở đời Note10 Series bộ sạc 45 W c&oacute; t&ecirc;n gọi l&agrave; \"Travel Adapter\", đến đời S22 series th&igrave; nh&agrave; Samsung đ&atilde; đặt một c&aacute;i t&ecirc;n dễ nhớ hơn l&agrave; \"45W PD Power Adapter\".</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '1190000', 'f959b158c5.jpg'),
(48, 'Tai nghe nhét tai Samsung IA500 Đen ', '', 6, 6, '<p><span>D&acirc;y&nbsp;</span><a title=\"Tai nghe nh&eacute;t tai Samsung IA500 Đen\" href=\"https://www.thegioididong.com/tai-nghe/nhet-tai-samsung-ia500-den\" target=\"_blank\">tai nghe EP Samsung IA500</a><span>&nbsp;c&oacute; độ d&agrave;i l&agrave;&nbsp;</span><strong>1.25 m</strong><span>&nbsp;rất thuận tiện khi d&ugrave;ng, bạn c&oacute; thể để điện thoại đ&atilde; cắm d&acirc;y tai nghe v&agrave;o t&uacute;i hoặc balo m&agrave; vẫn sử dụng được, kh&ocirc;ng cần phải cầm tr&ecirc;n tay để sử dụng.&nbsp;</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '300000', '6060e8a546.jpg'),
(49, 'Tai nghe Có Dây EP Type C OPPO MH135-3', '', 6, 9, '<p>Chiều d&agrave;i d&acirc;y tai nghe 1.2 m, phối gh&eacute;p với c&aacute;c thiết bị kh&aacute;ch thuận tiện, k&iacute;ch cỡ củ tai nhỏ nhắn, đeo vừa kh&iacute;t với khổ tai người d&ugrave;ng, xuất &acirc;m thanh đến thẳng tai, c&aacute;ch &acirc;m hiệu quả.</p>', 1, '260000', '7333071c8b.jpg'),
(51, 'Samsung Galaxy Watch 4 40mm Vàng Hồng', '', 7, 6, '<p><span>Phi&ecirc;n bản&nbsp;</span><a title=\"Đồng hồ Samsung Galaxy Watch 4 40mm được b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-thong-minh/samsung-galaxy-watch-4-40mm\" target=\"_blank\">đồng hồ Samsung Galaxy Watch 4</a><span>&nbsp;n&agrave;y được thiết kế đơn giản với mặt đồng hồ dạng tr&ograve;n c&oacute; đường k&iacute;nh 40 mm thường thấy ở&nbsp;</span><a title=\"Xem th&ecirc;m đồng hồ th&ocirc;ng minh được b&aacute;n tại Thế Giới Di Động\" type=\"Xem th&ecirc;m đồng hồ th&ocirc;ng minh được b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-thong-minh\" target=\"_blank\">đồng hồ th&ocirc;ng minh</a><span>&nbsp;tạo n&ecirc;n phong c&aacute;ch năng động, cuốn h&uacute;t. Khung viền đồng hồ được l&agrave;m từ chất liệu nh&ocirc;m bền chắc, trọng lượng nhẹ. B&ecirc;n cạnh đ&oacute;&nbsp;</span><a title=\"Xem th&ecirc;m đồng hồ c&oacute; d&acirc;y silicone b&aacute;n tại Thế Giới Di Động\" type=\"Xem th&ecirc;m đồng hồ c&oacute; d&acirc;y silicone b&aacute;n tại Thế Giới Di Động\" href=\"https://www.thegioididong.com/dong-ho-thong-minh?g=silicone\" target=\"_blank\">d&acirc;y đeo silicone</a><span>&nbsp;&ecirc;m &aacute;i, kh&ocirc;ng g&acirc;y kh&oacute; chịu khi đeo suốt ng&agrave;y d&agrave;i, kể cả khi người d&ugrave;ng vận động, tập thể thao ra nhiều mồ h&ocirc;i tay.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '5190000', '0fdb666ee4.jpg'),
(55, 'Loa Bluetooth Sony SRS-XB13 ', '', 18, 16, '<p>Thiết kế loa Bluetooth Sony đơn giản, gọn nhẹ chỉ 0.4 kg, đi k&egrave;m d&acirc;y treo cho bạn dễ d&agrave;ng đeo v&agrave;o cổ tay của m&igrave;nh hoặc treo m&oacute;c v&agrave;o balo mang theo khi đi chơi, du lịch, đi học,... Chất liệu vỏ nhựa c&oacute; th&ecirc;m lớp UV coating cho độ bền cao, chống trầy xước, l&agrave;m sạch nhẹ nh&agrave;ng.</p>\r\n<p><span>&nbsp;</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '1160000', '041b81c596.jpg'),
(56, 'Loa Bluetooth Sony Extra Bass SRS-XB43', '', 18, 16, '<ul>\r\n<li>Thiết kế c&aacute; t&iacute;nh, 2 m&agrave;u lựa chọn, dễ di chuyển.</li>\r\n<li>&Acirc;m thanh r&otilde; n&eacute;t với 2 driver woofer v&agrave; 2 driver tweeter.</li>\r\n<li>&Acirc;m trầm mạnh mẽ với Extra Bass v&agrave; m&agrave;ng loa kiểu mới lạ.</li>\r\n</ul>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '3990000', '4a64303beb.jpg'),
(57, 'Loa Bluetooth Sony Extra Bass SRS-XB33', '', 18, 16, '<p><span>Thiết kế cầm vừa tay, c&oacute; thể trực tiếp cầm loa nghe nhạc hoặc cho v&agrave;o t&uacute;i x&aacute;ch, balo khi đi chơi, du lịch, đi l&agrave;m,... Với 3 gam m&agrave;u nổi bật l&agrave; đen, đỏ v&agrave; xanh dương, bạn nam v&agrave; nữ c&oacute; thể tiện chọn mua theo sở th&iacute;ch của m&igrave;nh.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 0, '2950000', 'b1c42e0d09.jpg'),
(58, 'Loa Bluetooth Sony Extra Bass SRS-XB23', '', 18, 16, '<p><span>H&igrave;nh trụ tr&ograve;n tinh xảo, loa c&oacute; k&iacute;ch thước dễ cầm nắm, di chuyển. Sở hữu c&aacute;c m&agrave;u sắc sang trọng l&agrave; xanh dương, đen, xanh r&ecirc;u gi&uacute;p t&ocirc;n vinh n&eacute;t đẹp của mọi kh&ocirc;ng gian sử dụng, cho người d&ugrave;ng th&ecirc;m c&aacute; t&iacute;nh, s&agrave;nh điệu.</span></p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '1990000', '4bd3d0fbb0.jpg'),
(59, 'Loa Bluetooth Sony Extra Bass SRS-XB01', '', 18, 16, '<ul>\r\n<li>Thiết kế nhỏ gọn, di động, dễ mang lại di chuyển.</li>\r\n<li>Khả năng chống thấm nước đạt chuẩn&nbsp;<strong>IPX5</strong>.</li>\r\n<li><strong>C&ocirc;ng suất 3W</strong>&nbsp;đủ đ&aacute;p ứng nghe nhạc trong kh&ocirc;ng gian nhỏ.</li>\r\n<li><strong>C&ocirc;ng nghệ Extra Bass</strong>&nbsp;độc quyền cho &acirc;m thanh mạnh mẽ hơn.</li>\r\n<li>Pin c&oacute; thể nghe nhạc li&ecirc;n tục trong 6 giờ.</li>\r\n</ul>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '799000', '5bf7364cad.jpg'),
(60, 'Loa Bluetooth JBL Charge 5', '', 18, 17, '<ul>\r\n<li>Kiểu d&aacute;ng hiện đại, chắc chắn, c&oacute; t&iacute;nh di động cao.</li>\r\n<li>&Acirc;m thanh&nbsp;<strong>JBL Pro Sound</strong>, tổng c&ocirc;ng suất&nbsp;<strong>40 W</strong>&nbsp;sinh động.&nbsp;</li>\r\n<li>Chuẩn&nbsp;<strong>Bluetooth 5.1</strong>&nbsp;duy tr&igrave; kết nối kh&ocirc;ng d&acirc;y chất lượng đến 10 m.</li>\r\n<li>Đồng h&agrave;nh c&ugrave;ng bạn đến bất kỳ nơi n&agrave;o với&nbsp;chuẩn chống nước, chống bụi&nbsp;<strong>IP67</strong>.</li>\r\n<li>D&ugrave;ng li&ecirc;n tục trong khoảng&nbsp;<strong>20 tiếng</strong>, sạc đầy trong khoảng&nbsp;<strong>4 tiếng.</strong></li>\r\n</ul>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '3990000', '1bfb61d7ff.jpg'),
(61, 'Loa Bluetooth JBL Go 3', '', 18, 17, '<ul>\r\n<li>Sang trọng, hiện đại, k&iacute;ch thước nhỏ gọn dễ mang theo.</li>\r\n<li>Kết nối nhanh ch&oacute;ng, ổn định, mượt m&agrave; với&nbsp;<strong>Bluetooth 5.1</strong>.</li>\r\n<li><strong>C&ocirc;ng suất 4.2W</strong>&nbsp;với&nbsp;<strong>c&ocirc;ng nghệ JBL Pro Sound</strong>&nbsp;cho &acirc;m thanh mạnh mẽ, sống động.</li>\r\n<li>Kh&aacute;ng bụi, chống nước&nbsp;<strong>chuẩn IP67</strong>.</li>\r\n</ul>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '990000', '73855b533c.jpg'),
(66, 'Pin sạc dự phòng Polymer 10.000 mAh Type C PD QC3.0 OPPO PBT02', '', 6, 9, '<p>Chuẩn sạc nhanh Power Delivery hỗ trợ tr&ecirc;n 1 cổng Type C v&agrave; Quick Charge 3.0 tr&ecirc;n 2 cổng USB</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '686000', 'f557a56d87.jpg'),
(67, 'Loa Bluetooth JBL GO2 ', '', 18, 17, '<ul>\r\n<li>JBL GO2 với thiết kế nhỏ gọn, cứng c&aacute;p, dễ mang theo khi đi du lịch, d&atilde; ngoại.</li>\r\n<li>JBL GO2 với c&ocirc;ng nghệ Bluetooth 4.1, cho khả năng kết nối ổn định ở khoảng c&aacute;ch 10 m.</li>\r\n<li>Đ&egrave;n Led th&ocirc;ng minh th&ocirc;ng b&aacute;o t&igrave;nh trạng pin v&agrave; t&igrave;nh trạng kết nối Bluetooth.</li>\r\n</ul>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 0, '690000', 'a5caee9a97.jpg'),
(69, 'Laptop Dell Gaming G15 5511 i7 11800H/16GB/512GB/4GB RTX3050Ti/120Hz/Office H&S/Win11', '', 3, 10, '<p>Mang đến cho người d&ugrave;ng một thiết kế thời thượng c&ugrave;ng hiệu năng vượt trội, laptop Dell Gaming G15 5511 i7 11800H (P105F006BGR) xứng danh l&agrave; người cộng sự l&yacute; tưởng cho mọi nhu cầu c&ocirc;ng việc từ đồ hoạ - kỹ thuật tới chiến những trận game đầy kịch t&iacute;nh.</p>', 1, '35990000', 'a8fc7b0912.jpg'),
(73, 'Laptop Dell Latitude 3520 i7 1165G7/8GB/512GB/Win10 Pro ', '', 3, 10, '<p>Bao bọc b&ecirc;n ngo&agrave;i chiếc laptop n&agrave;y l&agrave; một gam m&agrave;u đen trung t&iacute;nh đầy ấn tượng, với lớp vỏ được chế t&aacute;c từ nhựa bền bỉ sở hữu trọng lượng 1.79 kg v&agrave; d&agrave;y 18 mm, tối ưu cho bạn trong suốt qu&aacute; tr&igrave;nh di chuyển, n&acirc;ng cao năng suất l&agrave;m việc.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '27890000', 'bf76554f64.jpg'),
(78, 'Laptop Dell XPS 17 9710 i7 11800H/16GB/1TB SSD/4GB RTX3050/Touch/Cáp/Office H&S/Win11', '', 3, 10, '<p>Laptop Dell XPS cung cấp lượng &aacute;nh s&aacute;ng đầy đủ để bạn l&agrave;m việc trong khoảng thời gian d&agrave;i với chất lượng hiển thị nội dung r&otilde; n&eacute;t nhờ độ s&aacute;ng 500 nits, đồng thời bảo vệ thị gi&aacute;c người xem trước &aacute;nh s&aacute;ng độc hại với c&ocirc;ng nghệ Anti-Reflective.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '82990000', '646eba9e22.jpg'),
(79, 'Cáp Type C - Lightning 2m Apple MQGH2 Trắng', '', 6, 7, '<p>Thiết kế với 1 đầu kết nối Type-C v&agrave; 1 đầu Lightning, d&ugrave;ng để sạc v&agrave; truyền dữ liệu.</p>\r\n<p>D&acirc;y d&agrave;i 2 m tiện lợi, chất liệu dai bền, chống xoắn rối.</p>\r\n<p>C&oacute; thể sử k&egrave;m theo Adapter 29 W, 30 W, 61 W, 87 W để sạc nhanh iPhone, iPad.</p>\r\n<p>Sử dụng k&egrave;m được với nhiều Adapter hay pin dự ph&ograve;ng kh&aacute;c c&oacute; đầu v&agrave;o USB Type-C.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '841000', 'ee2f9719f3.jpg'),
(80, 'Apple Watch S6 44mm viền nhôm dây cao su', '', 7, 7, '<p>Apple Watch Series 6 44 mm viền nh&ocirc;m d&acirc;y cao su l&agrave; một si&ecirc;u phẩm đến từ nh&agrave; T&aacute;o, nhờ c&oacute; thiết kế tinh xảo, độ ho&agrave;n thiện cao, m&agrave;u đen sang trọng ph&ugrave; hợp với mọi lứa tuổi v&agrave; giới t&iacute;nh, chiếc đồng hồ lu&ocirc;n thu h&uacute;t rất nhiều người khi xuất hiện.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 0, '8990000', 'bf3bf2e721.jpg'),
(81, 'Samsung Galaxy Watch 3 41mm thép vàng dây da hồng', '', 7, 7, '<p>Đồng hồ th&ocirc;ng minh Samsung Galaxy Watch 3 41 mm sở hữu 2 n&uacute;t bấm v&agrave; v&ograve;ng bezel xoay điều khiển vật l&yacute;, thay cho mặt xoay cảm ứng ở phi&ecirc;n bản Watch Active 2. M&agrave;n h&igrave;nh Super AMOLED 1.2 inch c&ugrave;ng độ ph&acirc;n giải 360 x 360 pixels gi&uacute;p h&igrave;nh ảnh hiển thị được ch&acirc;n thật, r&otilde; n&eacute;t. Th&acirc;n đồng hồ được l&agrave;m bằng th&eacute;p cứng c&aacute;p, kh&aacute;c với Watch Active 2 được l&agrave;m bằng nh&ocirc;m. D&acirc;y đeo chất liệu da tạo cảm gi&aacute;c chắc chắn v&agrave; dễ chịu cho người d&ugrave;ng khi đeo.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '3490000', 'e67b6323bf.jpg'),
(82, 'Apple Watch S6 LTE 40mm viền thép dây thép', '', 7, 7, '<p>Apple Watch S6 LTE 40mm viền th&eacute;p d&acirc;y th&eacute;p sở hữu c&aacute;c chi tiết được thiết kế tinh xảo, d&acirc;y đeo th&eacute;p bền bỉ dưới h&igrave;nh d&aacute;ng lưới đan mỏng. M&agrave;n h&igrave;nh 1.57 inch hiển thị h&igrave;nh ảnh sắc n&eacute;t, mặt k&iacute;nh Sapphire gi&uacute;p bảo vệ chiếc đồng hồ của bạn an to&agrave;n trước những va đập kh&ocirc;ng mong muốn</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '15490000', '958cd418da.jpg'),
(83, 'Apple Watch Series 7 LTE 41mm', '', 7, 7, '<p>Apple Watch S7 LTE 41 mm viền nh&ocirc;m d&acirc;y cao su c&oacute; thiết kế được n&acirc;ng cấp hơn so với phi&ecirc;n bản tiền nhiệm. Sở hữu vẻ ngo&agrave;i sang trọng v&agrave; hiện đại, Apple Watch S7 được thiết kế c&aacute;c g&oacute;c bo tr&ograve;n mềm mại với mặt đồng hồ được v&aacute;c cong tạo cảm gi&aacute;c liền mạch hơn với khung viền. Phần khung viền được thiết kế mỏng hơn 40% v&agrave; l&agrave;m từ vật liệu nh&ocirc;m t&aacute;i chế 100% th&acirc;n thiện với m&ocirc;i trường. D&acirc;y đeo cao su c&oacute; độ đ&agrave;n hồi tốt, thoải m&aacute;i khi đeo v&agrave; chống thấm mồ h&ocirc;i hiệu quả.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 0, '13490000', 'f4c5bca41c.jpg'),
(84, 'Apple Watch SE 44mm viền nhôm dây cao su', '', 7, 7, '<p>Apple Watch SE 44mm viền nh&ocirc;m d&acirc;y cao su c&oacute; m&agrave;n h&igrave;nh Retina 1.78 inch c&ugrave;ng độ ph&acirc;n giải 448 x 368 pixels gi&uacute;p hiển thị th&ocirc;ng tin v&agrave; h&igrave;nh ảnh được r&otilde; r&agrave;ng v&agrave; sắc n&eacute;t. D&acirc;y đeo cao su c&oacute; độ đ&agrave;n hồi cao, tạo cảm gi&aacute;c thoải m&aacute;i cho cổ tay khi l&agrave;m việc v&agrave; tập luyện thể thao. Thiết kế h&igrave;nh vu&ocirc;ng bo tr&ograve;n 4 g&oacute;c, kh&aacute; giống với phi&ecirc;n bản Series 5, mặt k&iacute;nh cong 2.5D tạo cảm gi&aacute;c vuốt v&agrave; chạm mượt m&agrave;.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 0, '8390000', 'f9606a6006.jpg'),
(85, '	Apple Watch S6 LTE 44mm viền nhôm dây cao su', '', 7, 7, '<p>Apple Watch S6 LTE 44mm viền nh&ocirc;m d&acirc;y cao su xanh dương mang n&eacute;t thanh lịch, c&aacute;c chi tiết được gia c&ocirc;ng chắc chắn, tinh xảo. M&agrave;n h&igrave;nh OLED 1.78 inch với thiết kế tr&agrave;n viền gi&uacute;p h&igrave;nh ảnh hiển thị r&otilde; n&eacute;t, ch&acirc;n thực. Nhờ c&oacute; mặt k&iacute;nh Ion-X strengthened glass cứng c&aacute;p, chống trầy xước v&agrave; chống va đập hiệu quả, đồng hồ an to&agrave;n trước những va chạm thường ng&agrave;y. D&acirc;y đeo silicone &ecirc;m nhẹ, độ đ&agrave;n hồi cao, cho người d&ugrave;ng cảm gi&aacute;c dễ chịu suốt ng&agrave;y d&agrave;i.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '10990000', '29e15b7cf1.jpg'),
(86, '	Samsung Galaxy Watch 4 LTE Classic 46mm', '', 7, 6, '<p>Samsung Galaxy Watch 4 LTE Classic 46mm mang n&eacute;t sang trọng, hiện đại c&ugrave;ng với bộ khung viền th&eacute;p kh&ocirc;ng gỉ cứng c&aacute;p, m&agrave;n h&igrave;nh SUPER AMOLED được bao bọc bởi lớp k&iacute;nh cường lực Gorrilla Glass Dx+ bền bỉ, chịu lực tốt. D&acirc;y đeo silicone &ecirc;m nhẹ, độ đ&agrave;n hồi cao, kh&ocirc;ng thấm nước, thiết kế đục lỗ cho người d&ugrave;ng sự th&ocirc;ng tho&aacute;ng khi mang.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 1, '7990000', 'da2897e6c2.jpg'),
(87, 'Laptop Apple MacBook Pro M1 2020 16GB/1TB SSD (Z11C000CJ) ', '', 3, 7, '<p>Laptop Apple Macbook Pro M1 2020 (Z11C000CJ) với chip M1 d&agrave;nh ri&ecirc;ng cho MacBook đưa hiệu năng của MacBook Pro 2020 l&ecirc;n một tầm cao mới. M&agrave;n h&igrave;nh Retina si&ecirc;u n&eacute;t, thời lượng pin ấn tượng v&agrave; h&agrave;ng loạt c&aacute;c t&iacute;nh năng hiện đại gi&uacute;p bạn c&oacute; được trải nghiệm l&agrave;m việc chuy&ecirc;n nghiệp nhất.</p>\r\n<div id=\"eJOY__extension_root\" class=\"eJOY__extension_root_class\" style=\"all: unset;\">&nbsp;</div>', 0, '46990000', 'd77538fd21.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `slider_image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(12, 'Giảm giá redmi note 11', 'c9624bf486.png', 1),
(13, 'iPhone 13 pro max', '39d51e20ae.png', 1),
(14, 'Sale Acer', '5af63081d5.png', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
