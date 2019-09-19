-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 19, 2019 lúc 10:46 PM
-- Phiên bản máy phục vụ: 10.3.15-MariaDB
-- Phiên bản PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `raovat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `areas`
--

INSERT INTO `areas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hải Châu', '2019-09-09 23:31:51', '2019-09-09 23:31:51'),
(2, 'Cẩm Lệ', '2019-09-09 23:31:51', '2019-09-09 23:31:51'),
(3, 'Liên Chiểu', '2019-09-09 23:31:51', '2019-09-09 23:31:51'),
(4, 'Ngũ Hành Sơn', '2019-09-09 23:31:51', '2019-09-09 23:31:51'),
(5, 'Sơn Trà', '2019-09-09 23:31:51', '2019-09-09 23:31:51'),
(6, 'Thanh Khê', '2019-09-09 23:31:51', '2019-09-09 23:31:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `img`, `content`, `phone`, `price`, `area_id`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Bán xe Mercedes-Benz C300AMG dòng sedan màu bạc mới 99%, giá 1.879 tỷ', 'xehoi1.jpg', '<p>Mercedes-Benz Vietnam Star Ph&uacute; Mỹ Hưng, b&aacute;n Mercedes-Benz C300AMG, xe cũ/đã qua sử dụng, mới 99%, ti&ecirc;́t ki&ecirc;̣m 8% thu&ecirc;́ trước bạ (chỉ n&ocirc;̣p 2% thu&ecirc;́ trước bạ), dòng xe sedan, m&agrave;u bạc/nội thất đen, đăng k&yacute; th&aacute;ng 3/2019, năm sản xuất 2017, xe lắp ráp, chỉ sử dụng 38 km, gi&aacute; 1,879 Tỷ&hellip; Xe c&ocirc;ng ty xu&acirc;́t hóa đơn đủ, bảo h&agrave;nh 01 năm kh&ocirc;ng hạn chế km sử dụng, Ng&acirc;n h&agrave;ng hỗ trợ 65% với l&atilde;i suất ưu đ&atilde;i 8.5%, l&yacute; lịch minh bạch v&agrave; được trưng bày bán duy nh&acirc;t tại Mercedes Phú Mỹ Hưng-Quận 7-TP.HCM.<br />\r\n<br />\r\nNgo&agrave;i ra, ch&uacute;ng t&ocirc;i c&ograve;n c&oacute; nhiều d&ograve;ng kh&aacute;c: A250AMG Sport, CLA200, C300AMG, E200, E250, S450, Maybach S500, GLA45AMG, GLC200, V220, Vito 121&hellip;với đủ màu sắc, s&ocirc;́ km th&acirc;́p &quot;&ldquo;si&ecirc;u lướt&quot;&rdquo;<br />\r\n<br />\r\nLi&ecirc;n hệ Ms Hương 0913 167 419</p>', '0913167419', '1879000000', 1, 3, 2, '2019-09-09 23:38:32', '2019-09-09 23:38:32'),
(2, 'Mercedes GLC200 2019 Bảo Hành 3 Năm Tặng Bảo Hiểm 1 Năm.', 'xehoi2.jpg', '<p>✡ MERCEDES-BENZ VIETNAMSTAR (C&Ocirc;NG TY &Ocirc; T&Ocirc; NG&Ocirc;I SAO VIỆT NAM)<br />\r\n✡ Tr&acirc;n Trọng gửi đến qu&yacute; kh&aacute;ch h&agrave;ng những mẫu xe Như Mới được b&aacute;n Ch&iacute;nh H&atilde;ng:<br />\r\n✡ Mercedes-Benz GLC200 Xuất Xưởng 2019 B&aacute;n Ch&iacute;nh H&atilde;ng.<br />\r\n✅ Mẫu xe: GLC200 Form Mới 2019. Tiết Kiệm Hơn 400 Triệu Khi Mua Xe Mới.<br />\r\n✅ Ng&agrave;y đăng k&yacute; lần đầu: 05/2019. Chỉ Đ&oacute;ng Thuế 2% l&agrave; Sang T&ecirc;n Lăn B&aacute;nh.<br />\r\n✅ Số km :Chỉ Từ 30km Đến 2000km. To&agrave;n Si&ecirc;u Lướt Si&ecirc;u Mới.<br />\r\n✅ M&agrave;u sắc: C&aacute;c xe GLC200 Đang C&oacute;: M&agrave;u Trắng v&agrave; M&agrave;u Đen.<br />\r\n✅ Gi&aacute; C&ocirc;ng Bố Đại L&yacute;: 1.699.000.000 VNĐ. Gi&aacute; Giảm Trong Th&aacute;ng: Chỉ C&ograve;n 1.640.000.000 VNĐ.<br />\r\n-----------------------------<br />\r\n7 LÝ DO LỰA CHỌN XE ĐÃ QUA SỬ DỤNG CHÍNH HÃNG:<br />\r\n1. BẢO H&Agrave;NH CH&Iacute;NH H&Atilde;NG kh&ocirc;ng giới hạn km v&agrave; Được Mua Th&ecirc;m Gia Hạn Bảo H&agrave;nh.<br />\r\n2. Xe c&oacute; Xuất Ho&aacute; Đơn v&agrave; Hợp Đồng Mua B&aacute;n C&aacute;m Kết từ Ch&iacute;nh H&atilde;ng.<br />\r\n3. To&agrave;n xe Si&ecirc;u Lướt Hoặc Chưa Lăn B&aacute;nh Như Mới.<br />\r\n4. Lý lịch minh bạch quá trình bảo dưỡng &amp; sửa chữa<br />\r\n5. Xe kh&ocirc;ng bị tai nạn, đ&acirc;m đụng v&agrave; tua đồng hồ.<br />\r\n6. H&ocirc;̃ trợ tài chính 70%-80% gi&aacute; trị xe.<br />\r\n7. Trao đ&ocirc;̉i hoặc ký gửi xe của bạn.<br />\r\nNhớ Nhấn N&uacute;t: Quan T&acirc;m để theo d&otilde;i c&aacute;c mẫu xe Lướt Mercedes</p>', '0908299829', '1740000000', 1, 3, 2, '2019-09-09 23:41:50', '2019-09-09 23:41:50'),
(3, 'Bán xe Mercedes-Benz E250 màu xanh mới 99%, giá 2.199 tỷ, xem Quận 7', 'xehoi3.jpg', '<p>Mercedes-Benz Vietnam Star Ph&uacute; Mỹ Hưng, b&aacute;n Mercedes-Benz E250, xe cũ/đã qua sử dụng, dòng xe sang trọng b&acirc;̣c nh&acirc;́t, xe mới 99%, tiết kiệm 8% thuế trước bạ, m&agrave;u xanh/nội thất đen, đăng k&yacute; th&aacute;ng 08/2018, năm sản xuất 2017, đi được 26,600 km, gi&aacute; 2,199 Tỷ&hellip; Xe c&ocirc;ng ty xu&acirc;́t hóa đơn đủ, bảo h&agrave;nh 02 năm kh&ocirc;ng hạn chế km sử dụng, Ng&acirc;n h&agrave;ng hỗ trợ 65% với l&atilde;i suất ưu đ&atilde;i 8.5%, l&yacute; lịch minh bạch v&agrave; được trưng bày bán duy nhất tại Mercedes Phú Mỹ Hưng - Quận 7 -TP.HCM<br />\r\n<br />\r\nNgo&agrave;i ra, ch&uacute;ng t&ocirc;i c&ograve;n c&oacute; nhiều d&ograve;ng kh&aacute;c: A250AMG Sport, CLA200, C300AMG, E200, E250, S450, Maybach S500, GLA45AMG, GLC200, V220, Vito 121&hellip;với đủ màu sắc, s&ocirc;́ km th&acirc;́p &quot;&ldquo;si&ecirc;u lướt&quot;&rdquo;<br />\r\n<br />\r\nLi&ecirc;n hệ Ms Hương 0913 167 419</p>', '0913167419', '2199000000', 1, 3, 2, '2019-09-09 23:43:20', '2019-09-09 23:43:20'),
(4, 'Bán xe Mercedes-Benz E200 màu xanh đen mới 99%, giá 2.079 tỷ', 'xehoi4.jpg', '<p>Mercedes-Benz Vietnam Star Ph&uacute; Mỹ Hưng, b&aacute;n Mercedes-Benz E200, xe cũ/đã qua sử dụng, mới 99%, ti&ecirc;́t ki&ecirc;̣m 8% thu&ecirc;́ trước bạ (chỉ n&ocirc;̣p 2% thu&ecirc;́ trước bạ), dòng xe sedan, m&agrave;u xanh đen/nội thất đen, đăng k&yacute; th&aacute;ng 3/2019, năm sản xuất 2017, xe lắp ráp, chỉ sử dụng 39 km, gi&aacute; 2,079 Tỷ&hellip; Xe c&ocirc;ng ty xu&acirc;́t hóa đơn đủ, bảo h&agrave;nh 02 năm kh&ocirc;ng hạn chế km sử dụng, Ng&acirc;n h&agrave;ng hỗ trợ 65% với l&atilde;i suất ưu đ&atilde;i 8.5%, l&yacute; lịch minh bạch v&agrave; được trưng bày bán duy nhất tại Mercedes Phú Mỹ Hưng - Quận 7 - TP.HCM<br />\r\n<br />\r\nLi&ecirc;n hệ Ms Hương 0913 167 419</p>', '0913167419', '2079000000', 1, 3, 2, '2019-09-09 23:46:26', '2019-09-10 01:32:22'),
(5, 'Bán Các Loại Xe Máy Nhập Khẩu Hàng Chính Hãng Xe Mới 100%', 'xemay1.jpg', '<p>???????? CHUY&Ecirc;N B&Aacute;N C&Aacute;C LOẠI XE ????????<br />\r\n???? Gi&aacute; Cả Hợp L&yacute; Uy T&iacute;n Đặt L&ecirc;n H&agrave;ng Đầu ????<br />\r\n✅- H&agrave;ng b&aacute;n chất lượng nhất.<br />\r\n✅- * Li&ecirc;n Hệ Hotline : SĐT : 0865732432&nbsp;<br />\r\n* Li&ecirc;n Hệ Hotline : ZALO : ( 0865732432 Duy Moto&nbsp;)<br />\r\n✅- Hỗ Trợ 24/24 Tận T&igrave;nh Chu Đ&aacute;o.&nbsp;<br />\r\nH&igrave;nh thức giao dịch:&nbsp;<br />\r\n✅- Lưu &yacute;: C&oacute; nhận giao h&agrave;ng to&agrave;n quốc xin kh&aacute;ch h&agrave;ng cứ an t&acirc;m về chất lượng v&agrave; sản phẩm&nbsp;<br />\r\ncủa xe..<br />\r\n--------------????????????????------------.<br />\r\n???????????? BẢNG GI&Aacute; XE NHƯ SAU ????????????<br />\r\n✅- Exciter: 2010: 10.000.000VND ( mới ????%)<br />\r\n✅- Exciter 135GP: 13.000.000 VND ( mới ????%)<br />\r\n✅- Exciter 150: 15.000.000 VND ( mới ????%)<br />\r\n✅- Liberty: 14.000.000 VND ( mới ????%)<br />\r\n---- SH 125i : 20.000.000 VND<br />\r\n✅- SH 150i : 25.000.000 VND ( mới ????%)<br />\r\n✅- SH 300i : 30.000.000 VND ( mới ????%)<br />\r\n✅- Satria: 15.000.000 VND ( mới ????%)<br />\r\n✅- Xipo: 15.000.000 VND ( mới ????%)<br />\r\n✅- Vision mới: 13.000.000.VND ( mới ????%)<br />\r\n✅- AB Th&aacute;i: 14.000.000 VND ( mới ????%)<br />\r\n✅- AB 2018 : 15.000.000 VND ( mới ????%)<br />\r\n✅- Vespa LX: 17.000.000 VND ( mới ????%)<br />\r\n✅- Raidder 150 : 15.000.000 VND ( mới ????%)<br />\r\n✅- V&agrave; c&aacute;c loại xe kh&aacute;c ...vvv<br />\r\n--------------????????????????------------<br />\r\n???? Xe c&oacute; c&aacute;c m&agrave;u cực đẹp,cực đẳng cấp.<br />\r\n???? Cam kết m&aacute;y nguy&ecirc;n zin tuyệt đối ????????<br />\r\n???? Xe đi chuẩn n&eacute;t&nbsp;<br />\r\n<br />\r\n* Li&ecirc;n Hệ Hotline : ZALO : ( 0865732432 Duy Moto )&nbsp;<br />\r\n✅ Quyền Lợi Kh&aacute;ch H&agrave;ng Khi Mua Xe<br />\r\n<br />\r\n1️⃣ Bảo h&agrave;nh xe 1 năm về động cơ v&agrave; m&aacute;y.<br />\r\n2️⃣ Bảo h&agrave;nh an ninh v&agrave; giấy tờ xe trọn đời.<br />\r\n3️⃣ Bao test xe đổi tẹt ga trong v&ograve;ng 7 ng&agrave;y.<br />\r\n4️⃣ Hỗ trợ đổi c&aacute;c xe.<br />\r\n-----------------❤️????????--------</p>', '0865732432', '12000000', 1, 3, 1, '2019-09-09 23:50:34', '2019-09-09 23:50:34'),
(6, 'Ô tô - Xe máy Xe tải Bán xe OLLIN 500 E4 thùng mui bạt Giá rẻ hỗ trợ trả góp 75%', 'xetai1.jpg', '<p>Xe tải 5 tấn Thaco Ollin500.E4 tấn rất đa dạng: Th&ugrave;ng k&iacute;n, th&ugrave;ng đ&ocirc;ng lạnh,th&ugrave;ng chở xe m&aacute;y,&nbsp;<br />\r\nth&ugrave;ng mui bạt, th&ugrave;ng lửng....<br />\r\n<br />\r\nNội thất xe được thiết kế rộng r&atilde;i tiện nghi với cabin 3 chỗ ngồi thoải&nbsp;m&aacute;i, điều h&ograve;a theo xe, ghế&nbsp;<br />\r\nbọc da, bảng taplo hiện đại, dễ sử dụng, cửa k&iacute;nh chỉnh điện, kh&oacute;a cửa trung t&acirc;m, hệ thống giải&nbsp;<br />\r\ntr&iacute; CD/Mp3/Radio/USB cao cấp với 4 loa gi&uacute;p bạn lu&ocirc;n thoải m&aacute;i khi đi những qu&atilde;ng đường d&agrave;i<br />\r\n<br />\r\nHệ thống an to&agrave;n tr&ecirc;n Xe tải 5 tấn Ollin500.E4 bao gồm hệ thống phanh chất lượng cao, thắng đổ&nbsp;<br />\r\nđ&egrave;o, thanh gia cường th&acirc;n xe,... Đảm bảo an to&agrave;n cho bạn tr&ecirc;n mọi cung đường<br />\r\nXe tải Ollin của Trường Hải được đ&aacute;nh gi&aacute; l&agrave; sản phẩm xe tải trung ho&agrave;n hảo, l&agrave; sự lựa chọn&nbsp;<br />\r\nh&agrave;ng đầu của c&aacute;c doanh nghiệp vận tải: Vật liệu x&acirc;y dựng, thực phẩm, h&agrave;ng ti&ecirc;u d&ugrave;ng&hellip;. Bởi&nbsp;<br />\r\nchất lượng cũng như mẫu m&atilde;, kiểu d&aacute;ng hiện đại, nhỏ gọn, năng động rất thuận tiện cho việc lưu&nbsp;<br />\r\nth&ocirc;ng trong th&agrave;nh phố. Thaco Trường Hải tiếp tục trực hiện chiến lược đa dạng h&oacute;a sản phẩm&nbsp;<br />\r\nvới nhiều mẫu m&atilde; v&agrave; gi&aacute; cả hợp l&yacute;, b&ecirc;n cạnh đ&oacute; l&agrave; những dịch vụ v&agrave; ưu đ&atilde;i hấp dẫn khi mua&nbsp;<br />\r\nh&agrave;ng.<br />\r\n<br />\r\nC&ocirc;ng ty ch&uacute;ng t&ocirc;i xin tr&acirc;n trọng giới thiệu đến Qu&yacute; kh&aacute;ch h&agrave;ng sản phẩm.<br />\r\n<br />\r\nThaco Ollin500.E4 5 tấn m&aacute;y điện mới<br />\r\nTh&ocirc;ng s&ocirc;́ kỹ thuật Ollin 500. E4:<br />\r\nĐ&ocirc;̣ng cơ: Diesel YZ4DA2-40, 4 kỳ &ndash; 4 xi lanh thẳng h&agrave;ng.<br />\r\nDung t&iacute;ch xi-lanh: 3.660 cc.<br />\r\nK&iacute;ch thước l&ograve;ng th&ugrave;ng: 4350x2020x1970 mm.<br />\r\nTrọng lượng to&agrave;n bộ: 8495 kg.<br />\r\nTải trọng cho ph&eacute;p: 4900 kg.<br />\r\n- M&aacute;y lạnh cabin, k&iacute;nh cửa chỉnh điện<br />\r\n- Ghế bọc da cao cấp, cabin kiểu mới hiện đại<br />\r\n- Phanh cuppo hỗ trợ đi đường đ&egrave;o dốc.<br />\r\n- Lốp Maxxis 7.50-16 (7.50R16)<br />\r\nL&yacute; do bạn n&ecirc;n chọn mua xe tại Thaco Trường Hải:<br />\r\n- Chất lượng xe, phụ t&ugrave;ng được kiểm tra từ kh&acirc;u nhập, sản xuất cho đến xuất xưởng.<br />\r\n- Gi&aacute; được ni&ecirc;m yết c&ocirc;ng khai v&agrave; minh bạch, c&oacute; t&iacute;nh cạnh tranh.<br />\r\n- Dịch vụ v&agrave; tư vấn chuy&ecirc;n nghiệp.<br />\r\n- Hệ thống showroom v&agrave; xưởng dịch vụ trải khắp cả nước.&nbsp;</p>', '0966821033', '439000000', 2, 3, 1, '2019-09-09 23:52:21', '2019-09-09 23:52:21'),
(7, 'CHO THUÊ Biệt Thự Biển Ali VŨNG TÀU', 'nha1.jpg', '<p><strong>Hệ thống cho thu&ecirc; biệt thự Vũng T&agrave;u Ali hiện c&oacute; 10 biệt thự đẹp, rộng r&atilde;i v&agrave; đầy đủ tiện nghi. Biệt Thự Vũng T&agrave;u Ali &nbsp;&nbsp;sẽ l&agrave; điểm dừng ch&acirc;n l&yacute; tưởng cho gia đ&igrave;nh, nh&oacute;m bạn b&egrave; khi đến tham quan v&agrave; thư gi&atilde;n tại v&ugrave;ng biển Vũng T&agrave;u.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- 7 căn biệt thự ở B&atilde;i Sau Vũng T&agrave;u, tọa lạc tại khu biệt thự &Aacute; Ch&acirc;u, khu biệt thự Lạc Long Qu&acirc;n, khu biệt thự Kim Ng&acirc;n. C&aacute;c biệt thự c&aacute;ch b&atilde;i biển Th&ugrave;y V&acirc;n từ 50m, 400m hay 700 m.</strong></p>\r\n\r\n<p><strong>- 3 căn biệt thự ở khu biệt thự Long Cung, c&aacute;ch b&atilde;i biển Thủy Ti&ecirc;n 70m.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tất cả c&aacute;c biệt thự Vũng T&agrave;u Ali được cho thu&ecirc; nguy&ecirc;n căn cho c&aacute;c mục đ&iacute;ch nghỉ dưỡng, hội thảo, họp mặt gia đ&igrave;nh, họp mặt c&ocirc;ng ty ngắn ng&agrave;y (từ 1 &ndash; 7 ng&agrave;y).</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mỗi biệt thự c&oacute;:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- S&acirc;n vườn, garage cho xe từ 7 chỗ, từ 4 - 13 ph&ograve;ng ngủ, 1 - 3 ph&ograve;ng kh&aacute;ch, 4 - 10 toilet, c&oacute; ph&ograve;ng ngủ tập thể lớn ( từ 35 &ndash; 60m2) với hầu hết l&agrave; d&ugrave;ng tivi LCD Led , c&oacute; bổ sung nệm di động + mền + gối cho đo&agrave;n c&oacute; nhiều kh&aacute;ch lưu tr&uacute;, 1 nh&agrave; bếp, ph&ograve;ng ăn.</strong></p>\r\n\r\n<p><strong>- Đầy đủ c&aacute;c gian ph&ograve;ng như nh&agrave; bếp, nh&agrave; để xe, ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ, toilet... được trang bị đầy đủ c&aacute;c tiện nghi hiện đại như bếp gas, bếp nướng (gas, hồng ngoại, cồn, than), b&agrave;n ghế, nồi cơm điện, b&igrave;nh nước lọc, ch&eacute;n b&aacute;t ly, nồi ni&ecirc;u, b&igrave;nh lọc nước, b&igrave;nh nấu nước s&ocirc;i,tủ lạnh, m&aacute;y giặt&hellip;</strong></p>\r\n\r\n<p><strong>- Miễn ph&iacute; wifi, &nbsp;c&oacute; kết nối Internet tốc độ cao, truyền h&igrave;nh c&aacute;p.</strong></p>\r\n\r\n<p><strong>- Miễn ph&iacute; tr&aacute;i c&acirc;y theo m&ugrave;a, nước uống (Aquafina, cafe g&oacute;i, tr&agrave; g&oacute;i), thức ăn (cơm gạo, m&igrave; g&oacute;i, ch&aacute;o g&oacute;i).</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Biệt Thự Vũng T&agrave;u Ali c&oacute; thể phục vụ cho 16 &ndash; 50 người, c&aacute;c căn biệt thự gần nhau c&oacute; thể chứa tối đa cho đo&agrave;n từ 40 - 70 người. C&oacute; căn biệt thự 2 mặt tiền, kh&ocirc;ng kh&iacute; m&aacute;t mẻ, nhiều c&acirc;y xanh, y&ecirc;n tĩnh. Gần biển, gần khu trung t&acirc;m du lịch của TP Vũng T&agrave;u.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Miễn ph&iacute; tiếp cận c&aacute;c th&ocirc;ng tin hướng dẫn (guide) v&agrave; hỗ trợ (từ nh&acirc;n vi&ecirc;n support) về c&aacute;c vấn đề ăn, uống , đi lại, vui chơi, nghỉ dưỡng, mua sắm, t&igrave;m hiểu đời sống của d&acirc;n địa phương&hellip;Ngo&agrave;i ra du kh&aacute;ch c&ograve;n nhận được gi&aacute;</strong></p>\r\n\r\n<p><strong>ưu đ&atilde;i khi thu&ecirc; xe m&aacute;y tại biệt thự.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Th&ocirc;ng tin chi tiết vui l&ograve;ng li&ecirc;n hệ Hotline: 0939246247</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Biệt Thự Ali - Biệt Thự Nghỉ Dưỡng Vũng T&agrave;u</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><strong>TPHCM:&nbsp;</strong>152/1 Nguyễn Trọng Tuyển, P.8, Q. Ph&uacute; Nhuận, TP.HCM, Việt Nam</strong></p>\r\n\r\n<p><strong>ĐT: &nbsp;(028) 7300 6722 ( 6 line) - (028) 6676 5443</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Vũng T&agrave;u: 125/11 V&otilde; Thị S&aacute;u, Tp Vũng T&agrave;u, Việt Nam.</strong></p>\r\n\r\n<p><strong>ĐT: (0254) - 527 517</strong></p>\r\n\r\n<p><strong>Email: vungtau@sgc.vn</strong></p>\r\n\r\n<p><strong>Website: https://bietthubien.com - https://bietthuali.com</strong></p>', '0908252127', '3200000', 2, 1, 1, '2019-09-09 23:54:39', '2019-09-09 23:54:39'),
(8, 'Chỉ trả trước 100Tr rước ngay TOYOTA - Wigo thần thánh', 'xehoi5.jpg', '<p>TOYOTA BẾN TH&Agrave;NH , chuy&ecirc;n b&aacute;n trả g&oacute;p d&ograve;ng xe Toyota Wigo 1.2G số s&agrave;n, số tự động 4 cấp,&nbsp;<br />\r\nm&aacute;y xăng, mới 100%, nhập khẩu nguy&ecirc;n chiếc.<br />\r\nTOYOTA WIGO 2019 GỒM 2 PHI&Ecirc;N BẢN :<br />\r\n- TOYOTA WIGO 1.2 MT - Số s&agrave;n - 330.000.000&nbsp;đ<br />\r\n- TOYOTA WIGO 1.2 AT - Số tự động - 390.000.000 đ<br />\r\n*Hotline li&ecirc;n hệ 24/24: 0919.01.11.88 (Minh Hiếu)<br />\r\n- L&atilde;i suất ưu đ&atilde;i 0.33%, hỗ trợ vay l&ecirc;n đến 85% từ t&agrave;i ch&iacute;nh Toyota, thời gian vay linh hoạt, duyệt&nbsp;<br />\r\nhồ sơ nhanh ch&oacute;ng.<br />\r\n- Hỗ trợ giao xe tận nh&agrave;<br />\r\n- Tặng k&egrave;m c&aacute;c phụ kiện ch&iacute;nh h&atilde;ng<br />\r\n- Miễn ph&iacute; c&ocirc;ng b&atilde;o dưỡng (3 lần)<br />\r\nLi&ecirc;n hệ: TOYOTA BẾN TH&Agrave;NH. 0919.01.11.88 (Minh Hiếu)<br />\r\n- 262 Trần Hưng Đạo, Q.1<br />\r\n- 326 V&otilde; Văn Kiệt, Q.1<br />\r\n- 2078 V&otilde; Văn Kiệt, Q. B&igrave;nh T&acirc;n</p>', '0919011188', '390000000', 4, 3, 1, '2019-09-09 23:56:01', '2019-09-09 23:56:01'),
(9, 'Bán đất Củ Chi - Tp Hồ Chí Minh, diện tích 2062 m2', 'dat1.jpg', '<p>B&aacute;n đất Củ Chi - Tp Hồ Ch&iacute; Minh, diện t&iacute;ch 2062 m2, mặt tiền đường nhựa xe hơi 14m, c&aacute;ch ng&atilde; tư An Sương 14km.<br />\r\n<br />\r\nNh&agrave; hướng Đ&ocirc;ng, đ&atilde; c&oacute; 100 m2 thổ cư, đường Xuy&ecirc;n &Aacute; v&agrave;o 200m. Trong vườn c&oacute; sẵn 2 căn nh&agrave;: 1 nh&agrave; x&acirc;y cấp 4 v&agrave; 1 nh&agrave; gỗ mini dễ thương , m&aacute;t mẻ,....<br />\r\n<br />\r\n<strong>Ngang&nbsp;</strong>14m, nở hậu chữ L gần 50 m, d&agrave;i 78,4m,&nbsp;<br />\r\n<br />\r\nVườn c&oacute; sẵn c&acirc;y ăn tr&aacute;i: Xo&agrave;i, m&iacute;t, c&oacute;c, ổi, sơ ri, ....thuận tiện nghỉ dưỡng v&agrave;o cuối tuần hoặc x&acirc;y biệt thự vườn sinh th&aacute;i trong l&ograve;ng S&agrave;i G&ograve;n.<br />\r\n<br />\r\nThuận tiện đi lại, xe bu&yacute;t từ Bến Th&agrave;nh, Chợ Lớn l&agrave; đến nh&agrave;.<br />\r\n<br />\r\nĐịa chỉ đất b&aacute;n: 21 Đường số 6 (đường mới: Nguyễn Thị Se) , Ấp B&agrave;u Sim, x&atilde; T&acirc;n Th&ocirc;ng Hội, Củ Chi, Tp.HCM , xem bản đồ để biết vị tr&iacute;)<br />\r\nGi&aacute; b&aacute;n : 5.900.000đ/ 1m2<br />\r\nSổ hồng , ch&iacute;nh chủ.<br />\r\n<br />\r\n<strong>Li&ecirc;n hệ: 0903 987 935 - 0939 246 247 - Linh</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>Xem th&ocirc;ng tin quy hoạch:<a href=\"https://filedn.com/lbXpaNDRJVmVqMmzNM0Blmp/images/giaydat_lon/mienglon.png\">https://filedn.com/lbXpaNDRJVmVqMmzNM0Blmp/images/giaydat_lon/mienglon.png</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '0908299829', '59000000', 6, 1, 1, '2019-09-09 23:57:33', '2019-09-09 23:57:33'),
(10, 'BÁN ĐẤT LIÊN NGHĨA- ĐỨC TRỌNG-LĐ. DT :369m2.', 'dat2.jpg', '<p>B&Aacute;N ĐẤT TT LI&Ecirc;N NGHĨA- ĐỨC TRỌNG-LĐ. DT :369m2.<br />\r\n<br />\r\n-B&aacute;n đất gần nh&agrave; hang T&acirc;n Việt Cường- Li&ecirc;n Nghĩa- Đức Trọng-LĐ.<br />\r\n-DT: 369m2 : ngang 10 : s&acirc;u 37m , hướng Đ&ocirc;ng, đường 4m, c&oacute; 200m2 thổ cư<br />\r\n-Đất đẹp, c&aacute;ch s&acirc;n bay 1.5km , gần trường, gần chợ, khu d&acirc;n tr&iacute; cao, tiện &iacute;ch đầy đủ&hellip;.<br />\r\n-G&iacute;a: Thỏa Thuận<br />\r\n-LH: 0965.165.023</p>', '0865732432', '2200000000', 5, 1, 1, '2019-09-10 00:00:19', '2019-09-10 00:00:19'),
(11, 'Bán lại Vertu quest mới 99% đẹp hoàn hảo', 'phone1.jpg', '<p>B&aacute;n lại Vertu quest mới 99% thương hiệu đẳng cấp<br />\r\nChiếc n&agrave;y em trực tiếp lột seal ra x&agrave;i hiện trạng mới cứng kh&ocirc;ng t&igrave; vết, nguy&ecirc;n bản từng con ốc c&ograve;n&nbsp;<br />\r\nchưa mở , LIFE TIME đ&atilde; d&ugrave;ng rất &iacute;t..Gồm m&aacute;y,&nbsp;xạc , t&uacute;i nhung đựng m&aacute;y, gi&aacute; em giao lưu 25 triệu,&nbsp;<br />\r\nB&aacute;c n&agrave;o c&oacute; nhu cầu li&ecirc;n hệ em... 0942.063.063 hoặc (Zalo) ai đ&atilde; sử dụng hoặc đ&atilde; nghe qua&nbsp;<br />\r\nthương hiệu n&agrave;y th&igrave; kh&ocirc;ng cần n&oacute;i nhiều m&aacute;y si&ecirc;u chất like new. đến xem trực tiếp sẽ biết m&aacute;y tốt&nbsp;<br />\r\nnhư thế n&agrave;o... D&ograve;ng n&agrave;y đ&atilde; ngưng sản xuất v&agrave; rất hiếm tr&ecirc;n thị trường&nbsp;<br />\r\n____________________________________<br />\r\nĐ&ocirc;i Khi Phải Thay Đổi Để Thấy Được Sự Kh&aacute;c Biệt&nbsp;<br />\r\nH&atilde;y Lu&ocirc;n Cố Gắng...Để Thỏa M&atilde;n Những Ước Mơ<br />\r\n_________---__________---__________---_________</p>', '0942063063', '25000000', 6, 4, 1, '2019-09-10 00:01:56', '2019-09-10 00:01:56'),
(12, 'Đặc điểm nổi bật iphone 6 s plus 64gb', 'phone2.jpg', '<p>iPhone 6 S Plus 64GB gi&aacute; chỉ 5.490.000đ<br />\r\nSản phẩm đ&atilde; qua sử dụng chưa qua sữa chữa<br />\r\nSản phẩm được bảo h&agrave;nh 6 th&aacute;ng v&agrave; bao test trong v&ograve;ng 30 ng&agrave;y đầu sử dụng<br />\r\nMua ngay tại https://tabletplaza.vn/iphone-6s-plus-64gb.94#&nbsp;hoặc http://bit.ly/32wK3pF<br />\r\niPhone 6s Plus 16 GB l&agrave; phi&ecirc;n bản n&acirc;ng cấp ho&agrave;n hảo từ iPhone 6 Plus với nhiều t&iacute;nh năng mới&nbsp;<br />\r\nhấp dẫn.<br />\r\nCamera được cải tiến<br />\r\niPhone 6s Plus 16 GB được n&acirc;ng cấp độ ph&acirc;n giải camera sau l&ecirc;n 12 MP (thay v&igrave; 8 MP như tr&ecirc;n&nbsp;<br />\r\niPhone 6 Plus), camera cho tốc độ lấy n&eacute;t v&agrave; chụp nhanh, thao t&aacute;c chạm để chụp nhẹ nh&agrave;ng.&nbsp;<br />\r\nChất lượng ảnh trong c&aacute;c điều kiện chụp kh&aacute;c nhau tốt.<br />\r\n<br />\r\nCamera trước với độ ph&acirc;n giải 5 MP cho h&igrave;nh ảnh với độ chi tiết r&otilde; n&eacute;t, đặc biệt m&aacute;y c&ograve;n c&oacute; t&iacute;nh&nbsp;<br />\r\nnăng Retina Flash, sẽ gi&uacute;p m&agrave;n h&igrave;nh s&aacute;ng l&ecirc;n như đ&egrave;n Flash để bức ảnh khi bạn chụp trong trời&nbsp;<br />\r\ntối được tốt hơn.<br />\r\n<br />\r\nTh&iacute;ch th&uacute; hơn với m&agrave;n h&igrave;nh rộng<br />\r\nM&agrave;n h&igrave;nh lớn c&ugrave;ng m&agrave;u sắc tươi tắn, độ n&eacute;t cao sẽ mang đến nhiều th&iacute;ch th&uacute; khi lướt web, xem&nbsp;<br />\r\nphim hay l&agrave;m việc<br />\r\n<br />\r\n<br />\r\n<br />\r\nCảm ứng 3D Touch độc đ&aacute;o<br />\r\n3D Touch l&agrave; t&iacute;nh năng ho&agrave;n to&agrave;n mới tr&ecirc;n iPhone 6s Plus 16 GB, cho ph&eacute;p người d&ugrave;ng xem trước&nbsp;<br />\r\nđược c&aacute;c t&ugrave;y chọn nhanh dựa v&agrave;o lực nhấn mạnh hay nhẹ m&agrave; kh&ocirc;ng cần phải nhấp v&agrave;o ứng&nbsp;<br />\r\ndụng.<br />\r\n<br />\r\nĐể sử dụng, bạn chỉ cần nhấn v&agrave;o m&agrave;n h&igrave;nh hoặc ứng dụng 1 lực mạnh đến khi m&aacute;y rung nhẹ l&agrave;&nbsp;<br />\r\nc&oacute; thể xem được.<br />\r\n<br />\r\n<br />\r\n<br />\r\nĐ&aacute;ng tiếc t&iacute;nh năng 3D Touch n&agrave;y chỉ mới được &aacute;p dụng tr&ecirc;n c&aacute;c ứng dụng của Apple như: danh&nbsp;<br />\r\nbạ, camera, mail, m&aacute;y ảnh ...&nbsp;<br />\r\n<br />\r\nBạn c&oacute; thể t&igrave;m hiểu th&ecirc;m t&iacute;nh năng 3D Touch tại đ&acirc;y.<br />\r\n<br />\r\nSức mạnh của bộ vi xử l&yacute; A9 mới nhất<br />\r\niPhone 6s Plus 16 GB sử dụng vi xử l&yacute; A9 tốc độ 1.8 GHz (iPhone 6 Plus chỉ với 1.4 GHz), gi&uacute;p&nbsp;<br />\r\nm&aacute;y chạy c&ugrave;ng l&uacute;c nhiều ứng dụng mượt m&agrave;. Hiện tại, bạn c&oacute; thể n&acirc;ng cấp l&ecirc;n IOS 11 mới nhất&nbsp;<br />\r\nnhư tr&ecirc;n iPhone X.<br />\r\n<br />\r\n<br />\r\n<br />\r\nVi&ecirc;n pin chỉ c&oacute; dung lượng 2750 mAh kh&aacute; thấp, tuy nhi&ecirc;n bạn vẫn c&oacute; thể an t&acirc;m sử dụng m&aacute;y&nbsp;<br />\r\ntrong một ng&agrave;y.<br />\r\n<br />\r\nMột chiếc điện thoại vừa thể hiện đẳng cấp của bạn vừa mang lại những n&acirc;ng cấp tốt hơn như&nbsp;<br />\r\ncamera, hiệu năng hoạt động mạnh mẽ hơn, t&iacute;nh năng 3D Touch độc đ&aacute;o, tất cả sẽ l&agrave; trải nghiệm&nbsp;<br />\r\nmới mẻ cho bạn khi chọn mua iPhone 6s Plus 16 GB.</p>', '0933033966', '5490000', 4, 4, 1, '2019-09-10 00:04:57', '2019-09-10 00:04:57'),
(13, 'Các loại Pin sạc dự phòng GÍA RẺ.Giá 120K-250K', 'phone3.jpg', '<p>+++Pin sạc dự ph&ograve;ng Samsung 28.000mAh được&nbsp;<br />\r\nbọc giả da.<br />\r\n_Dung lượng:28.000mAh.<br />\r\n_Chất lượng nhựa dc bọc da nh&igrave;n rất đẹp bắt mắt<br />\r\n_Đồng hồ hiện thị % pin<br />\r\n_ Cổng USP: 3 cổng<br />\r\n_ C&oacute; đ&egrave;n pin&nbsp;<br />\r\n_Co đ&egrave;n&nbsp;Led thể hiện % pin.<br />\r\n==&gt; GI&Aacute;: 170.000Đ<br />\r\n===&bull;&bull;&bull;===<br />\r\n++Pin dư ph&ograve;ng ch&iacute;nh h&atilde;ng Vinatech 6.000mAh.GI&Aacute;&nbsp;<br />\r\n120K<br />\r\n_Dung lượng chuẩn: 6.000mAh.<br />\r\n_Nhỏ gọn trong b&agrave;n tay.<br />\r\n_Bằng nhựa cao cấp,thời trang.<br />\r\n_1 Cồng sạc,1 cổng usp.<br />\r\n===&bull;&bull;&bull;===<br />\r\n*** Pin dư ph&ograve;ng ch&iacute;nh h&atilde;ng Power Bank&nbsp;<br />\r\n(Washington) 6.000mAh.GI&Aacute; 135K<br />\r\n_Dung lượng chuẩn: 6.000mAh.<br />\r\n_Nhỏ gọn trong b&agrave;n tay.<br />\r\n_Bằng nhựa cao cấp,thời trang.<br />\r\n_1 Cồng sạc,1 cổng usp.<br />\r\n===&bull;&bull;&bull;===<br />\r\n++Pin dư ph&ograve;ng ch&iacute;nh h&atilde;ng Wirelessky K&Egrave;M C&Aacute;P&nbsp;<br />\r\nIPHONE/SAMSUNG&nbsp;<br />\r\n4.000mAh.GI&Aacute; 150K<br />\r\n_Dung lượng chuẩn: 4.000mAh.<br />\r\n_Nhỏ gọn trong b&agrave;n tay.<br />\r\n_Cẳm rất &ecirc;m tay do Bằng nhựa nhung,chất liệu cao&nbsp;<br />\r\ncấp,thời trang.<br />\r\n_1 Cồng sạc,1 d&acirc;y sạc của iphone/Samsung.<br />\r\n===&bull;&bull;&bull;===<br />\r\n*** Pin dư ph&ograve;ng ch&iacute;nh h&atilde;ng Borofone&nbsp;<br />\r\n10.000mAh.GI&Aacute; 250K<br />\r\n_Dung lượng chuẩn: 10.000mAh.<br />\r\n_Nhỏ gọn trong b&agrave;n tay.<br />\r\n_Bằng nhựa cao cấp,thời trang.<br />\r\n_C&oacute; 1 Cồng sạc,2 cổng sạc usp.<br />\r\n===&bull;&bull;&bull;===<br />\r\n*** Pin dư ph&ograve;ng ch&iacute;nh h&atilde;ng GENAI 10.000mAh.GI&Aacute;&nbsp;<br />\r\n290K<br />\r\n_Dung lượng chuẩn: 10.000mAh.<br />\r\n_Nhỏ gọn trong b&agrave;n tay.<br />\r\n_Bằng nhựa cao cấp,thời trang.<br />\r\n_C&oacute; đ&egrave;n pin<br />\r\n_C&oacute; đ&egrave;n Led thể hiện % pin<br />\r\n_C&oacute; 1 Cồng sạc,2 cổng sạc usp.<br />\r\n===&bull;&bull;&bull;===<br />\r\n*** Pin dư ph&ograve;ng ch&iacute;nh h&atilde;ng GENAI SI&Ecirc;U MỎNG&nbsp;<br />\r\n10.000mAh.GI&Aacute; 285K<br />\r\n_Dung lượng chuẩn: 10.000mAh.<br />\r\n_Mẫu m&atilde; đẹp,thời trang<br />\r\n_Bằng nhựa cao cấp,mặt đế bằng nhựa nhung cầm&nbsp;<br />\r\n&ecirc;m tay v&agrave; hạn chế&nbsp;<br />\r\ntrầy/giảm sốc.<br />\r\n_C&oacute; 1 Cồng sạc,1 cổng sạc usp.<br />\r\n===&bull;&bull;&bull;===<br />\r\n*** Pin dư ph&ograve;ng ch&iacute;nh h&atilde;ng MORUI CỰC ĐẸP&nbsp;<br />\r\n10.000mAh.GI&Aacute; 290K<br />\r\n_Dung lượng chuẩn: 10.000mAh.<br />\r\n_Nhỏ gọn.<br />\r\n_Bằng kim loại sang trọng,thời trang.<br />\r\n_C&oacute; 1 Cồng sạc,2 cổng sạc usp.<br />\r\n===&bull;&bull;&bull;======&bull;&bull;&bull;===<br />\r\n*** Bảo h&agrave;nh 1 th&aacute;ng:1 đổi 1 lỗi nh&agrave; SX.<br />\r\n++ Hotline: 0938.111.802<br />\r\n___ Ship To&agrave;n Quốc 64 Tỉnh th&agrave;nh bằng Viettel ___<br />\r\n**** D/C nh&agrave;: 103 Đường Hồ Học L&atilde;m.Phường An&nbsp;<br />\r\nLạc.Quận B&igrave;nh T&acirc;n (Khu&nbsp;<br />\r\nd&acirc;n cư Ehome 3&nbsp;<br />\r\nT&acirc;y SG).Chạy thẳng v&agrave;o mh ở A11.&nbsp;<br />\r\n_C&aacute;ch ng&atilde; 4 Đại lộ V&otilde; Văn Kiệt-Hồ Học L&atilde;m 400m&nbsp;<br />\r\n(Hướng h&atilde;ng xe hơi&nbsp;<br />\r\nMitsubishi).</p>', '0908989205', '120000', 4, 4, 1, '2019-09-10 00:06:39', '2019-09-10 01:29:46'),
(14, 'Laptop Dell Vostro V5470, I5 4200U 8G SSD256 Vga 2G Siêu', 'lap1.jpg', '<p>&nbsp;</p>\r\n\r\n<p>Laptop Cũ Gi&aacute; Rẻ Uy T&iacute;n hơn nhiều năm uy t&iacute;n tại tphcm<br />\r\nUy t&iacute;n &ndash; Chất lượng &ndash; Gi&aacute; rẻ<br />\r\nĐ/c: 390/15 Phạm Văn Bạch P15 Q.T&acirc;n B&igrave;nh TPHCM<br />\r\nTop 1 Shop Uy t&iacute;n do Google v&agrave; Facebook đ&aacute;nh gi&aacute; 5 sao<br />\r\nSDT : 0932.75.44.82 - 0353.724.017&nbsp;<br />\r\nZalo,Viber : 0353.724.017<br />\r\nWed : Laptopcugiareuytin.com<br />\r\nCam Kết&nbsp;<br />\r\n- Chỉ b&aacute;n h&agrave;ng chất nguy&ecirc;n zin 100%, Ngoại h&igrave;nh đẹp 96~99%<br />\r\n- Phụ kiện gồm : M&aacute;y + Sạc + C&aacute;p + Balo thời trang cao cấp + Chuột New<br />\r\n- Bao test bao x&agrave;i bao thợ thầy qua xem m&aacute;y<br />\r\n- Bảo h&agrave;nh chu đ&aacute;o 1 =&gt; 12 th&aacute;ng&nbsp;<br />\r\n- Tất cả sản phẫm đều l&agrave; h&igrave;nh thật của Shop<br />\r\n- Hỏ trợ trả g&oacute;p bẳng thẻ t&iacute;n dụng, visa mastercad, nhận quẹt thẻ<br />\r\n<br />\r\nLaptop Dell Vostro V5470, I5 4200U 8G SSD256 Vga 2G Si&ecirc;u mỏng Đẹp zin 100% Gi&aacute; rẻ<br />\r\n<br />\r\nD&ograve;ng laptop Vostro Ultrabook si&ecirc;u bền, vỏ nh&ocirc;m. si&ecirc;u mỏng, d&ograve;ng cao cấp<br />\r\n<br />\r\nVga rời chuy&ecirc;n game đồ hoạ.&nbsp;<br />\r\n<br />\r\n<br />\r\nH&agrave;ng ch&iacute;nh h&atilde;ng<br />\r\n<br />\r\n+ OS windown 10<br />\r\n+ cpu i5 4200U tốc độ 4X1.6G, turbo l&ecirc;n 2.6G, (4cpus), chạy cực mạnh.<br />\r\n+ Ram 8G<br />\r\n+ SSD256G truy xuất nhanh gấp 10 lần ổ cứng thường<br />\r\n+ lcd 14.0in led, m&agrave;u chuẩn, sắc n&eacute;t<br />\r\n+ Vga c&oacute; 2 vga<br />\r\n=&gt; Vga intel HD 4400 2G chạy mạnh m&aacute;t<br />\r\n=&gt; Vga rời Nvidia 740M = 2G up to 4G chuy&ecirc;n game đồ họa<br />\r\n+ HDMI, USB 3,0, Thẻ SD, Jack 3.5, Webcam<br />\r\n+ Pin good<br />\r\n+ ph&iacute;m chiclet.Ph&iacute;m chuẫn macbook g&otilde; rất th&iacute;ch<br />\r\n<br />\r\nGi&aacute; : 8tr<br />\r\nBảo h&agrave;nh phần cứng 6 th&aacute;ng - Phần mềm 1 năm - 1 đổi 1 30 days<br />\r\n<br />\r\nLAPTOP CŨ GI&Aacute; RẺ- UY T&Iacute;N - CHẤT LƯỢNG - GI&Aacute; RẺ.<br />\r\n<br />\r\nhttp://Laptopcugiareuytin.com<br />\r\n<br />\r\nĐT: 0932.75.44.82 - 0353.724.017<br />\r\n<br />\r\nFace. Viber. Zalo : 0353.724.017<br />\r\n<br />\r\nĐC: 390/15 Phạm Văn Bạch P15 T&acirc;n B&igrave;nh<br />\r\n<br />\r\n&gt;</p>', '01653724017', '8000000', 3, 5, 3, '2019-09-10 00:10:18', '2019-09-10 00:10:18'),
(15, 'kìm mạng đa năng ht-022 tích hợp bấm+test', 'pk1.jpg', '<p>K&Igrave;M MẠNG ĐA NĂNG HT-022 T&Iacute;CH HỢP BẤM+TEST RJ11-RJ12-RJ45 TOOL TEST<br />\r\nM&atilde; sản phẩm : HT-022<br />\r\n<br />\r\nPh&acirc;n phối bởi: AnNamtelecom_network!<br />\r\nWebsite: http://annamtelecom.com/<br />\r\nĐịa chỉ: 363 Nguyễn Khang &ndash; Cầu Giấy &ndash; H&agrave; Nội<br />\r\nEmail:&nbsp;363annam@gmail.com<br />\r\nkdpp: 039.396.2758 &ndash; hotline: 094.118.6696<br />\r\n====================================<br />\r\nK&Igrave;M MẠNG ĐA NĂNG HT-022<br />\r\n<br />\r\nAnnamtelecom ph&acirc;n phối K&igrave;m HT-022, Vừa bấm vừa test 2 trong 1, với số lượng lớn lu&ocirc;n sẵn&nbsp;<br />\r\nkho cho kh&aacute;ch sỉ v&agrave; lẻ kh&ocirc;ng lo kh&ocirc;ng c&oacute; h&agrave;ng tại annam!<br />\r\nH&atilde;ng sản xuất: halong<br />\r\nC&aacute;c t&iacute;nh năng của k&igrave;m v&agrave; test HT-022&nbsp;<br />\r\n- Được x&acirc;y dựng trong sharp v&agrave; d&agrave;y cutter cho cao ch&iacute;nh x&aacute;c cắt.<br />\r\n- Đầu d&ograve; c&aacute;p c&oacute; thể th&aacute;o lắp, kiểm tra cả c&aacute;p UTP v&agrave; STP<br />\r\n<br />\r\n- Kiểm tra m&ocirc; h&igrave;nh hai chức năng: kiểm tra đơn giản v&agrave; li&ecirc;n tục<br />\r\n<br />\r\n- Tự động tiết kiệm điện / chỉ thị nguồn năng lượng thấp<br />\r\n<br />\r\n- Được x&acirc;y dựng trong LED t&iacute;n hiệu chỉ thị từ thấp đến cao.<br />\r\n<br />\r\n- Dấu hiệu pin yếu v&agrave; tự động chức năng tiết kiệm điện.<br />\r\n<br />\r\n- D&acirc;y crimping d&acirc;y đơn v&agrave; nhiều d&acirc;y, t&aacute;ch v&agrave; cắt bỏ t&iacute;ch hợp<br />\r\n<br />\r\n- M&oacute;ng được chụp: 8P / 8C (RJ45), 6P / 6C (RJ12), 6P / 4C (RJ11)<br />\r\n<br />\r\n- D&acirc;y mạng kiểm tra chức năng để đ&aacute;nh gi&aacute; li&ecirc;n tục/ngắn mạch/mở mạch/lỗi hệ thống d&acirc;y điện.<br />\r\n<br />\r\n- Thiết kế gồ ghề v&agrave; chống gỉ lớp phủ, độ bền cao v&agrave; phục vụ l&acirc;u d&agrave;i cuộc sống.<br />\r\n<br />\r\n- C&aacute;c d&acirc;y thử nghiệm l&agrave; c&oacute; thể th&aacute;o rời để đ&aacute;p ứng nhu cầu kh&aacute;c nhau.<br />\r\n<br />\r\n- Dụng cụ Crimping v&agrave; một bộ kiểm tra c&aacute;p<br />\r\n<br />\r\n- Pin cần: DC 4.5 V (LR-44 x 3pcs, chưa bao gồm)<br />\r\n<br />\r\n- Đi k&egrave;m với một t&uacute;i bảo vệ, dễ d&agrave;ng để lưu trữ.<br />\r\n<br />\r\nTh&ocirc;ng số kỹ thuật k&igrave;m HT-022<br />\r\n<br />\r\n- M&agrave;u sắc: Đen<br />\r\n- Chất liệu: Th&eacute;p + ABS<br />\r\n-Tương th&iacute;ch Kết Nối: 4 p, 6 p, 8 p<br />\r\n-Tương th&iacute;ch D&acirc;y: RJ11, RJ12, RJ45<br />\r\n- Nguồn Cung Cấp: 3 * DC LR-44 Pin<br />\r\n- Mục K&iacute;ch Thước: Approx. 19.7*6.6*2.6 cm/7.8*2.6 * 1in<br />\r\n- Mục Trọng Lượng: Khoảng. 415 gam/14.6 oz<br />\r\n- G&oacute;i K&iacute;ch Thước: Approx. 28.5*14.9*5.8 cm/11.2*5.9 * 2.3in<br />\r\n- G&oacute;i Trọng Lượng: Xấp Xỉ. 593 gam/20.9 oz</p>', '01693962758', '1300000', 4, 5, 3, '2019-09-10 00:11:37', '2019-09-10 00:11:37'),
(16, 'Máy test cáp đa năng NF-8601 POE chính hãng NoYaFa', 'pk2.jpg', '<p>M&aacute;y test c&aacute;p đa năng NF-8601 POE<br />\r\nM&atilde; sản phẩm : NF-8601<br />\r\nGi&aacute;: 3,300,000 VNĐ<br />\r\n<br />\r\nChi tiết sản phẩm:<br />\r\nM&aacute;y đo độ d&agrave;i c&aacute;p NF-8601 được ph&ecirc; chuẩn CE v&agrave; đi k&egrave;m với chức năng &aacute;nh xạ kiểm tra t&iacute;nh&nbsp;<br />\r\nli&ecirc;n tục của&nbsp;c&aacute;p, chẳng hạn như nếu c&aacute;p tốt, mở, ngắn, ch&eacute;o, kết nối ngược, v.v ...<br />\r\n<br />\r\nĐ&egrave;n flash cổng gi&uacute;p định vị c&aacute;p mạng mục ti&ecirc;u dễ d&agrave;ng hơn trong khi kết nối với bộ định tuyến /&nbsp;<br />\r\nchuyển mạch. C&aacute;p qu&eacute;t d&ograve; t&igrave;m c&aacute;p RJ45 / RJ11 v&agrave; c&aacute;p đồng trục v&agrave; t&iacute;n hiệu mạng kiểm tra PING&nbsp;<br />\r\nv&agrave; nếu c&aacute;p mạng c&oacute; được kết nối hay kh&ocirc;ng. Một chức năng kh&aacute;c của bộ kiểm tra n&agrave;y l&agrave; để x&aacute;c&nbsp;<br />\r\nminh chiều d&agrave;i c&aacute;p, khoảng c&aacute;ch mạch mở v&agrave; gh&eacute;p nối, nhiễu xuy&ecirc;n &acirc;m trong khi kiểm tra PoE&nbsp;<br />\r\nnếu c&aacute;p mạng được kết nối với bộ chuyển đổi PoE hoặc bộ định tuyến, v&agrave; sau đ&oacute; ph&aacute;t hiện sức&nbsp;<br />\r\nmạnh của mọi c&aacute;p. C&agrave;i đặt: thiết lập đ&egrave;n nền / thời gian đ&egrave;n nền / thời gian tự động tắt / m&agrave;u chủ&nbsp;<br />\r\nđề / th&ocirc;ng tin hệ thống / xuất dữ liệu, e<br />\r\n<br />\r\nL&yacute; tưởng cho việc lắp đặt hệ thống điện &aacute;p thấp v&agrave; c&aacute;c mạch giao tiếp v&agrave; c&aacute;c kỹ thuật bảo tr&igrave;&nbsp;<br />\r\nmạch điện to&agrave;n diện.<br />\r\n<br />\r\n<br />\r\nT&iacute;nh năng, đặc điểm:<br />\r\n<br />\r\nKiểm tra PoE / PING để x&aacute;c định c&aacute;c ch&acirc;n n&agrave;o đang cấp nguồn v&agrave; ph&aacute;t hiện c&oacute; bao nhi&ecirc;u g&oacute;i&nbsp;<br />\r\ndữ liệu kiểm tra h&agrave;m điện &aacute;p v&agrave; PING v&agrave; ph&aacute;t hiện tổn thất v&agrave; điện &aacute;p của n&oacute; (90-1000V, bao&nbsp;<br />\r\ngồm trong bộ thu).<br />\r\nTheo d&otilde;i c&aacute;p được nhắm mục ti&ecirc;u trong số rất nhiều c&aacute;p kh&ocirc;ng x&aacute;c định. Chức năng cổng&nbsp;<br />\r\nflash gi&uacute;p theo d&otilde;i c&aacute;p LAN kết nối với bộ chuyển đổi hoặc bộ định tuyến trực quan, kh&ocirc;ng cần&nbsp;<br />\r\nthu<br />\r\nC&oacute; khả năng qu&eacute;t c&aacute;p tr&ecirc;n c&ocirc;ng tắc PoE hoặc kiểm tra mở, ngắn, kết nối ch&eacute;o, đảo ngược v&agrave;&nbsp;<br />\r\nđịnh vị d&acirc;y bị hỏng với phương ph&aacute;p M-S v&agrave; M-R m&agrave; kh&ocirc;ng l&agrave;m hỏng thiết bị<br />\r\nX&aacute;c định vị tr&iacute; lỗi cho c&aacute;p RJ11 / RJ45 / BNC. Đo chiều d&agrave;i c&aacute;p ch&iacute;nh x&aacute;c. Chức năng ph&aacute;t&nbsp;<br />\r\nhiện điện &aacute;p<br />\r\nChức năng bộ nhớ v&agrave; lưu trữ: xuất hoặc tải l&ecirc;n dữ liệu từ PC (160 bộ, định dạng txt)<br />\r\nChức năng ch&iacute;nh của m&aacute;y test mạng đa năng NF-8601:&nbsp;<br />\r\n1. Kiểm tra PoE / PING.<br />\r\n<br />\r\n2. Theo d&otilde;i c&aacute;p đ&iacute;ch trong rất nhiều loại c&aacute;p kh&ocirc;ng r&otilde;;&nbsp;<br />\r\n<br />\r\n3. Cảng chức năng đ&egrave;n flash gi&uacute;p t đua c&aacute;p lan kết nối với swticher hoặc router trực quan, kh&ocirc;ng&nbsp;<br />\r\ncần nhận.&nbsp;<br />\r\n<br />\r\n4. C&oacute; khả năng qu&eacute;t c&aacute;p tr&ecirc;n PoE chuyển đổi m&agrave; kh&ocirc;ng l&agrave;m hỏng thiết bị.&nbsp;<br />\r\n<br />\r\n5. M&aacute;y test mạng đa năng NF-8601 x&aacute;c định vị tr&iacute; lỗi cho c&aacute;p RJ11 / RJ45 / BNC;&nbsp;<br />\r\n<br />\r\n6. đo chiều d&agrave;i c&aacute;p ch&iacute;nh x&aacute;c&nbsp;<br />\r\n<br />\r\n7. Chức năng ph&aacute;t hiện điện c&aacute;p.&nbsp;<br />\r\n<br />\r\n8. Bộ nhớ v&agrave; lưu trữ chức năng, xuất khẩu hoặc tải l&ecirc;n dữ liệu từ m&aacute;y t&iacute;nh.<br />\r\n<br />\r\n9. Pin Lithium v&agrave; m&agrave;n h&igrave;nh m&agrave;u.<br />\r\nTh&ocirc;ng số kỹ thuật:<br />\r\nM&aacute;y test c&aacute;p đa năng NF-8601 POE<br />\r\nEmitter:<br />\r\nM&agrave;n h&igrave;nh m&agrave;u LCD 2,8 inch<br />\r\nLoại c&aacute;p thử nghiệm: STP / UTP 5E, c&aacute;p mạng 6E, c&aacute;p điện thoại, c&aacute;p đồng trục v&agrave; d&acirc;y kim&nbsp;<br />\r\nloại th&ocirc;ng thường được kết nối với kẹp c&aacute; sấu<br />\r\nTối đa khoảng c&aacute;ch của wiremap: 2000m<br />\r\nTối đa khoảng c&aacute;ch truy t&igrave;m c&aacute;p: 1000m<br />\r\nKhoảng c&aacute;ch tối đa của đo chiều d&agrave;i c&aacute;p: 2000m<br />\r\nMin khoảng c&aacute;ch hiệu chuẩn: 10m<br />\r\nĐộ ch&iacute;nh x&aacute;c: 98% (sau khi hiệu chuẩn)<br />\r\nĐầu nối tương th&iacute;ch: RJ11, RJ45, BNC, PING / PoE<br />\r\nChỉ dẫn bản đồ c&aacute;p: LCD (Pin # 1 - Pin # 8 &amp; G)<br />\r\nNguồn cung cấp: 3.7V lithium c&oacute; thể sạc lại pin 1800mAh (c&agrave;i đặt)<br />\r\nNhiệt độ / độ ẩm l&agrave;m việc: 10 &deg; C-60 &deg; C / 0% RH-70% RH<br />\r\nK&iacute;ch thước: 173 x 92 x 34mm<br />\r\n<br />\r\nNguồn nhận<br />\r\nC&aacute;p săn: C&aacute;p RJ45, RJ11, BNC<br />\r\nC&aacute;c loại c&aacute;p: &ge;2 l&otilde;i<br />\r\nNguồn điện: 3.7V Li-pin c&oacute; thể sạc lại 1800mAh<br />\r\n<br />\r\nĐịnh danh từ xa<br />\r\nĐầu nối tương th&iacute;ch: RJ11, RJ45, BNC<br />\r\n<br />\r\n<br />\r\n<br />\r\nĐặt bao gồm:<br />\r\n<br />\r\n1 x Emitter<br />\r\n1 x nhận<br />\r\n1 x Định danh từ xa<br />\r\n1 x bộ chuyển đổi c&aacute;p RJ11<br />\r\nBộ điều hợp c&aacute;p 1 x RJ45<br />\r\n1 x clip c&aacute; sấu<br />\r\nThẻ TF 1 x 1GB<br />\r\n1 x hướng dẫn tiếng Anh<br />\r\n1 x c&aacute;p USB<br />\r\n1 x bộ chuyển đổi điện<br />\r\n1 x Carry pouch<br />\r\n1 x hộp m&agrave;u<br />\r\n==================================<br />\r\nHướng dẫn sử dụng m&aacute;y test NF-8601 qua video<br />\r\nLink: https://www.youtube.com/watch?v=8clxsYkYG3s</p>\r\n\r\n<p>&nbsp;</p>', '01693962758', '3300000', 1, 5, 3, '2019-09-10 00:12:43', '2019-09-10 01:31:20'),
(17, 'Bán Nhà Quận 10, 50 m2, 4 tầng, 5 PN, xe hơi đậu cửa, 5.6 Tỷ', 'nha2.jpg', '<p>- Diện t&iacute;ch : 4mx12.5m, C&aacute;ch mặt tiền chưa đến 50m, c&aacute;ch HXH chưa đến 20m, hẻm trước nh&agrave; 7m,&nbsp;<br />\r\nsạch sẽ kh&ocirc;ng bu&ocirc;n b&aacute;n lấn chiếm. Th&ocirc;ng sang đường H&ograve;a Hảo, Đ&agrave;o Duy Từ.<br />\r\n- Nh&agrave; l&ocirc; g&oacute;c nhưng kh&ocirc;ng mất một ch&uacute;t lộ giới n&agrave;o hết, DT c&ocirc;ng nhận đủ, khu vực được ph&eacute;p x&acirc;y 5&nbsp;<br />\r\ntầng. Sau nh&agrave; l&agrave; chung cư to đ&ugrave;ng. Đối diện hẻm 54 hiện đang l&agrave; b&atilde;i đất trống đang c&oacute; dự &aacute;n x&acirc;y&nbsp;<br />\r\ndựng trung t&acirc;m thương mại s&aacute;t S&acirc;n vận động Thống Nhất.<br />\r\n-Li&ecirc;n hệ Mr Quang xem nh&agrave; v&agrave; gặp ngay chủ.</p>', '0902609644', '5600000000', 3, 1, 3, '2019-09-10 00:18:46', '2019-09-10 00:18:46'),
(18, 'Cần tuyển Thợ Mộc có kinh nghiệm,tăng ca đc,đi công trình đc', 'job1.jpg', '<p>C&ocirc;ng Ty Nội Thất Gỗ Thiện H&ograve;a cần tuyển 2 Thợ Mộc:<br />\r\n- L&agrave;m việc từ 07g30-17g00, ngo&agrave;i giờ t&iacute;nh tăng ca.&nbsp;<br />\r\n- Lương: 12 triệu - 18 triệu.<br />\r\nY&ecirc;u cầu:<br />\r\n- C&oacute; kinh nghiệm tr&ecirc;n 1 năm l&agrave;m v&aacute;n c&ocirc;ng nghiệp.<br />\r\n- Biết xem bản vẽ l&agrave;m (bắt buộc)<br />\r\n- Tăng ca được.<br />\r\n- Đi c&ocirc;ng tr&igrave;nh được (c&oacute; phụ cấp)<br />\r\nL&agrave;m việc tại: 114/21/10/5V Vườn L&agrave;i, Phường An Ph&uacute; Đ&ocirc;ng, Quận 12.<br />\r\nLi&ecirc;n hệ: 028.2253.2574 (gọi giờ h&agrave;nh ch&iacute;nh)</p>', '0703671982', '15000000', 2, 2, 3, '2019-09-10 00:21:04', '2019-09-10 00:21:04'),
(19, 'iPhone 6S Plus màu xám 64GB Likenew có trả góp', 'phone4.jpg', '<p>Gi&aacute; b&aacute;n: 5.580.000đ<br />\r\nKh&ocirc;ng phải ngẫu nhi&ecirc;n m&agrave; chiếc iPhone 6s/6s Plus được t&igrave;m mua nhiều đến thế:<br />\r\n+ th&acirc;n m&aacute;y được cấu th&agrave;nh từ nh&ocirc;m 700 series, cao cấp v&agrave; cứng c&aacute;p<br />\r\n+ dhip xử l&yacute; Apple A9 mang đến n&acirc;ng cấp 70% về hiệu năng xử l&yacute; v&agrave; 90% hiệu năng đồ họa so&nbsp;<br />\r\nvới chip Apple A8<br />\r\n+ camera iSight 12MP đem đến những tấm h&igrave;nh c&oacute; chất lượng tốt hơn trước<br />\r\n+ cho tốc độ kết LTE v&agrave; Wi-Fi được cải thiện r&otilde; rệt<br />\r\nvv v&agrave; c&ograve;n nhiều t&iacute;nh năng si&ecirc;u hot kh&aacute;c<br />\r\nMua m&aacute;y ở Huca c&oacute; ship COD to&agrave;n quốc, c&oacute; hỗ trợ trả g&oacute;p nhanh, gọn v&agrave; lẹ. Li&ecirc;n hệ:<br />\r\n&raquo; Địa chỉ : 564 L&ecirc; Hồng Phong, Phường 10, Quận 10, TPHCM<br />\r\n&raquo; Điện thoại : 09.6485.6485 &amp; 0888.862.862<br />\r\n&raquo; Website: huca.vn</p>', '0907118302', '5580000', 1, 4, 3, '2019-09-10 00:22:20', '2019-09-10 00:22:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nhà cửa - đất đai', '2019-09-09 23:31:51', '2019-09-09 23:31:51'),
(2, 'Việc làm', '2019-09-09 23:31:51', '2019-09-19 13:31:09'),
(3, 'Ô tô - Xe máy', '2019-09-09 23:31:51', '2019-09-09 23:31:51'),
(4, 'Điện thoại - phụ kiện', '2019-09-09 23:31:51', '2019-09-09 23:31:51'),
(5, 'Máy tính - Linh Kiện', '2019-09-09 23:31:51', '2019-09-09 23:31:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(146, '2014_10_12_100000_create_password_resets_table', 1),
(147, '2019_08_05_013217_create_users_table', 1),
(148, '2019_08_18_193158_create_categories_table', 1),
(149, '2019_08_18_193320_create_areas_table', 1),
(150, '2019_08_18_211017_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Phan Gia Khánh', 'Khanhphan900@gmail.com', '$2y$10$NsBM1YDjPtUvX82QuyTZWu9pcoMwHW.XU4x3jxP3Y8dtBwXE5HQia', '1', 'sbvbDDh9dTMDQX6C1koeQoEA6NDob9e7y5nOsCoPlx8wtiTenHzsY4KsnKDb', NULL, NULL),
(2, 'Ms Hương', 'Mshuong2000@gmail.com', '$2y$10$9pRWiGEfW7Ak02Tw/esZO.24owlSg5AtopJzcfs/VVULI85gaESmO', '3', 'VCVeRKa7vMJrNjVYlUIpemS8sVfq3PcdsY3iSfhev0oANVqQmDSm7MumsLTv', '2019-09-09 23:34:35', '2019-09-09 23:34:35'),
(3, 'test', 'test@gmail.com', '$2y$10$2B5ZDBbXE9kITKaPacfDu.XbQ1IOMnD8m9OLsl8Gs9KdOZSFLfu.e', '3', 'Zg5t21GvD926OLlUHi1HKlKVHQbaJbEgt1SoAii9ICFXXyEkA966Icz0WQuu', '2019-09-10 00:06:54', '2019-09-10 00:06:54');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_area_id_foreign` (`area_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
