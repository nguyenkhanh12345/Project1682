-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2022 lúc 09:06 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_traicay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'khanh123', '123', 1),
(2, 'admin', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(11) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(14, 4, '1343', 1, '', 'paypal', 7),
(15, 4, '3934', 1, '', 'paypal', 7),
(16, 4, '2971', 1, '', 'tien mat', 0),
(17, 5, '143', 1, '', 'paypal', 0),
(18, 5, '4607', 1, '', 'Tiền Mặt', 0),
(19, 4, '53', 1, '', 'paypal', 7),
(20, 5, '6881', 1, '', 'paypal', 8),
(21, 4, '7766', 1, '', 'Tiền Mặt', 0),
(22, 4, '5010', 1, '', 'Tiền Mặt', 0),
(23, 4, '6710', 1, '', 'Tiền Mặt', 0),
(24, 4, '7132', 1, '', 'Tiền Mặt', 0),
(25, 4, '2176', 1, '', 'Tiền Mặt', 0),
(26, 4, '2907', 1, '', 'Tiền Mặt', 0),
(27, 4, '4075', 1, '', 'Tiền Mặt', 0),
(28, 4, '412', 1, '', 'Tiền Mặt', 0),
(29, 5, '7390', 1, '', 'Tiền Mặt', 0),
(30, 5, '2770', 0, '', 'Tiền Mặt', 0),
(31, 4, '8990', 1, '', 'Tiền Mặt', 0),
(32, 4, '9625', 1, '', 'Tiền Mặt', 0),
(33, 4, '1327', 1, '', 'Tiền Mặt', 0),
(34, 4, '5747', 1, '', 'Tiền Mặt', 0),
(35, 4, '6277', 1, '', 'Tiền Mặt', 0),
(36, 4, '2449', 1, '', 'Tiền Mặt', 0),
(37, 4, '3442', 0, '2022-11-28 02:12:49', 'Tiền Mặt', 0),
(38, 4, '3498', 0, '2022-11-28 02:30:46', 'Tiền Mặt', 0),
(39, 4, '5256', 0, '2022-11-28 02:30:50', 'Tiền Mặt', 0),
(40, 4, '6923', 0, '2022-11-28 02:31:14', 'Tiền Mặt', 0),
(41, 4, '4568', 0, '2022-11-28 02:31:38', 'Tiền Mặt', 0),
(42, 4, '4529', 0, '2022-11-28 02:31:42', 'Tiền Mặt', 0),
(43, 4, '7508', 0, '2022-11-28 02:31:55', 'Tiền Mặt', 0),
(44, 4, '7951', 0, '2022-11-28 04:09:35', 'Tiền Mặt', 0),
(45, 4, '7073', 0, '2022-11-28 04:13:21', 'Tiền Mặt', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(23, '2971', 26, 10),
(24, '143', 9, 2),
(25, '143', 21, 3),
(26, '143', 17, 2),
(27, '4607', 9, 2),
(28, '4607', 21, 3),
(29, '4607', 17, 2),
(30, '53', 12, 1),
(31, '6881', 12, 1),
(32, '7766', 12, 1),
(33, '5010', 15, 1),
(34, '6710', 15, 1),
(35, '7132', 12, 1),
(36, '2176', 15, 4),
(37, '2176', 26, 2),
(38, '2907', 26, 1),
(39, '4075', 13, 1),
(40, '7390', 12, 1),
(41, '2770', 15, 1),
(42, '8990', 12, 1),
(43, '9625', 11, 1),
(44, '1327', 14, 1),
(45, '5747', 15, 1),
(46, '6277', 12, 1),
(47, '2449', 15, 2),
(48, '3442', 12, 1),
(49, '3498', 19, 10),
(50, '3498', 26, 10),
(51, '6923', 26, 10),
(52, '6923', 12, 10),
(53, '4568', 22, 10),
(54, '7508', 25, 10),
(55, '7951', 26, 4),
(56, '7073', 21, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'abc', 'abc@gmail.com', 'asfds', '202cb962ac59075b964b07152d234b70', 123123123),
(2, '', '', '', '202cb962ac59075b964b07152d234b70', 0),
(3, '', '', '', '202cb962ac59075b964b07152d234b70', 0),
(4, 'abc', 'kn390560@gmail.com', 'asfds', '202cb962ac59075b964b07152d234b70', 123123123),
(5, 'trinhdo', 'phuongtrinh160397@gmail.com', 'lê thận', '202cb962ac59075b964b07152d234b70', 123123123),
(6, 'khanh', 'kn390560@gmail.com', 'lê thận', '202cb962ac59075b964b07152d234b70', 123123123),
(7, 'khanh', 'nguyenkhanh02092000@gmail.com', 'lê thận', '4297f44b13955235245b2497399d7a93', 123123123);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(500) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(2, 'Miền Trung', 1),
(3, 'Miền Nam', 2),
(4, 'Miền Bắc', 3),
(5, 'Miền Tây', 4),
(6, 'Đà Lạt', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(3, 'vàng', '1', '1', 1, '1626294708_', 'áda', 'ád', 1, 0),
(4, 'Xoài', '1', '50000', 1, '1626313066_hoa-qua-mien-nam-xoai-cat-hoa-loc.jpg', 'adadasd', 'ádadsa', 1, 1),
(9, 'Dâu tây', '1', '100000', 1, '1669659531_tải xuống.jpg', '<p>D&acirc;u&nbsp;</p>\r\n', '<p>C&oacute; lẽ loại tr&aacute;i c&acirc;y đầu ti&ecirc;n phải nhắc đến đ&oacute; ch&iacute;nh l&agrave; d&acirc;u t&acirc;y Đ&agrave; Lạt. V&igrave; ở đ&acirc;y kh&iacute; hậu m&aacute;t mẻ quanh năm c&ugrave;ng với đ&oacute; l&agrave; thổ những v&ocirc; c&ugrave;ng m&agrave;u mỡ, th&iacute;ch hợp cho trồng d&acirc;u t&acirc;y n&ecirc;n d&acirc;u t&acirc;y rất năng suất. Tr&aacute;i d&acirc;u t&acirc;y d&ugrave; kh&ocirc;ng to nhưng m&agrave;u sắc đỏ tươi rất đẹp, lại mọng nước, vị chua chua ngọt ngọt thơm thơm khiến ai cũng m&ecirc; mẩn với d&acirc;u t&acirc;y Đ&agrave; Lạt.Với d&acirc;u t&acirc;y, bạn c&oacute; thể chế biến th&agrave;nh nhiều m&oacute;n kh&aacute;c nhau như mứt d&acirc;u, sinh tố d&acirc;u, d&acirc;u dầm sữa&hellip; hay thậm ch&iacute; ăn kh&ocirc;ng cũng rất ngon, hơn nữa lại c&ograve;n bổ dưỡng, gi&agrave;u vitamin. M&ugrave;a d&acirc;u khoảng từ th&aacute;ng 9 đến th&aacute;ng 3 năm sau, n&ecirc;n nếu bạn c&oacute; đến du lịch Đ&agrave; Lạt trong dịp n&agrave;y th&igrave; h&atilde;y thử mua một &iacute;t về l&agrave;m qu&agrave; nh&eacute;.</p>\r\n', 1, 6),
(10, 'Hồng giòn', '2', '150000', 1, '1626316561_24_3.jpg', 'Đặc Sản Đà Lạt', 'Vào độ tháng 7 đến tháng 11 hàng năm, khách du lịch có thể tìm thấy hồng giòn, loại quả được yêu thích ở bất cứ đâu trên các khu chợ lớn nhỏ của Đà Lạt. Những quả hồng giòn có mùi thơm, vị ngọt đậm và khá giòn. Đây là loại trái cây không chỉ ngon mà còn rất tốt cho hệ tiêu hóa như hỗ trợ trong việc cải thiện thị lực nhờ giàu vitamin A và chất xơ. Giá hồng giòn cũng khá rẻ nên du khách có thể mua nhiều về ăn dần đấy nhé.', 0, 6),
(11, 'Chuối la ba', '3', '20000', 1, '1626316534_24_4.jpg', 'Chuối', 'Ngoài dâu tây, bơ hay hồng giòn thì chuối la ba cũng là một trong những loại trái cây Đà Lạt ngon nổi tiếng. Sở dĩ người ta gọi là “chuối la ba” vì loại trái cây này được trồng đầu tiên ở vùng La Ba – Phú Sơn (nay thuộc huyện Đức Trọng). Các loại chuối thường dễ trồng, sinh trưởng tốt và cho năng suất cao nên bạn có thể thấy chuối được trồng ở bất cứ vùng nào trên nước ta. Nhưng chuối la ba vẫn được xem là loại chuối hấp dẫn nhất bởi nó có hình dáng đẹp với màu vàng tươi bóng, quả thon và cong đều, cùng vời đó là mùi thơm đặc trưng nên để lại ấn tượng sâu sắc cho người thưởng thức.Theo người dân bản xứ kể lại, trước kia loại chuối này còn được đưa đến tận Huế để tiến dâng vua Bảo Đại và ngày nay thì loại chuối này đã trở thành loại trái cây đặc sản Đà Lạt. Du khách đến đây có thể tìm mua chuối la ba tươi để thưởng thức hoặc loại chuối la ba đã được sấy khô/dẻo để làm quà tặng cho bạn bè, người thân.', 0, 6),
(12, 'Bơ sáp', '4', '200000', 1, '1626316917_24_2.jpg', 'Bơ ', 'Mặc dù giống bơ sáp mới xuất hiện ở Đà Lạt chưa lâu nhưng đã nhanh chóng “chinh phục” mọi người vì độ ngon của nó. Những trái bơ sáp Đà Lạt đều rất chắc, thuôn đều, vỏ có màu xanh sẫm và căng bóng. Điểm khác biệt của loại bơ sáp Đà Lạt này chính là lớp thịt của bơ rất dày, có màu vàng óng, khi ăn rất dẻo và có mùi thơm ngậy ngậy chứ không bị xơ hay đắng như một số loại bơ khác.Những món ngon từ bơ sáp bạn có thể làm như kem bơ, sinh tố hay làm salad… Bơ cũng có rất nhiều công dụng đối với sức khỏe và làn da như chống lão hóa, ngừa ung thư, làm mịn da, mượt tóc… Vì vậy đây thực sự là loại trái cây bạn nên mua về khi đến Đà Lạt đấy nhé.', 0, 6),
(13, 'Bưởi da xanh – Bưởi ruột hồng', '5', '70000', 1, '1626317101_trai-cay-mien-tay-buoi-da-xanh.jpg', 'Bưởi', 'Xuất thân từ huyện Mỏ Cày Bắc, tỉnh Bến Tre, từ lâu, loại bưởi này đã trở thành một trong những loại trái cây Nam Bộ được du khách chào đón nhất. Bưởi có vỏ xanh, quả chín có một đốm vàng cam, múi bưởi màu hồng đỏ rất đẹp. Không giống những loại bưởi thông thường khác, bởi tép bưởi luôn mọng nước, ít hạt lại nhiều múi. Không những thế, bưởi da xanh nổi tiếng bởi vị ngọt thanh mát đậm đà, ăn vào rất đã miệng.Bưởi thuộc hàng có giá trị dinh dưỡng cao, tốt cho sức khỏe nên thường được chọn mua làm quà. Bưởi ngon phải có cuốn do vừa hái được vài ngày nên quả sẽ còn mọng nước. Vỏ bưởi phải căng, có màu xanh ngả vàng. Không nên chọn bưởi quá to, quả 1,2kg là vừa đủ. Giá bưởi da xanh phụ thuộc vào size quả, thường dao động từ 40.000 – 90.000đ/kg.', 0, 5),
(14, 'Chôm Chôm', '6', '20000', 1, '1626317315_dac-san-trai-cay-mien-tay-chom-chom.jpg', 'Chôm Chôm', 'Du khách về miền Tây vào khoảng tháng 6 – 7 sẽ có thể tận mắt chiêm ngưỡng những vườn chôm chôm đỏ rực một vùng. Chôm chôm là một trong những loại trái cây miền Nam theo mùa được nhiều người sán đón nhất. Thường được trồng ở Bến Tre và Vĩnh Long là chủ yếu. Chọn chôm chôm phải chọn chùm có lông không bị héo, quả phải cứng. Giá chôm chôm thường từ 20.000 – 40.000đ/kg tùy loại.Chôm chôm miền Tây Nam Bộ có 4 loại chính. Chôm chôm tróc (Java) có màu đỏ tươi, thịt không bị dính vào hạt, có vị chua ngọt, lông dài. Chôm chôm nhãn hay còn gọi là chôm chôm đường, lông ngắn và hơi xấu hơn. Tuy nhiên đây là loại ngọt nhất trong 4 loại, thịt giòn và tróc hạt. Chôm chôm Thái có quả khá lớn, thịt dày, tróc hạt, hạt dẹt rất nhỏ. Khi chín râu có màu xanh, vỏ đỏ và đang được nhiều người chọn mua trong thời gian gần đây.', 0, 5),
(15, 'Cam xoàn', '7', '70000', 1, '1626317215_hoa-qua-mien-tay-cam-xoan.jpg', 'Cam', 'Khác với cam sành, cam xoàn có vị ngọt, ít hạt, tép mỏng màu vàng nhạt và thường được thưởng thức trực tiếp. Vỏ cam xoàn có màu xanh nhạt, không quá sần sùi. Cam sành được trồng nhiều ở huyện Trà Ôn tỉnh Vĩnh Long và huyện Long Mỹ tỉnh Hậu Giang. Cam xoàn có giá trị dinh dưỡng cao và có thể bảo quản lâu dài khoảng từ 1,5-2 tháng nên được nhiều du khách chọn làm quà biếu.Phải chọn quả cam có vỏ bóng, trái đều tay, có màu xanh nhạt ngả vàng mới ngon. Giá cam xoàn dao động từ 50.000 – 80.000đ/kg.', 0, 5),
(17, 'Đào Sapa', '8', '50000', 1, '1626317520_daosapa.jpg', 'Đào', 'Sapa được ví như cảnh tiên, lại có trái Đào Tiên nhỏ nhỏ xinh xinh lại càng thêm tuyệt đẹp. Trái đào có cả ở Sapa và Mộc Châu, được người dân trồng để lấy hoa, còn quả cho vào các rọ và đem đến những phiên chợ bán. Hình ảnh các chị các mẹ đeo rọ đầy trái đào trên lưng đi bán, cũng làm cho Sapa nên thơ hơn', 0, 4),
(18, 'Vải Thanh Hà', '9', '20000', 1, '1626317640_vaithanhha.jpg', '', 'Khoảng từ tháng 5- tháng 6 khi đến Thanh Hà, Hải Dương bạn sẽ bị hút mắt bời màu đỏ rực của một loại trái cây miền Bắc quen thuộc mỗi khi hè về. Đó chính là: mùa vải chín. Quả vải thiều Thanh Hà có vỏ rất mỏng, hạt nhỏ, thịt dày và căng mọng, nhiều nước, ngọt sắc.Vì thế, Thanh Hà, Lục Ngạn (Hải Dương) trở thành một trong những điểm đến hấp dẫn cho những ai yêu thích trái cây miền Bắc.', 0, 4),
(19, 'Nhãn lồng', '10', '20000', 1, '1626317699_hungyen3.jpg', 'Nhãn', 'Nhãn Hưng Yên nức tiếng gần xa bởi hương vị ngọt thơm, giòn giòn và căng mọng nước của phần cùi dày có màu trắng ngà, hạt nhỏ đen nháy. Những trái nhãn đã từng một thời là loại quả cung tiến vua chúa.', 0, 4),
(20, 'Xoài tượng', '11', '50000', 1, '1626317777_xoaituong2.jpg', 'Xoài', 'Nhắc đến những loại trái cây miền trung thì không thể không nhắc đến xoài tượng tại Bình Định. Đầy được xem là giống xoài cho giá trị cao cùng sản lượng lớn nhất trong tất cả 5 loài xoài được trồng tại khu vực này.', 0, 2),
(21, 'Thanh long ruột đỏ', '12', '100000', 1, '1626317816_thanhlongruotdo.jpg', 'Thanh Long', 'Thanh long ruột đỏ tuy là loại trái cây được trồng và bày bán ở cả 3 miền Bắc, Trung, Nam nhưng thanh long đỏ ngon nhất vẫn là những quả được thu hoạch tại Quảng Trị. Không chỉ có hương vị mềm mịn, thanh mát mà loại quả này còn vô cùng bổ dưỡng.', 0, 2),
(22, 'Sầu riêng', '13', '70000', 1, '1626317864_saurieng2.jpg', 'Sầu Riêng', 'Sầu riêng khánh sơn là loại trái cây đặc sản ở miền Trung,Khánh Hòa được nhiều người yêu thích.Loại sầu riêng này cũng được xếp vào danh sách 50 loại trái cây đặc sản nổi tiếng ở Việt Nam.Do thích hợp với đất đai,khí hậu ngay lập tức được phát triển nhanh chóng và trở thành cây trồng chủ lực giúp nông dân Khánh Sơn xóa đói,giảm nghèo.', 0, 2),
(24, 'Dừa sáp', '14', '20000', 1, '1626318059_dừa sáp.jpg', 'Dừa sáp', 'Một ly nước dừa, thêm chút đá và thưởng thức giữa cái nóng nực của mùa hè là điều không thể tuyệt vời hơn. Dừa sáp ngon nhất là được trồng tại Trà Vinh, một tỉnh ven biển của đồng bằng sông Cửu Long. Dừa sáp Trà Vinh chính là một loại hoa quả đặc sản miền Nam với hương vị thơm ngon, sệt hơn so với các loại dừa khác.', 0, 3),
(25, 'Măng cụt', '15', '70000', 1, '1626318146_mangcut.jpg', 'Măng Cụt', 'Hương vị mà trái măng cụt mang đến cho người thưởng thức quả thực rất tuyệt vời.Vị ngọt ngọt vừa phải, chua chua không hề gắt hòa quyện với hương thơm của hoa quả tươi khiến măng cụt trở thành loại trái cây đặc sản miền nam không thể chối từ.\r\n\r\nMăng cụt – trái cây đặc sản miền Nam tốt cho sức khỏe\r\nMùa hè chính là mùa của măng cụt. Thời điểm này, măng cụt ngọt và ngon nhất vụ. Không chỉ là loại quả thông thường, măng cụt còn có nhiều tác dụng đối với sức khỏe và làm đẹp như hỗ trợ điều trị bệnh tim mạch, tốt cho hệ tiêu hóa, giảm mệt mỏi, chống lại tác động của quá trình oxy hóa,..', 0, 3),
(26, 'Dừa nước', '16', '25000', 1, '1626318306_duanuoc.jpg', 'Dừa nước', 'Dừa nước là loại cây mọc dại nhiều dọc hai bên các dòng sông tại miền Tây từ vùng biển Cần Giờ, Gò Công tới cửa sông Tiền, sông Cố Chiên, Hàm Luông, Vàm Cỏ…. Loài cây này không chỉ mang lại vẻ đẹp cho vùng đất mà còn là món giải khát tuyệt vời vào mùa hè. Dừa nước còn góp phần làm nên bao món ngon miền Nam như: chè, làm mứt dẻo, pha chế cocktail. Nước dừa ngọt thanh, ăn kèm với cùi dừa sần sật chính là những gì bạn có thể thưởng thức từ loại quả đặc biệt này.', 0, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(1, 'khanh', '123', '123', 'capnhat', 0),
(2, 'khanh', '123', '123', 'capnhat', 7),
(3, 'khanh', '123', '123', 'capnhat', 7),
(4, 'khanh', '123', '123', 'capnhat', 7),
(5, 'khanh', '123', '123', 'capnhat', 7),
(6, 'khanh', '123', '123', 'capnhat', 7),
(7, 'khanh', '123', '123', 'abc', 4),
(8, 'trinh ', '123', '123', '123', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(1, '2022-11-20', 1, '1000000', 10),
(2, '2022-11-22', 2, '1000000', 10),
(3, '2022-11-23', 3, '1000000', 10),
(4, '2022-11-24', 4, '5000000', 10),
(10, '2022-11-25', 5, '2000000', 10),
(12, '2022-11-28', 1, '100000', 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
