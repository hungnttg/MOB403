-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 03, 2018 lúc 10:30 AM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhloaisanpham`) VALUES
(1, 'Điện Thoại', 'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-400x400.jpg'),
(2, 'Laptop', 'https://images-na.ssl-images-amazon.com/images/I/61aZwj3rIyL._SX425_.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`) VALUES
(1, 'iPhone XS Max 64GB', 29000000, 'https://cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/x/s/xs-1_9_4.png', 'Apple iPhone XS Max 64GB sở hữu màn hình lớn lên đến 6.5 inch nhưng kích thước vẫn rất gọn gàng (nhỏ hơn cả iPhone 8 Plus màn hình 5.5 inch) nhờ việc tối ưu hóa phần viền. Màn hình có độ phân giải 1242 x 2688 pixels đạt chuẩn Super Retina HD, mật độ điểm ảnh 458 ppi trên tấm nền OLED, mang lại những hình ảnh rất sắc nét và chính xác. Bên cạnh đó, máy được trang bị công nghệ hiển thị HDR10, Dolby Vision tần số quét được tăng lên 120 Hz ngang với iPad Pro.\r\n\r\n', 1),
(2, 'Samsung Galaxy Note 9', 22990000, 'https://cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/g/a/galaxy-note-9-1.jpg', 'Sử dụng chung con chip Exynos 9810 nhưng Galaxy Note 9 sẽ có RAM mặc định 6GB (thay vì chỉ có một số phiên bản). Mặt khác, bộ nhớ trong cũng khởi đầu từ 128GB và cao nhất lên đến 512GB, tức tương đương nhiều mẫu laptop, giúp người dùng thoải mái chơi nhiều game 3D và lưu trữ nhiều tài liệu công việc hoặc video phim, ca nhạc để giải trí.', 1),
(3, 'Laptop Asus VivoBook S15', 15990000, 'https://cdn.tgdd.vn/Products/Images/44/135668/asus-s510ua-i5-8250u-bq414t-dai-dien-450x300-600x600.jpg', 'Asus S15 S510UA i5 phiên bản máy tính nâng cấp hết sức giá trị với chip xử lý thế hệ thứ 8 mới nhất của Intel cho hiệu năng vượt trội, đáp ứng tốt cho bạn trong các nhu cầu làm việc, học tập, giải trí hằng ngày.', 2),
(4, 'Xiaomi Mi 8 Lite 64GB', 5850000, 'https://cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/x/i/xiaomi-mi-8-lite-6-26-inch-4gb-64gb-smartphone-gray-736292-.jpg', 'Mi 8 Lite có màn hình 6.26 inch, độ phân giải Full HD+, sử dụng tỷ lệ 19:9 với phần tai thỏ ở cạnh trên (nhưng kích thước nhỏ gọn hơn so với iPhone XR). Các phần viền ở 4 cạnh màn hình được làm rất mỏng, tạo nên không gian trải nghiệm rộng lớn với các chi tiết được thể hiện rõ nét cùng màu sắc trung thực.', 1),
(5, 'Huawei nova 3i ', 6490000, 'https://cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/n/o/nova-3i-purrple-back.png', 'Điện thoại Huawei nova 3i sở hữu màn hình tràn cạnh và phần “tai thỏ” tương tự Huawei nova 3e và iPhone X. Huawei nova 3i được hoàn thiện bởi mặt lưng kính sang trọng, kết hợp bộ khung kim loại chắc chắn, đường nét thiết kế đẹp mắt bo cong các cạnh tiếp nối liền mạch với mặt trước nên cầm ôm tay cho cảm giác cầm nắm rất thoải mái.\r\n\r\n', 1),
(6, 'OPPO F9 \r\n', 7690000, 'https://cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/f/9/f9-red-back_1.png', 'Với điện thoại OPPO F9 Chính hãng, nhà sản xuất này đã thiết kế lại điện thoại dòng F của mình với thiết kế đột phá hơn, cụ thể viền màn hình trên máy đã được làm mỏng mà theo OPPO gọi là \"màn hình giọt nước\". Máy sở hữu rãnh có hình giống giọt nước giúp người dùng tận dụng tốt hơn không gian hiển thị.\r\n\r\n', 1),
(7, 'Laptop Acer Aspire E5', 9990000, 'https://cdn.tgdd.vn/Products/Images/44/160296/acer-aspire-e5-476-i3-8130u-nxgwtsv002-ava-600x600.jpg', 'Acer Aspire E5 476 i3 8130U là phiên bản máy tính xách tay với cấu hình cao, sử dụng vi xử lý i3 8130U thế hệ thứ 8 cho xung nhịp lên đến 3.4 GHz, nhưng vẫn rất tiết kiệm pin do sử dụng kiến trúc chip mới từ intel. Laptop Acer với mức giá thành hợp lý cùng cấu hình cực kì mạnh mẽ, Aspire E5 476 có thể đáp ứng tốt cho người dùng phổ thông cần một chiếc máy laptop để học tập, giải trí.', 2),
(8, 'Laptop HP Pavilion x360', 11990000, 'https://cdn.tgdd.vn/Products/Images/44/111137/hp-pavilion-x360-ba063tu-450x300-600x600.jpg', 'Máy sử dụng core i3 thế hệ thứ 7 Kaby Lake giúp mang lại hiệu năng hoạt động ổn định và nhanh hơn so với nhiều dòng core i3 cùng mức giá hiện nay.\r\n\r\nRAM dạng mới DDR4 dung lượng 4 GB giúp giảm 20% điện năng tiêu thụ pin và nâng cao hiệu suất hoạt động.', 2),
(9, 'Laptop Acer Swift', 17290000, 'https://cdn.tgdd.vn/Products/Images/44/161558/acer-swift-sf314-54-51ql-nxgxzsv001-dai-dien-450x300-1-450x300-450x300-600x600.jpg', 'Acer Swift SF314 54 51Q được trang bị vi xử lý Intel Core i5 Kabylake Refresh mới nhất (thế hệ thứ 8). Chiếc máy tính xách tay có thiết kế mỏng nhẹ, đơn giản, hiện đại đi cùng một cấu hình mạnh và nhiều công nghệ mới được tích hợp. \r\n', 2),
(10, 'iPhone SE 64GB', 3900000, 'https://cellphones.com.vn/media/catalog/product/cache/7/thumbnail/115x/9df78eab33525d08d6e5fb8d27136e95/i/p/iphonese-01_1_1_1.png', 'iPhone SE 64GB sử dụng chip Apple A9 và RAM 2 GB tương tự như mẫu flagship iPhone 6S, tuy nhiên do chỉ phải gánh kích thước màn hình nhỏ hơn, hiệu năng của SE còn có phần nhỉnh hơn người đàn anh, qua đó đáp ứng tốt mọi nhu cầu làm việc và giải trí cho người dùng.\r\n\r\n', 1),
(11, 'MACBOOK AIR 13-INCH', 19990000, 'https://image-us.24h.com.vn/upload/4-2018/images/2018-10-31/1540950383-368-trinh-lang-apple-macbook-air-2018-man-hinh-retina-sieu-chat-gsmarena_003-1540942459-width660height582.jpg', 'Processor:  1.8GHz dual-core Intel Core i5 processor with 3MB shared L3 cache (Turbo Boost up to 2.9GHz)\r\n* Memory:  8GB of 1,600MHz LPDDR3 RAM\r\n* Storage:  256GB PCIe-based flash storage\r\n* Display: 13-inch, 1,440-x-900-pixel display\r\n* Intel HD Graphics 6000\r\n* 11ac Wi-Fi (IEEE 802.11a/b/g/n compatible); Bluetooth 4.0\r\n* Ports: 2 x USB 3; 1 x Thunderbolt 2; 1 x SDXC card slot; 1 x 3.5mm headphone jack\r\n* Stereo speakers\r\n* Dual microphones\r\n* 720p FaceTime HD camera\r\n* Full-size backlit keyboard with Ambient light sensor, and Multi-Touch trackpad\r\n* 54-watt-hour battery: Up to 12 hours wireless web browsing (claimed)\r\n* Operating System: macOS Sierra\r\nDimensions:\r\n* Height: 0.3-1.7cm (0.11-0.68in)\r\n* Width: 32.5cm (12.8in)\r\n* Depth: 22.7cm (8.94in)\r\n* Height: 1.35kg (2.96lb)', 2),
(12, 'Sony Xperia XA2', 6590000, 'https://cellphones.com.vn/media/catalog/product/cache/7/thumbnail/115x/9df78eab33525d08d6e5fb8d27136e95/x/a/xa2-2.jpg', 'Sony đã sử dụng con chip xử lý Qualcomm Snapdragon 630 thay cho con chip Mediatek trên sản phẩm tiềm nhiệm. Đồng thời sản phẩm còn được trang bị dung lượng RAM 3GB và bộ nhớ trong 32GB còn hỗ trợ thêm cho người dùng khe cắm thẻ nhớ lên đến 256GB.\r\n\r\n', 1),
(13, 'Honor Play', 6990000, 'https://cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/n/e/new_project_1_2.jpg', 'Honor Play Chính hãng được trang bị chip Kirin 970 do chính Huawei tự sản xuất có NPU dành riêng cho trí thông minh nhân tạo. Bên cạnh đó, RAM 4 GB thoải mái cho bạn cùng bộ nhớ trong 64 GB giúp bạn lưu trữ dữ liệu cá nhân thỏa thích. Đặc biệt, với công nghệ GPU Turbo giúp bạn chơi game siêu mượt, một trải nghiệm hiếm thấy trên các thiết bị Android. Honor Play Chính hãng được chạy trên nền hệ điều hành Android 8.1 Oreo với giao diện tùy chỉnh EMUI 8.2.\r\n\r\n', 2),
(14, 'Nokia 7 plus', 6590000, 'https://cellphones.com.vn/media/catalog/product/cache/7/image/9df78eab33525d08d6e5fb8d27136e95/7/-/7-plus-white_5.jpg', 'Nokia 7 Plus tích hợp vi xử lý Qualcomm Snapdragon 660, RAM lên đến 4G cho khả năng xử lý hiệu quả mọi tác vụ nặng. Nhu cầu làm việc lẫn giải trí ở mức nâng cao đều được chiếc điện thoại của Nokia thực thi nhanh chóng và quá trình chạy song và chuyển đổi qua lại giữa nhiều ứng dụng cũng diễn ra hết sức mượt mà.\r\n\r\n', 1),
(15, 'MACBOOK PRO 15IN TOUCH BAR', 65590000, 'http://laptopworld.vn/sites/default/files/styles/galleryformatter_slide/public/macbook_pro_15_2018_1.jpg?itok=ROHeEMCb', 'Macbook Pro 13 inch 2018 lần đầu tiên được trang bị vi xử lý Intel lõi tứ (Core i5 hoặc i7 thế hệ thứ 8 chạy ở tốc độ lên đến 2.7 GHz và Turbo Boost tối đa 4.5 GHz). RAM hỗ trợ tối đa upto 16GB. Macbook Pro 13 inch 2018  không có card đồ họa rời mà nó tích hợp card đồ họa Intel Iris Plus 655 với 128 MB eDRAM. Đồng thời, bộ nhớ trong chuẩn SSD sẽ dao động từ 256GB đến 2TB. Đây là ổ cứng thể rắn SSD có hiệu năng nhanh nhất hiện nay dành cho máy tính xách tay, \"MacBook Pro mới sao chép tập tin 4,9 GB chỉ mất hai giây\", LaptopMag nhận xét. Thử nghiệm thực tế với phần mềm BlackMagic Disk Speed, MacBook Pro 2018 cho tốc độ ghi trung bình 2.682 MB mỗi giây. Tiến hành tương tự trên Dell XPS 13 (Core i7) thì tốc độ chỉ là 399 MB mỗi giây, HP Spectre 13 đạt 339 MB mỗi giây hay Asus ZenBook 13 là 203 MB trên giây.', 2),
(16, 'Samsung Galaxy J4+\r\n', 3490000, 'https://cdn.tgdd.vn/Products/Images/42/160730/samsung-galaxy-j4-plus-pink-400x460.png', 'Cung cấp sức mạnh cho máy là con chip 4 nhân với 2 GB RAM và 16 GB bộ nhớ trong.\r\n\r\nMáy chạy sẵn Android 8.1 Oreo hứa hẹn mang lại trải nghiệm mượt mà cũng như tối ưu năng lượng hiệu quả.', 2),
(17, ' Vivo V11i', 7690000, 'https://cdn.tgdd.vn/Products/Images/42/187554/vivo-v11i-blue-400x460.png', 'Dù sở hữu cấu hình không quá mạnh nhưng với con chip Helio P60 mà máy được trang bị cũng đủ để làm hài lòng bạn trong những thao tác cơ bản trở nên ổn định và mượt mà.\r\n\r\nBên cạnh đó, kết hợp với 4G RAM cùng 128 GB bộ nhớ trong giúp bạn thoái chạy đa nhiệm các ứng dụng cũng như lưu trữ dữ liệu cá nhân.', 1),
(18, 'Nokia 3.1 32GB', 3290000, 'https://cdn.tgdd.vn/Products/Images/42/169541/nokia-31-docquyen-400x460.png', 'Máy sử dụng chip MediaTek MT6750N kết hợp với 3 GB RAM và bộ nhớ trong 32 GB.\r\n\r\nTất nhiên Nokia 3.1 vẫn sẽ chạy chạy Android One với sự cập nhật và hỗ trợ lâu dài.', 1),
(19, 'Laptop Dell Inspiron ', 14690000, 'https://cdn.tgdd.vn/Products/Images/44/166521/Slider/-s-thiet-ke.jpg', 'Laptop Dell Inspiron 3576 i5 8250U là phiên bản máy tính xách tay phục vụ cho người dùng làm trong các ngành nghề thuộc phân khúc học tập - văn phòng. Máy trang bị với RAM 4 GB cùng chip Intel Core i5 thể hiện được sức mạnh cấu hình của sản phẩm.\r\n', 2),
(20, 'OPPO F9 Tím Tinh Tú', 7690000, 'https://cdn.tgdd.vn/Products/Images/42/184465/oppo-f9-tim-doc-quyen-400x460.png', 'Cùng công nghệ mới sử dụng \"điện áp thấp và cường độ dòng điện cao\", tích hợp 5 cấp độ an toàn độc quyền của hãng, bộ sạc của OPPO F9 vừa giữ được tốc độ sạc nhanh, vừa đem lại sự an toàn tuyệt đối cho người sử dụng, kể cả khi vừa sạc vừa chơi game.', 1),
(21, 'Laptop HP Pavilion', 12990000, 'https://cdn.tgdd.vn/Products/Images/44/177638/hp-pavilion-14-ce0021tu-i-4mf00pa-33397-ava1-600x600.jpg', 'Máy sử dụng core i3 thế hệ thứ 8 KabyLake Refresh giúp mang lại hiệu năng hoạt động khá ổn định, chơi các tựa game online khá mượt mà. RAM dạng mới DDR4 dung lượng 4 GB giúp giảm 20% điện năng tiêu thụ pin và nâng cao hiệu suất hoạt động, có thể nâng cấp lên 16 GB.', 2),
(22, 'Samsung Galaxy J2 Prime', 2290000, 'https://cdn.tgdd.vn/Products/Images/42/88573/samsung-galaxy-j2-prime-1-400x460.png', 'Galaxy J2 Prime chạy hệ điều hành Android 6.0 (Marshmallow), sử dụng vi xử lý MTK 6737, RAM dung lượng 1.5 GB.\r\n\r\nCấu hình của máy chỉ ở mức tầm trung và hiệu suất cũng ở mức trung bình.', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
