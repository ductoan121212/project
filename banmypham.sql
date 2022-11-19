-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 13, 2022 lúc 06:07 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banmypham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` varchar(90) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `role` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `lv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id_user`, `name`, `username`, `password`, `email`, `sdt`, `role`, `address`, `lv`) VALUES
(1, 'Kiều Đức Anh', 'admin', '123456789', 'admin@gmail.com', '0113334455', 'Admin', '123-HD-HN', 1),
(6, 'Aptech', 'nva123', '123', '', '', 'NhÃ¢n viÃªn', '', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `img`) VALUES
(1, '../images/section-video/video_1.webp'),
(2, '../images/section-video/video_2.webp'),
(3, '../images/section-video/video_3.webp'),
(4, '../images/section-video/video_4.webp'),
(5, '../images/section-video/video_5.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `anh` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date_create` text NOT NULL,
  `creator` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id_blog`, `anh`, `title`, `content`, `date_create`, `creator`) VALUES
(1, '../images/imgnews/1.webp', 'Công dụng của dầu oliu trong làm đẹp không phải ai', 'Trong dầu oliu có chứa rất nhiều các loại vitamin không chỉ tốt cho sức khỏe mà còn có tác dụng làm đẹp...', 'Ngày 11/01/2018', 'A'),
(2, '../images/imgnews/2.webp', 'Học lỏm bí quyết đơn giản giúp trắng da, mượt tóc', 'Nước vo gạo có những lợi ích tuyệt vời cho tóc. Một nghiên cứu gần đây đã chỉ ra những kết quả khi...', 'Ngày 11/01/2018', 'A'),
(3, '../images/imgnews/3.webp', 'Tóc mượt như đi dưỡng ở spa về với cách dùng dầu ô', 'Dầu ô-liu có hàm lượng chất béo không bão hòa và chất chống oxy hóa tự nhiên như vitamin E, carotenoids… rất tốt...', 'Ngày 11/01/2018', 'A'),
(4, '../images/imgnews/4.webp', 'Làm thế nào để chăm sóc da tại nhà chuẩn như spa?', 'Bận rộn với công việc hay cuộc sống gia đình làm bạn không có đủ thời gian để chăm sóc và làm đẹp...', 'Ngày 11/01/2018', 'A'),
(5, '../images/imgnews/5.webp', '9 loại thực phẩm đốt mỡ thừa trên cơ thể nhanh đến', 'Sau khi nắm được danh sách các thực phẩm có khả năng đốt mỡ siêu tốc dưới đây, chắc chắn, việc lấy lại...', 'Ngày 11/01/2018', 'A'),
(6, '../images/imgnews/6.webp', 'Những thủ thuật làm đẹp giúp cuộc sống của các cô ', 'Làm đẹp luôn là một công việc mất thời gian, đòi hỏi sự tỉ mỉ và tính kiên nhẫn rất cao. May mắn...', 'Ngày 11/01/2022', 'A');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id_product` int(11) DEFAULT NULL,
  `img_brand` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id_product`, `img_brand`) VALUES
(1, '../images/brand1/1-1.webp'),
(1, '../images/brand1/1-2.webp'),
(1, '../images/brand1/1-3.webp'),
(2, '../images/brand1/2-1.webp'),
(2, '../images/brand1/2-2.webp'),
(2, '../images/brand1/2-3.webp'),
(3, '../images/brand1/3-1.webp'),
(3, '../images/brand1/3-2.webp'),
(3, '../images/brand1/3-3.webp'),
(4, '../images/brand1/4-1.webp'),
(4, '../images/brand1/4-2.webp'),
(4, '../images/brand1/4-3.webp'),
(5, '../images/brand1/5-1.webp'),
(5, '../images/brand1/5-2.webp'),
(5, '../images/brand1/5-3.webp'),
(6, '../images/brand1/6-1.webp'),
(6, '../images/brand1/6-2.webp'),
(6, '../images/brand1/6-3.webp'),
(7, '../images/brand1/7-1.webp'),
(7, '../images/brand1/7-2.webp'),
(7, '../images/brand1/7-3.webp'),
(8, '../images/brand1/8-1.webp'),
(8, '../images/brand1/8-2.webp'),
(8, '../images/brand1/8-3.webp'),
(9, '../images/brand1/9-1.webp'),
(9, '../images/brand1/9-2.webp'),
(9, '../images/brand1/1-2.webp'),
(10, '../images/brand1/10-1.webp'),
(10, '../images/brand1/10-2.webp'),
(10, '../images/brand1/6-3.webp'),
(11, '../images/brand1/11-1.webp'),
(11, '../images/brand1/11-2.webp'),
(11, '../images/brand1/5-2.webp'),
(12, '../images/brand1/12-1.webp'),
(12, '../images/brand1/12-2.webp'),
(12, '../images/brand1/12-3.webp'),
(13, '../images/brand1/13-1.webp'),
(13, '../images/brand1/13-2.webp'),
(13, '../images/brand1/13-3.webp'),
(14, '../images/brand1/14-1.webp'),
(14, '../images/brand1/14-2.webp'),
(14, '../images/brand1/14-3.webp'),
(15, '../images/brand1/15-1.webp'),
(15, '../images/brand1/15-2.webp'),
(15, '../images/brand1/15-3.webp'),
(16, '../images/brand1/16-1.webp'),
(16, '../images/brand1/16-2.webp'),
(16, '../images/brand1/1-2.webp'),
(17, '../images/brand1/17-1.webp'),
(17, '../images/brand1/17-2.webp'),
(17, '../images/brand1/17-3.webp'),
(18, '../images/brand1/18-1.webp'),
(18, '../images/brand1/18-2.webp'),
(18, '../images/brand1/19-1.webp'),
(19, '../images/brand1/19-1.webp'),
(19, '../images/brand1/18-2.webp'),
(19, '../images/brand1/18-1.webp'),
(20, '../images/brand1/20-1.webp'),
(20, '../images/brand1/20-2.webp'),
(20, '../images/brand1/20-3.webp'),
(21, '../images/brand1/21-1.webp'),
(21, '../images/brand1/21-2.jfif'),
(21, '../images/brand1/21-3.jfif'),
(22, '../images/brand1/22-1.webp'),
(22, '../images/brand1/24-1.webp'),
(22, '../images/brand1/25-3.webp'),
(23, '../images/brand1/23-1.webp'),
(23, '../images/brand1/25-1.webp'),
(23, '../images/brand1/26-1.webp'),
(24, '../images/brand1/24-1.webp'),
(24, '../images/brand1/22-1.webp'),
(24, '../images/brand1/25-3.webp'),
(25, '../images/brand1/25-1.webp'),
(25, '../images/brand1/25-2.webp'),
(25, '../images/brand1/26-3.webp'),
(26, '../images/brand1/26-1.webp'),
(26, '../images/brand1/26-2.webp'),
(26, '../images/brand1/26-3.webp'),
(27, '../images/brand1/27-1.webp'),
(27, '../images/brand1/27-2.webp'),
(27, '../images/brand1/27-3.webp'),
(28, '../images/brand1/28-1.webp'),
(28, '../images/brand1/28-2.webp'),
(28, '../images/brand1/28-3.webp'),
(29, '../images/brand1/29-1.webp'),
(29, '../images/brand1/29-2.webp'),
(29, '../images/brand1/29-3.webp'),
(30, '../images/brand1/30-1.webp'),
(30, '../images/brand1/30-2.webp'),
(30, '../images/brand1/30-3.webp'),
(31, '../images/brand1/31-1.webp'),
(31, '../images/brand1/31-2.webp'),
(31, '../images/brand1/31-3.webp'),
(32, '../images/brand1/32-1.webp'),
(32, '../images/brand1/32-2.webp'),
(32, '../images/brand1/32-3.webp'),
(33, '../images/brand1/33-1.webp'),
(33, '../images/brand1/33-2.webp'),
(33, '../images/brand1/33-3.webp'),
(34, '../images/brand1/34-1.webp'),
(34, '../images/brand1/34-2.webp'),
(34, '../images/brand1/34-3.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clients`
--

CREATE TABLE `clients` (
  `id_kh` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `content` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `clients`
--

INSERT INTO `clients` (`id_kh`, `name`, `email`, `sdt`, `content`) VALUES
(1, 'Nguyá»…n NgÃ¢n', 'nguyenthingan9122003@gmail.com', '0704577048', 'ChÄƒm sÃ³c khÃ¡ch hÃ ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder`
--

CREATE TABLE `oder` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` varchar(300) DEFAULT NULL,
  `payments` varchar(50) NOT NULL,
  `amount` decimal(15,0) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oder`
--

INSERT INTO `oder` (`id`, `email`, `full_name`, `phone`, `address`, `note`, `payments`, `amount`, `status`) VALUES
(1, 'nguyenthingan9122003@gmail.com', 'nguyá»…n ngÃ¢n', '0704577048', 'HÃ  Ná»™i', 'Giao hÃ ng táº­n nÆ¡i', '', '2618000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder_detail`
--

CREATE TABLE `oder_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `name_product` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,0) NOT NULL,
  `amount` decimal(15,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oder_detail`
--

INSERT INTO `oder_detail` (`id`, `id_order`, `id_product`, `name_product`, `qty`, `price`, `amount`) VALUES
(20, 1, 20, '', 2, '729000', '1458000'),
(21, 1, 17, '', 2, '560000', '1120000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id_product` int(11) NOT NULL,
  `catalog_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `cost` varchar(11) DEFAULT NULL,
  `trangthai` varchar(25) NOT NULL,
  `tonkho` int(11) NOT NULL,
  `made` varchar(25) NOT NULL,
  `brand_name` varchar(25) NOT NULL,
  `congdung` varchar(500) NOT NULL,
  `details` varchar(2000) NOT NULL,
  `ngaytao` varchar(50) NOT NULL,
  `nguoitao` varchar(50) NOT NULL,
  `daban` int(20) NOT NULL,
  `id_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id_product`, `catalog_id`, `name`, `thumbnail`, `price`, `cost`, `trangthai`, `tonkho`, `made`, `brand_name`, `congdung`, `details`, `ngaytao`, `nguoitao`, `daban`, `id_type`) VALUES
(1, 1, 'Sữa tắm Victoria’s Secret quyến rũ', '../images/page1/1.webp', 560000, '670,000₫', 'Còn hàng', 20, 'US', 'Victoria’s Secret', 'Sữa tắm', 'Sữa tắm Sparkling Citrus Luscious Crush – Victoria’s Secret mang đến sức sống căng tràn và vẻ mịn màng tươi trẻ cho làn da nhờ chiết xuất từ quýt và những loài hoa thơm mê đắm.  Các hạt vitamin C nhẹ nhàng làm sạch và nuôi dưỡng làn da giúp cho làn da mịn màng, mềm mại và không kém phần quyến rũ. Hãy đánh thức vẻ đẹp của làn da bạn ngay từ bây giờ!.\n\nCông dụng :\n\n- Sữa tắm dạng kem với công thức vượt trội về dưỡng mịn & bổ sung độ ẩm giúp da bạn hấp thụ hiệu quả đa dưỡng chất\n- Sau khi tắm xong, bạn sẽ cảm nhận được trên da mình được bao bọc và bảo vệ bởi một lớp kem mỏng mịn và mùi hương cực kỳ quyến rũ và nồng nàn lưu lại trên cơ thể.\n- Đặc biệt là rất thích hợp sử dụng cho làn da khô cần được hồi sinh.\n\nHướng dẫn sử dụng:\n\nLấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng\n\nTắm sạch lại với nước\n\nThông tin thương hiệu:\n\nVictoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', '16/6/2022', 'A', 32, 1),
(2, 1, 'Kem dưỡng ẩm L\'Occitane Pivoine', '../images/page1/2.webp', 840000, '', 'Còn hàng', 14, 'US', 'L\'Occitane ', 'Dưỡng da', 'Kem dưỡng ẩm đang trở thành một trong những loại mỹ phẩm chăm sóc da quan trọng, đặc biệt cho làn da khô. Ích lợi của kem dưỡng ẩm hẳn các bạn cũng đều biết, nhưng nên mua loại kem dưỡng ẩm nào, hay nên sử dụng kem dưỡng ẩm khi nào, có lẽ không ai trong chúng ta cũng nắm rõ. Elle sẽ giúp bạn trả lời những câu hỏi quan trọng này. kem dưỡng ẩm Vì da mặt thường mỏng và nhạy cảm, vì vậy bạn nên sử dụng kem dưỡng ẩm dành cho da mặt thay vì dùng kem dưỡng ẩm toàn thân. Luôn nhớ mua loại kem dưỡng ẩm dán nhãn “không gây bít lỗ chân lông” vì các dưỡng chất trong loại kem này sẽ không làm tắc nghẽn lỗ chân lông của bạn. Và tất nhiên, luôn chọn loại kem phù hợp với loại da của mình. Nếu bạn có làn da nhạy cảm, hãy tìm một loại kem dưỡng ẩm có nhãn không gây dị ứng. Nếu bạn có làn da nhờn, kem dưỡng ẩm không chứa dầu sẽ là lựa chọn tối ưu, và nếu bạn có làn da khô, kem dưỡng ẩm giàu chất dưỡng ẩm sẽ là tốt nhất. Nhưng làn da của bạn là da tổng hợp, một loại kem dưỡng ẩm không chứa dầu cho toàn bộ khuôn mặt của bạn và chấm khu vực khô hơn với một loại kem giàu chất dưỡng ẩm sẽ là tốt nhất. Hãy nhớ rằng bạn có thể cần kem dưỡng ẩm nhẹ vào mùa hè, và thuốc mỡ trong mùa đông hay kem dưỡng ẩm màu đông. Hãy mua những loại kem dưỡng ẩm có chứa những thành phần như lanolin, glycerin, hoặc petrolatum – những thành phần dưỡng ẩm phổ biến. Nếu bạn có làn da nhạy cảm, hãy chọn loại kem dưỡng ẩm có chứa glycerin, vì glycerin ít có khả năng gây kích ứng hơn lanolin.', '16/6/2022', 'A', 45, 2),
(3, 1, 'Nước làm sạch mặt Ibuki Softening', '../images/page1/3.webp', 470000, '', 'Hết hàng', 0, 'Australia', 'Shiseido ', 'Dưỡng da ', 'Shiseido Ibuki Softening Concentrate là sản phẩm nước cân bằng giúp làm mềm da của dòng mỹ phẩm Shiseido Ibuki. Với đặc tính dưỡng ẩm cao, Shiseido Ibuki Softening Concentrate cung cấp lượng nước thiết yếu vào sâu trong các lớp da, giúp làn da lập tức trở nên mềm mại, mượt mà do ngậm đủ độ ẩm thiết yếu trong cấu trúc. Qua đó, Shiseido Ibuki Softening Concentrate giúp làm mềm lớp da sừng hóa ở biểu bì và loại bỏ vùng da khô ráp, kém sắc, mang lại vẻ tươi sáng, rạng rỡ tức thì cho gương mặt. Với làn da mịn màng, mềm mại, sản phẩm là bước đệm hoàn hảo giúp các dưỡng chất trong các bước chăm sóc tiếp theo thẩm thấu qua da dễ dàng, hỗ trợ thúc đẩy phục hồi những tổn thương trên da do tác động từ môi trường bên ngoài.  Công dụng:  - Cung cấp độ ẩm dồi dào cho da.  - Bổ sung thành phần dưỡng chất vào sâu bên trong giúp phục hồi những thương tổn ở da.  - Hỗ trợ nuôi dưỡng làn da mềm mại, mịn màng.  - Tăng thêm sức đề kháng giúp da chống lại những tác nhân lão hóa.  - Tăng cường khả năng hấp thu dưỡng chất của da.', '16/6/2022', 'A', 30, 2),
(4, 1, 'Tinh chất dưỡng da SK-II Facial', '../images/page1/4.webp', 4100000, '', 'Còn hàng', 24, 'England', 'SK-II', 'Dưỡng da ', 'Nhắc tới mỹ phẩm SK-II không thể không nhắc tới sản phẩm “nước thần” Facial Treatment Essence. Nước thần SKII Facial Treatment Essence là sản phẩm được yêu thích nhất trong số đông các sản phẩm của hãng và được trao giải Best Seller SK-II. Sử dụng “nước thần”, làn da bạn như được hồi sinh, chỉ sau 1 tuần làn da trở nên mịn màng, trong suốt như pha lê, đặc biệt vẻ đẹp của làn da được duy trì trong một thời gian rất dài. Nhắc đến Facial Treatment Essence, người ta dành cho nó một loạt các mỹ từ “miracle water” – nước tiên, nước thánh, nước thần… Chỉ cần nghe tên thôi là đủ hiểu sản phẩm này được ví như một thứ chất lỏng hết sức kỳ diệu, thành phần có chứa đến hơn 90% Pitera do đó nó có tác dụng giữ ẩm, cải thiện kết cấu làn da, nuôi dưỡng làn da và hỗ trợ tái tạo tế bào da, đồng thời làm da căng bóng khoẻ mạnh, trong suốt như pha lê.Pitera:tm: – tên gọi của tinh chất được chiết xuất trong quá trình lên men từ rượu sake, chính tinh chất này đã làm nên điều kỳ diệu trong các dòng mỹ phẩm của hãng SK-II. Facial Treatment Essence là sản phẩm nổi tiếng của SK-II, chứa đến 90% Pitera:tm: đã được khám phá trong vòng hơn 30 năm. Hiện nay, nước thần vẫn thuộc dòng sản phẩm cơ bản và nòng cốt của hãng mỹ phẩm SK-II. Tinh chất dưỡng da trong nước thần sẽ nhẹ nhàng loại bỏ lớp tế bào chết trên làn da của bạn, đồng thời giúp điều chỉnh quá trình tái tạo bề mặt da, giúp da sáng mịn và căng bóng.', '16/6/2022', 'A', 18, 2),
(5, 1, 'Son dưỡng Tonymoly Mini Cherry', '../images/page1/5.webp', 200000, '220,000₫', 'Còn hàng', 27, 'Sweden', 'Tonymoly', 'Dưỡng da', 'Tonymoly là thương hiệu mỹ phẩm trang điểm tạo vẻ đẹp toàn diện với ý nghĩa là ‘chứa dựng vẻ đẹp’ được kết hợp từ từ tiếng Anh ‘Tony’ (vẻ đẹp quyến rũ, có đường nét) và từ tiếng Nhật ‘Moly’(ẩn chứa). Tonymoly chú trọng đưa ra những bí quyết trang điểm giúp chị em phụ nữ có thể tự làm đẹp cho bản thân, có cách trang điểm phù hợp với làn da của mình hơn là chỉ đưa ra các sản phẩm tốt. Son dưỡng môi Tonymoly Mini Cherry Lip Balm là sản phẩm giúp dưỡng môi mềm mượt, cho màu sắc tưới tắn với độ chống nắng SPF 15. Son dưỡng môi với hương vị ngọt ngào và màu sắc tự nhiên cho làn môi mềm có sức sống, đồng thời bảo vệ cho đôi môi dưới tác động của tia tử ngoại. Son dưỡng môi với hương vị ngọt ngào và màu sắc tự nhiên cho làn môi mềm có sức sống, đồng thời bảo vệ cho đôi môi dưới tác động của tia tử ngoại. Tonymoly Mini Cherry Lip Balm cho đôi môi căng mượt ngọt ngào, quyến rủ đầy sức sống, sản phẩm chứa vitamin E thúc đẩy tuần hoàn máu và quá trình trao đổi chất, cho làn môi tươi tắn và tạo sự đàn hồi. Bên cạnh đó chất Water-Solude Dye (chất nhuộm màu hòa tan trong nước) có trong sản phẩm sẽ hòa tan với các thành phần có trong da cho màu môi đẹp tự nhiên.', '16/6/2022', 'A', 23, 2),
(6, 1, 'Nước hoa Lancôme La Vie Est', '../images/page1/6.webp', 1240000, '', 'Hết hàng', 0, 'Denmark', 'Lancôme', 'Nước hoa ', 'La Vie Est Belle là một hương thơm mới vừa ra đời trong mùa thu năm 2012 bởi Lancome. Nước hoa Lancôme La Vie Est Belle tập trung ý tưởng về vẻ đẹp tự nhiên và giản dị, tự do từ các công ước và chọn lựa tầm nhìn cho hạnh phúc riêng của bạn. Nước hoa Lancôme La Vie Est Belle mang 1 phẩm chất triển vọng về cuộc sống và được lấy cảm hứng từ niềm vui trong những điều nhỏ nhặt. Thành phần nước hoa Lancôme La Vie Est Belleđược phát triển bởi Olivier Polge, Dominique Ropion và Anne Flipo. Công thức cuối cùng là kết quả đạt được sau thời gian ba năm quản chế và 5000 phiên bản. Mùi hương đặc trưng: Hương đầu là nho đen, lê; Hương giữa là Iris, hoa cam và nhài; Hương cuối Patchouli, đậu Tonka, vani và Praline, Phong cách: Sang trọng, thanh lịch', '16/6/2022', 'A', 11, 3),
(7, 1, 'Sữa tắm làm sáng da Victoria’s Secret', '../images/page1/7.webp', 1400000, '', 'Còn hàng', 13, 'US', 'Victoria’s Secret', ' Sữa tắm ', 'Sữa tắm Sparkling Citrus Luscious Crush – Victoria’s Secret mang đến sức sống căng tràn và vẻ mịn màng tươi trẻ cho làn da nhờ chiết xuất từ quýt và những loài hoa thơm mê đắm.  Các hạt vitamin C nhẹ nhàng làm sạch và nuôi dưỡng làn da giúp cho làn da mịn màng, mềm mại và không kém phần quyến rũ. Hãy đánh thức vẻ đẹp của làn da bạn ngay từ bây giờ!. Công dụng : - Sữa tắm dạng kem với công thức vượt trội về dưỡng mịn & bổ sung độ ẩm giúp da bạn hấp thụ hiệu quả đa dưỡng chất - Sau khi tắm xong, bạn sẽ cảm nhận được trên da mình được bao bọc và bảo vệ bởi một lớp kem mỏng mịn và mùi hương cực kỳ quyến rũ và nồng nàn lưu lại trên cơ thể. - Đặc biệt là rất thích hợp sử dụng cho làn da khô cần được hồi sinh. Hướng dẫn sử dụng: Lấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng Tắm sạch lại với nước Thông tin thương hiệu: Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', '16/6/2022', 'A', 22, 1),
(8, 1, 'Sữa tắm hương dâu dịu mát', '../images/page1/8.webp', 1400000, '1,500,000₫', 'Còn hàng', 31, 'England', 'Marc Jacobs ', 'Sữa tắm', 'Sữa tắm Sparkling Citrus Luscious Crush – Victoria’s Secret mang đến sức sống căng tràn và vẻ mịn màng tươi trẻ cho làn da nhờ chiết xuất từ quýt và những loài hoa thơm mê đắm.  Các hạt vitamin C nhẹ nhàng làm sạch và nuôi dưỡng làn da giúp cho làn da mịn màng, mềm mại và không kém phần quyến rũ. Hãy đánh thức vẻ đẹp của làn da bạn ngay từ bây giờ!.  Công dụng :  - Sữa tắm dạng kem với công thức vượt trội về dưỡng mịn & bổ sung độ ẩm giúp da bạn hấp thụ hiệu quả đa dưỡng chất - Sau khi tắm xong, bạn sẽ cảm nhận được trên da mình được bao bọc và bảo vệ bởi một lớp kem mỏng mịn và mùi hương cực kỳ quyến rũ và nồng nàn lưu lại trên cơ thể. - Đặc biệt là rất thích hợp sử dụng cho làn da khô cần được hồi sinh.  Hướng dẫn sử dụng:  Lấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng  Tắm sạch lại với nước  Thông tin thương hiệu:  Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', '16/6/2022', 'A', 40, 1),
(9, 1, 'Sữa tắm dưỡng ẩm cho da', '../images/page1/9.webp', 600000, '', 'Hết hàng', 0, 'England', 'Marc Jacobs', 'Sữa tắm', 'Sữa tắm Sparkling Citrus Luscious Crush – Victoria’s Secret mang đến sức sống căng tràn và vẻ mịn màng tươi trẻ cho làn da nhờ chiết xuất từ quýt và những loài hoa thơm mê đắm.  Các hạt vitamin C nhẹ nhàng làm sạch và nuôi dưỡng làn da giúp cho làn da mịn màng, mềm mại và không kém phần quyến rũ. Hãy đánh thức vẻ đẹp của làn da bạn ngay từ bây giờ!.  Công dụng :  - Sữa tắm dạng kem với công thức vượt trội về dưỡng mịn & bổ sung độ ẩm giúp da bạn hấp thụ hiệu quả đa dưỡng chất - Sau khi tắm xong, bạn sẽ cảm nhận được trên da mình được bao bọc và bảo vệ bởi một lớp kem mỏng mịn và mùi hương cực kỳ quyến rũ và nồng nàn lưu lại trên cơ thể. - Đặc biệt là rất thích hợp sử dụng cho làn da khô cần được hồi sinh.  Hướng dẫn sử dụng:  Lấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng  Tắm sạch lại với nước  Thông tin thương hiệu:  Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', '16/6/2022', 'A', 15, 1),
(10, 1, 'Sữa tắm Sparkling Citrus Luscious Crush\r\n', '../images/page1/10.webp', 1040000, '', 'Còn hàng', 50, 'US', 'Dior ', 'Sữa tắm', 'Sữa tắm Sparkling Citrus Luscious Crush – Victoria’s Secret mang đến sức sống căng tràn và vẻ mịn màng tươi trẻ cho làn da nhờ chiết xuất từ quýt và những loài hoa thơm mê đắm.  Các hạt vitamin C nhẹ nhàng làm sạch và nuôi dưỡng làn da giúp cho làn da mịn màng, mềm mại và không kém phần quyến rũ. Hãy đánh thức vẻ đẹp của làn da bạn ngay từ bây giờ!.  Công dụng :  - Sữa tắm dạng kem với công thức vượt trội về dưỡng mịn & bổ sung độ ẩm giúp da bạn hấp thụ hiệu quả đa dưỡng chất - Sau khi tắm xong, bạn sẽ cảm nhận được trên da mình được bao bọc và bảo vệ bởi một lớp kem mỏng mịn và mùi hương cực kỳ quyến rũ và nồng nàn lưu lại trên cơ thể. - Đặc biệt là rất thích hợp sử dụng cho làn da khô cần được hồi sinh.  Hướng dẫn sử dụng:  Lấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng  Tắm sạch lại với nước  Thông tin thương hiệu:  Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', '16/6/2022', 'A', 60, 1),
(11, 1, 'Kem lót Burberry Fresh Glow', '../images/page1/11.webp', 960000, '', 'Còn hàng', 22, 'Sweden', 'Burberry', 'Trang điểm', 'Trên thị trường ngày nay, có rất nhiều loại kem lót khác nhau,với những tính năng đa dạng phù hợp cho mọi loại da. Tuy nhiên, việc chọn lựa kem lót sao cho phù hợp và tốt cho da cũng không phải dễ dàng. Kem lót tốt là phải đảm bảo khi sử dụng phải hoàn toàn đồng nhất với màu da. Nếu kem lót trở nên bóng loáng trơn tuột hay hiện rõ một khác da thì đó không phải là kem lót tốt.  Màu sắc của kem lót ưa chuộng nhất thường là màu da vàng và màu kem. Đây là hai màu tôn lên sắc da hiệu quả nhất. Nên dùng loại có chất dưỡng ẩm nhẹ. Mỏng, nhẹ, trong suốt là đặc trưng vốn có của kem lót, vì thế bạn đừng cố tạo màu hay pha trộn các hỗn hợp màu của kem lót lại với nhau.     Khi đi mua kem lót, bạn không nên nhìn vào màu sắc qua các lọ đựng kem. Hãy chấm một chấm nhỏ tán đều ở má, đợi ít phút và quan sát. Nếu kết quả cho bạn thấy hài lòng thì hãy chọn mua. Một số kem lót mới còn sử dụng thêm tinh chất bạc hà làm da dịu mát và tạo cảm giác nhẹ nhàng.  Nếu da bạn sậm màu, cũng đừng cố bôi một lớp kem lót dày vì kem lót chỉ là để khởi đầu cho trang điểm. Cũng không nên đắp lên mặt một lớp phấn thật dày nhé. Có nhiều loại kem lót dành cho da sậm đen hay da nâu, nếu dùng không đúng loại da sậm sẽ trở nên xám tái, hoặc tái nhợt như xám tro và càng tối hơn. Bạn nên chọn loại kem có thành phần zinc dioxide, khoáng chất và cả bột phấn chiếu ánh sáng để làm nổi bật làn da vốn khoẻ mạnh của bạn.', '16/6/2022', 'A', 20, 4),
(12, 1, 'Son môi Christian Louboutin Silky\r\n', '../images/page1/12.webp', 1800000, '', 'Còn hàng', 23, 'US', 'Christian Louboutin ', 'Trang điểm', 'Thỏi son với thiết kế độc đáo ngoài sức tưởng tượng hình viên đạn bằng kim loại lóng lánh hào nhoáng, đặc biệt có thể đeo lên cổ như đồ trang sức.  Nằm trong số những thỏi son đắt đỏ trên thế giới, và được đánh giá là đẹp đến nỗi chỉ để ngắm không nỡ xài. Son gồm ba dòng: son dưỡng, son bóng và son lì - hiện là dòng hot nhất với nhiều màu để lựa chọn từ tông tươi đến tông trầm phù hợp với nhiều sở thích và phong cách thời trang. Giải mã độ hot của thỏi son này ư? Chỉ đơn giản, vì đó là Christian Louboutin, đẹp và đầy quyền lực.  Cũng giống như chai sơn móng, thiết kế cây son mang hình viên đạn với một đầu nhọn, màu đen hoặc vàng kim và phần nắp bằng kim loại kết hợp giữa vàng và bạc. Một điểm độc đáo là chỉ cần luồn một sợi dây qua lỗ nhỏ trên nắp là bạn có thể đeo như dây chuyền, vừa có một món trang sức tuyệt đẹp vừa dễ dàng mang theo khi cần.  Hãng Louboutin tự tin ví những thỏi son của mình như “những viên đá quý được tìm thấy trong kho báu của Alibaba…, được sinh ra để khiến mọi người khao khát có được”.', '16/6/2022', 'A', 41, 4),
(13, 1, 'Mascara Benefit They\'re Real\r\n', '../images/page1/13.webp', 480000, '', 'Hết hàng', 0, 'US', 'Benefit ', 'Trang điểm', 'Mascara Benefit They’re Real là mascara nổi đình đám của Benefit, luôn nằm trong Top Seller với một list các giải thưởng rất hoành tráng. Cứ 10 giây lại có một chiếc mascara They’re real được bán ra đủ cho thấy độ hot như thế nào. Lí do nào mà mascara They’re real được yêu thích như vậy? Vì đơn giản, đó là một chiếc mascara thần kì, giải quyết tất cả các vấn đề về mi của bạn. Bạn thích một hàng mi dài, dầy, có độ cong, có độ nâng, mà vẫn tơi mi, nhìn tự nhiên nhưng lại cực kì cuốn hút, thì mascara này chính là dành cho bạn.    Kết quả khảo sát người dùng của Benefit cho thấy:  94% thấy mi dài và dầy hơn  90% thấy mi cong, cuốn hút hơn  94% thấy hàng mi được nâng lên cao hơn, không bị cụp xuống mắt  100% nhìn thấy kết quả giữ bền lâu của mascara  Mi bạn sẽ không hề bị khô, hay vón cục khi chuốt mascara này, mà ngược lại, làn mi dầy, cong dài quyến rũ, lại cực kì tự nhiên như thể bạn đã luôn sẵn có một đôi mắt đẹp với hàng mi tuyệt vời như thế, và tất cả sẽ là của bạn, khi bạn sử dụng mascara Benefit They’re Real', '16/6/2022', 'A', 26, 4),
(14, 1, 'Nước hoa Versace Bright Crystal\r\n', '../images/page1/14.webp', 1000000, '', 'Còn hàng', 12, 'Sweden', 'Versace ', 'Nước hoa', 'Ra mắt vào năm 2006, nước hoa Versace Bright Crystal đã ngay lập tức được những chuyên gia đánh giá cao và người sử dụng đón nhận nồng nhiệt với thiết kế và phong cách đều đã mang những sự tiến bộ đáng chú ý. Tuy không còn mang nét cổ điển vốn có của thương hiệu Versace nhưng nước hoa Versace Bright Crystal lại được tạo dựng trên sự hiện đại, thời thượng, mang đến hương thơm nồng nàn và quyến rũ cho phụ nữ thành đạt.  Ngoài ra, nước hoa còn được tinh chế nồng độ chuẩn, giúp bạn tỏa ngát hương thơm cả ngày dài dù phải sinh hoạt ngoài trời hay vận động mạnh. Đặc biệt, phần thiết kế vô cùng mới lạ và bắt mắt khi mang dáng vẻ như viên kim cương sáng chói, sản phẩm nhanh chóng trở thành lọ nước hoa nổi bật giữa thẻ giời ngàn hoa hiện nay. Hãy lựa chọn nước hoa Versace Bright Crystal để giúp bạn trở thành phụ nữ quyến rũ, gợi cảm bậc nhất.    Thiết kế tinh xảo, cổ điển  Nước hoa Versace Bright Crystal đã được thiết kế phần vỏ bọc thủy tinh bền chắc, trong suốt giúp bạn dễ dàng nhìn thấy nước hoa mang sắc hồng nhẹ nhàng bên trong, tạo cảm giác êm dịu và vô cùng nữ tính. Ngoài ra, phần nắp đậy của chai cũng được cách điệu thành hình dáng tương tự một việc kim cương sáng bóng với nhiều mắt cắt, mang đến sự sang trọng không chi với lọ nước hoa và cả cho người sở hữu.  Nồng độ  Versace Bright Crystal mang tỷ lệ tinh chất nước hòa là 5% đến 12% trên tổng tỷ lệ nước nước hoa của sản phẩm, đem đến cho bạn một hương thơm vừa đủ để bạn có thể đi dự tiệc, vui chơi cùng bạn bè. Đặc biệt, nước hoa Versace Bright Crystal có khả năng lưu giữ mùi hương lâu, giúp bạn không còn ngần ngại khi sử dụng sản phẩm vào các dịp hoạt động ngoài trời.', '16/6/2022', 'A', 24, 3),
(15, 1, 'Sữa tắm Sparkling Citrus làm mượt da\r\n', '../images/page1/15.webp', 1200000, '1,300,000₫', 'Còn hàng', 24, 'England', 'Urban Decay ', 'Sữa tắm', 'Sữa tắm Sparkling Citrus Luscious Crush – Victoria’s Secret mang đến sức sống căng tràn và vẻ mịn màng tươi trẻ cho làn da nhờ chiết xuất từ quýt và những loài hoa thơm mê đắm.  Các hạt vitamin C nhẹ nhàng làm sạch và nuôi dưỡng làn da giúp cho làn da mịn màng, mềm mại và không kém phần quyến rũ. Hãy đánh thức vẻ đẹp của làn da bạn ngay từ bây giờ!.  Công dụng :  - Sữa tắm dạng kem với công thức vượt trội về dưỡng mịn & bổ sung độ ẩm giúp da bạn hấp thụ hiệu quả đa dưỡng chất - Sau khi tắm xong, bạn sẽ cảm nhận được trên da mình được bao bọc và bảo vệ bởi một lớp kem mỏng mịn và mùi hương cực kỳ quyến rũ và nồng nàn lưu lại trên cơ thể. - Đặc biệt là rất thích hợp sử dụng cho làn da khô cần được hồi sinh.  Hướng dẫn sử dụng:  Lấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng  Tắm sạch lại với nước  Thông tin thương hiệu:  Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', '16/6/2022', 'A', 25, 1),
(16, 1, 'Sữa tắm dạng kem Victoria’s Secret\r\n', '../images/page1/16.webp', 860000, '930,000₫', 'Còn hàng', 14, 'US', 'Victoria’s Secret', 'Sữa tắm', 'Sữa tắm Sparkling Citrus Luscious Crush – Victoria’s Secret mang đến sức sống căng tràn và vẻ mịn màng tươi trẻ cho làn da nhờ chiết xuất từ quýt và những loài hoa thơm mê đắm.  Các hạt vitamin C nhẹ nhàng làm sạch và nuôi dưỡng làn da giúp cho làn da mịn màng, mềm mại và không kém phần quyến rũ. Hãy đánh thức vẻ đẹp của làn da bạn ngay từ bây giờ!.  Công dụng :  - Sữa tắm dạng kem với công thức vượt trội về dưỡng mịn & bổ sung độ ẩm giúp da bạn hấp thụ hiệu quả đa dưỡng chất - Sau khi tắm xong, bạn sẽ cảm nhận được trên da mình được bao bọc và bảo vệ bởi một lớp kem mỏng mịn và mùi hương cực kỳ quyến rũ và nồng nàn lưu lại trên cơ thể. - Đặc biệt là rất thích hợp sử dụng cho làn da khô cần được hồi sinh.  Hướng dẫn sử dụng:  Lấy 1 lượng sản phẩm vừa đủ thoa đều lên cơ thể, massage nhẹ nhàng  Tắm sạch lại với nước  Thông tin thương hiệu:  Victoria’s Secret là một nhãn hiệu nội y nổi tiếng với show thời trang thường niên luôn thu hút được sự quan tâm của hàng chục triệu người trên toàn thế giới. Dòng mỹ phẩm và nước hoa mang tên Victoria’s Secret cũng đầy gợi cảm như các thiên thần của họ trên sàn catwalk.', '16/6/2022', 'A', 22, 1),
(17, 1, 'Phấn nền bareMinerals Original\r\n', '../images/page1/17.webp', 560000, '', 'Còn hàng', 20, 'England', 'AHA ', 'Trang điểm', 'BareMinerals Original Foundation Broad Spectrum là dòng found dạng bột bán chạy nhất của hãng MMU (minerals make up - mp khoáng) Bare Escentuals.  Sản phẩm bareMinerals Original Foundation Broad Spectrum nổi tiếng vì lành tính, hạt phấn siêu nhỏ mịn và bảng màu trải dài, thậm chí có thể mix màu để hợp tone da bạn.  Chỉ với 5 thành phần khoáng và không có parabens, chất kết dính, chất độn hoặc hóa chất tổng hợp, bareMinerals Original Foundation Broad Spectrum mang lại độ che phủ cao lên đến 8 giờ.    Hạt phấn bareMinerals Original Foundation Broad Spectrum rất mịn, chất phấn rất mỏng nhẹ, thoáng da, không có cảm giác có lớp makeup trên mặt và không bị cakey.  Khoáng chất dạng kem giúp tăng cường độ bám.  bareMinerals Original Foundation Broad Spectrum nhìn giống như bột, cảm giác như kem, và phủ lên như lụa, cho bạn sự rạng rỡ tự nhiên như thể bạn không hề trang điểm.', '16/6/2022', 'A', 32, 4),
(18, 1, 'Nước hoa Chloé Eau de Parfum\r\n', '../images/page1/18.webp', 1500000, '1,600,000₫', 'Còn hàng', 32, 'US', 'Chloé ', 'Nước hoa', 'Sản phẩm cùng tên mới này của Chloé dường như cũng có một nền tảng từ phiên bản nổi tiếng đi trước với hương hoa hồng rất dễ thương. Một mùi hương nhẹ nhàng, tươi nhưng lại vô cùng quyến rũ và có chiều sâu, phiên bản nước hoa mới này không hề tỏ ra lép vế trước phiên bản cũ rất đình đám của Chloé.  Cũng giống như điểm nhấn tại các dòng Chloé, bằng tính nghệ thuật và sự phóng khoáng trong thiết kế, nước hoa Chloé Eau De Parfum này tỏ ra nữ tính và có nét phá cách, nhưng không theo kiểu \"Dành cho tất cả các cô gái\". Các cung bậc hương kết hợp hòa quyện với nhau một cách rất riêng và nó quyến rũ người dùng bằng cả hai cách: sự sang trọng thanh lịch và sự phá cách, táo bạo.  Đây là loại nước hoa rất linh hoạt để sử dụng, nó được chủ đích sản xuất cho nhu cầu sử dụng hàng ngày hơn là trở thành mùi hương mang tính đại diện duy nhất của một ai đó. Sản phẩm được đưa ra vào năm 2008. Chloé Eau De Parfum được tinh chế bởi 2 nhà nước hoa là Amandine Marie và Michel Almairac.  Chloé Eau De Parfum là sản phẩm tương đối dễ sử dụng và thích hợp nhất sử dụng ban ngày trong công việc, vào mùa xuân, hè, thu  Độ bám mùi tuyệt vời, từ 7-12 tiếng  Độ tỏa mùi khá, ngang hoặc trên khoảng cách 1 sải tay.', '16/6/2022', 'A', 15, 3),
(19, 1, 'Nước hoa Yves Saint Laurent Black\r\n', '../images/page1/19.webp', 1350000, '', 'Còn hàng', 29, 'US', 'Yves Saint Laurent ', 'Trang điểm ', 'Tháng 9 năm 2014 Yves Saint Laurent đã cho ra mắt Black Opium, dòng nước hoa mới được công bố như một tiết mục biểu diễn rock’n’roll cổ điển nổi bật khía cạnh huyền ảo, bí ẩn của thương hiệu YSL. Chuyên gia sáng tạo nước hoa Nathalie Lorson và MarieSalamagne, đã hợp tác với Olivier Cresp và Honorine Blanc để cho ra đời sản phẩm mùi hương này.  Black Opium, là hương nước hoa mang phong vị của hoa cỏ cà phê đầu tiên của Yves Saint Laurent. Năng lượng của cà phê đen thống trị toàn bộ hương nước hoa của những bông hoa trắng với sự nữ tính quyết đoán bằng sự nổi bật của hồ tiêu hồng và trái lê làm nền phía sau. Trong lớp cuối, tất cả được cân bằng với sự ngọt ngào quyến rũ của vani và gỗ tuyết tùng làm mùi hương trở nên năng động, gợi cảm và hoàn toàn có thể gây nghiện đúng với tên gọi của nó.  Mẫu mã chai nước hoa được thiết kế như một phiên bản cuối cùng của bộ sưu tập Opium. Chai màu tối và trang trí với phong cách lấp lánh mang lại vẻ ngoài theo phong cách âm nhạc cổ điển Anh-Glam Rock. Sự sang trọng, huyền ảo là mục tiêu hàng đầu của thiết kế này.  Giới thiệu Black Opium, một biểu tượng mới của sự nữ tính. Black Opium là hiện thân của cô gái hiện đại theo phong cách cá tính “Rock Chic”. Cô gái sống một cuộc sống với niềm đam mê và dám thể hiện nhiều phong cách khác nhau. Mùi hương của cô gái ấy như liều thuốc adrenelin hay một loại thần dược giúp cô ấy có đủ can đảm để giải phóng bản thân và tìm được sự tự tin để nắm bắt được sự “nổi loạn” của chính mình.', '16/6/2022', 'A', 19, 4),
(20, 1, 'Son Yves Saint Laurent\r\n', '../images/page1/20.webp', 729000, '', 'Còn hàng', 40, 'US', 'Yves Saint Laurent ', 'Trang điểm', 'Son Yves Saint Laurent là son môi thời trang cao cấp dành cho chị em phụ nữ yêu thích thương hiệu YSL. Yves Saint Laurent giới thiệu thế hệ mới của biểu tượng màu sắc: màu cam, màu đỏ... trong một bộ sưu tập son môi mới. Kết cấu satin sáng này được trình bày trong một cây son màu vàng tinh tế trông rất sang trọng. SPF 15 giúp màu son bền, lâu trôi và bảo vệ môi trong khi hydrospheres và các chất chiết xuất từ thiên nhiên cung cấp tất cả dưỡng chất giúp môi bạn thoải mái cả ngày.    Son YSL có thiết kế khá sang trọng và đẳng cấp, nó tạo nên sự sang trọng cho người sử dụng.  Son YSL Le Orange 13  màu cam đỏ, một màu sắc tuyệt vời không kén da, bạn có thể tự tin sử dụng. Kết cấu son khá kem, mềm mịn vì thế ó lướt trên môi 1 cách nhẹ nhàng và nó làm cho đôi môi của bạn thêm căng mọng.   SYL chứa chất dưỡng ẩm vì thế bạn không phải lo lắng và bôi thêm son dưỡng khi dùng son YSL, tuy nhiên vì có chứa dưỡng ẩm nên độ bám của nó ko lâu như MAC, nó bám tầm 3-4h, sau 3-4 h bạn nên chặm lại môi để giữ màu sắc tuyệt vời như ban đầu.', '16/6/2022', 'A', 55, 4),
(21, 2, 'Phấn mắt Moonshadow Baked\r\n', '../images/page2/21.webp', 679000, '', 'Còn hàng', 35, 'Sweden', 'Moon Shadow', 'Trang điểm', 'Màu sắc: Nhiều Màu Hướng dẫn sử dụng: Dùng cọ lấy một lượng phấn vừa đủ, tán đều lên bầu mắt Xuất xứ: Anh Sản phẩm không giảm giá: Sản phẩm này không được áp dụng với voucher hoặc các khuyến mại khác. Sản phẩm không chấp nhận hoàn trả: Sản phẩm này không được chấp nhận đổi hoặc trả hàngี้    Một nguyên tắc chung mà mỗi chúng ta khi make up đều muốn thực hiện một cách hoàn hảo nhất là tạo cho mình một điểm nhấn nhất định trên gương mặt. Đó có thể là đôi mắt long lanh, to tròn, \"thu hút mọi ánh nhìn\" hoặc một đôi gò má phúng phính trên làn da trắng hồng, hay đơn giản chỉ là tạo nên cá tính riêng cho mình với má hồng tông cam trên làn da ngăm tinh nghịch? Moonshadow Baked Palette - Phấn mắt 8 màu tiện lợi, chứa tinh thể đá quý và bột ngọc trai tạo vẻ lấp lánh rạng rỡ cho đôi mắt.', '16/6/2022', 'A', 21, 4),
(22, 2, 'Nước hoa Giorgio Valenti\r\n', '../images/page2/22.webp', 489000, '590,000₫', 'Còn hàng', 14, 'China', 'Giorgio Valenti', 'Nước hoa ', 'Nước hoa Giorgio Valenti Rose Noire sẽ đem lại cho bạn hương thơm nồng nàn và quyến rũ  - Nhóm hương: Hương hoa, trái cây, phương Đông  - Sản phẩm được nhập khẩu từ Pháp  - Dung tích 60ml  - Hạn sử dụng 3 năm kể từ ngày sản xuất    Hướng dẫn sử dụng:  - Nên xịt nước hoa lên vùng nóng của cơ thể (như cổ, khuỷu tay, cổ, ngực, lưng và đùi). Điều này sẽ giúp nước hoa lưu mùi trên cơ thể bạn cả ngày  - Mùi nước hoa sẽ giữ được lâu hơn nếu bạn xịt vào áo quần, nhưng nếu là áo sáng màu, nó sẽ tạo thành những vệt ố. Do đó bạn chỉ nên áp dụng cách này với áo tối màu  - Nên sử dụng nước hoa vào lúc mới tắm xong và khi cơ thể còn ẩm sẽ giúp nước hoa lưu hương tốt hơn', '16/6/2022', 'A', 19, 3),
(23, 2, 'Nước hoa Dolce & Gabbana\r\n', '../images/page2/23.webp', 148000, '270,000₫', 'Còn hàng', 36, 'Canada', 'Dolce & Gabbana', 'Nước hoa ', 'Nước hoa D&G Dolce với thiết kế bao bì trang nhã, hướng đến quý cô trẻ trung, kiêu sa.  Sự kết hợp và pha trộn hoàn hảo của những mùi hương tinh tế của hoa đu đủ, dầu hoa cam, hoa Lily trắng và hoa thủy tiên đã tạo nên một chai nước hoa mang đậm nét hương hoa cổ điển.  Thích hợp dùng hàng ngày hay môi trường công sở.  Thương hiệu: Dolce & Gabbana    Năm ra mắt: 2014  Phong cách: Trẻ trung, Thanh nhã  Hương đặc trưng: Hoa đu đủ, dầu hoa cam, hoa sen trắng, hoa thủy tiên.  Độ tuổi khuyên dùng: Mọi lứa tuổi  Bảo quản: tránh ánh sáng trực tiếp, bảo quản nơi khô ráo thoáng mát.  Xuất xứ: Italy', '16/6/2022', 'A', 31, 3),
(24, 2, 'Xịt khoáng dưỡng da Vichy\r\n', '../images/page2/24.webp', 125000, '', 'Còn hàng', 39, 'England', 'Vichy', 'Dưỡng da ', 'Nước khoáng dưỡng da VICHY Eau Thermale được tổng hợp từ hơn 15 loại khoáng chất lấy từ nguồn nước khoáng Vichy kỳ diệu với quá trình hình thành hơn 9000 năm chảy qua các lớp nham thạch và núi lửa ở độ sâu hơn 4000m. Sản phẩm có khả năng tăng cường hệ miễn dịch cho da, tái tạo hệ thống phòng vệ da, đồng thời giúp cân bằng độ pH của da và giảm kích ứng da. Hãy để nước khoáng dưỡng da  VICHY Eau Thermale chăm sóc vẻ đẹp của làn da bạn.    THÔNG TIN CHI TIẾT  Loại sản phẩm VICHY Eau Thermale là nước khoáng dưỡng da, giúp tăng cường sức sống và làm dịu cho da. Loại da phù hợp Dùng cho mọi loại da, đặc biệt là làn da nhạy cảm. Cách dùng Phun một lớp sương mỏng lên da. Vỗ nhẹ bề mặt da, để yên một lát rồi lau khô nhẹ nhàng.', '16/6/2022', 'A', 22, 2),
(25, 2, 'Dung dịch giúp loại bỏ sơn móng\r\n', '../images/page2/25.webp', 145000, '150,000₫', 'Còn hàng', 55, 'England', 'Oriflame', 'Tẩy móng', 'Dung dịch giúp loại bỏ sơn móng nhẹ nhàng và hiệu quả.  Không chứa aceton. 75ml  Dùng bông gòn thấm sản phẩm rồi nhẹ nhàng lau móng cho đến khi sạch hết lớp sơn.    Khuyến cáo: Tránh xa tầm tay trẻ em.  Bảo quản: Nơi khô ráo, thoáng mát.\"', '16/6/2022', 'A', 23, 5),
(26, 2, 'Nước sơn vẽ móng Mira AROMA art club\r\n', '../images/page2/26.webp                             ', 500000, '', 'Còn hàng', 25, 'England', 'Aroma ', 'Sơn móng', 'Nước sơn vẽ móng Mira AROMA art club', '16/6/2022', 'A', 33, 5),
(27, 2, 'Dầu dưỡng da Phytoceuticals Argan\r\n', '../images/page2/27.webp', 169000, '196,000₫', 'Còn hàng', 20, 'US', 'USA', 'Dưỡng da', 'Kiara Phytoceuticals là thương hiệu chuyên về các sản phẩm dạng dầu chăm sóc da của Úc, thương hiệu này cũng gắn liền với nhiều loại dầu được yêu thích như Macadamia oil, camelia oil, maracuja oil,… được sản xuất từ thiên nhiên, đảm bảo chất lượng, độ tinh khiết, độ tươi mới an toàn cho người dùng. Về dầu Argan, thì đây là loại dầu dưỡng da đắt đỏ bậc nhất thế giới và được ví như “vàng lỏng” trong giới skincare với nhiều tính năng đặc trưng như của em Kiara Phytoceuticals Argan Oil này:  Giàu vitamin E, acid béo hàm lượng cao giúp làm ẩm và dịu da hiệu quả. Chống lão hóa, cải thiện nếp nhăn, phục hồi độ đàn hồi và tăng sinh collagen Cân bằng da bằng cách cung cấp độ ẩm tự nhiên, chữa lành các tế bào hư, giảm viêm Giảm thâm mụn, sẹo và ngăn ngừa mụn mới Ngoài ra, em này còn có công dụng rất tốt trong việc phục hồi tóc bóng khỏe; nuôi dưỡng móng không bị khô, giòn, dễ gãy; chữa ẩm cho môi khô nứt nẻ. Sử dụng dầu Argan trước khi makeup hay trộn vào kem nền sẽ giúp lớp nền được bóng khỏe, da mịn màng và kiềm dầu được tốt hơn. Sản phẩm được giới thiệu hoàn toàn lành tính, có thể sử dụng được cho trẻ em và phụ nữ có thai . Không chứa hóa chất, không chất bảo quản, không hương liệu, phù hợp với mọi loại da. Nên bảo quản sản phẩm trong môi trường mát mẻ, dưới 25 độ C, và tránh ánh nắng.', '16/6/2022', 'A', 35, 2),
(28, 2, 'Kem dưỡng da AHA\n', '../images/page2/28.webp', 420000, '450,000₫', 'Còn hàng', 25, 'US', 'AHA ', 'Dưỡng da', ' Sữa chống nắng duy nhất có khả năng hạ nhiệt 5 độ C ngay lập tức cho làn da, giúp làm dịu da bạn và mang đến cho bạn cảm giác mát lạnh. Khi sử dụng để dặm lại vào giữa ngày, kết cấu mát lạnh của sản phẩm sẽ mang lại cảm giác dễ chịu và thư giãn cho da vừa khi chuẩn bị tiếp xúc với nhiệt độ cao vào buổi trưa. Đây là bước giúp bảo vệ da, ngăn ngừa tình trạng sạm đen và lão hóa sớm cho da. Kết cấu siêu nhẹ, khô ráo và không gây cảm giác nhờn rít cho da suốt cả ngày dài. Tông màu da tự nhiên nên có thể sử dụng như kem lót trang điểm.      Thành phần  Bổ sung thành phần dưỡng da chống oxy hóa từ mầm hoa hướng dương giúp tăng cường rào chắn bảo vệ da khỏi tác hại của ánh nắng mặt trời và môi trường.  Hướng dẫn sử dụng  1. Lắc đều trước khi sử dụng. 2. Xoay nắp đến nút “ON”. 3. Bơm 4-5 lần để lấy sản phẩm và dặm đều khắp bề mặt da. 4. Sau khi sử dụng xoay nắp đến nút “OFF”.', '16/6/2022', 'A', 25, 2),
(29, 2, 'Sữa chống nắng hạ nhiệt', '../images/page2/29.webp', 180000, '220,000₫', 'Còn hàng', 13, 'Korea', 'SunBath', 'Dưỡng da', 'Công dụng  Sữa chống nắng duy nhất có khả năng hạ nhiệt 5 độ C ngay lập tức cho làn da, giúp làm dịu da bạn và mang đến cho bạn cảm giác mát lạnh. Khi sử dụng để dặm lại vào giữa ngày, kết cấu mát lạnh của sản phẩm sẽ mang lại cảm giác dễ chịu và thư giãn cho da vừa khi chuẩn bị tiếp xúc với nhiệt độ cao vào buổi trưa. Đây là bước giúp bảo vệ da, ngăn ngừa tình trạng sạm đen và lão hóa sớm cho da. Kết cấu siêu nhẹ, khô ráo và không gây cảm giác nhờn rít cho da suốt cả ngày dài. Tông màu da tự nhiên nên có thể sử dụng như kem lót trang điểm.   Thành phần      Bổ sung thành phần dưỡng da chống oxy hóa từ mầm hoa hướng dương giúp tăng cường rào chắn bảo vệ da khỏi tác hại của ánh nắng mặt trời và môi trường.  Hướng dẫn sử dụng  1. Lắc đều trước khi sử dụng. 2. Xoay nắp đến nút “ON”. 3. Bơm 4-5 lần để lấy sản phẩm và dặm đều khắp bề mặt da. 4. Sau khi sử dụng xoay nắp đến nút “OFF”.  **Sản phẩm có 2 mẫu mã bao bì tùy theo nhà sản xuất từ Hàn Quốc**', '16/6/2022', 'A', 11, 2),
(30, 2, 'Kem chống nắng AHA\r\n', '../images/page2/30.webp', 350000, '370000₫', 'Còn hàng', 44, 'England', 'AHA ', 'Dưỡng da', 'Công dụng  Sản phẩm chống nắng đa chức năng, vừa có khả năng bảo vệ da khỏi tác hại của ánh nắng mặt trời, giúp ngăn ngừa tình trạng sạm đen và lão hóa sớm cho da của bạn; đồng thời kem có màu da tự nhiên có thể sử dụng làm kem lót trang điểm. Kết cấu nhẹ nhàng, tự nhiên và khi thoa lên da bạn sẽ hoàn toàn không gây cảm giác dính rít.     Thành phần  Bổ sung thành phần dưỡng da chống oxy hóa từ mầm hoa hướng dương giúp tăng cường rào chắn bảo vệ da khỏi tác hại của ánh nắng mặt trời và môi trường.  Hướng dẫn sử dụng  Sử dụng sau các bước dưỡng da và trước khi trang điểm. Lấy một lượng sản phẩm vừa đủ và dàn trải khắp vùng da mặt và vùng da cổ.', '16/6/2022', 'A', 14, 2),
(31, 2, 'Son Christian Louboutin Diva\r\n', '../images/page2/31.webp', 2850000, '2950000₫', 'Còn hàng', 11, 'England', 'Louboutin Diva', 'Trang điểm', 'Son Christian Louboutin Diva màu đỏ cam mang hơi hướng cổ điển, tạo nên sự sang trọng quý phái của những quý bà thập niên 70s, màu son dễ phối đồ.  Khối lượng: 3.8g  Xuất xứ: Pháp    Cảm hứng từ Son Christian Louboutin Diva Christian Louboutin – nhà thiết kế đầy sáng tạo trong thế giới nghệ thuật, một cây son môi hoàn hảo chính là cây đũa thầy của mọi người phụ nữ. Son môi Louboutin biến người phụ nữ trở thành một viên ngọc quý giá và sang trọng.  Lấy cảm hứng từ sự cổ kính của văn hoá Trung Đông và trào lưu Art Deco, thiết kế của Son Christian Louboutin Diva được làm từ kim loại rắn, hình dáng thon nhọn về phía đuôi. Nắp thỏi son được thiết kế gần giống chiếc vương miện của các hoàng đế ngày xưa. Dải lụa ruy băng bên trên nắp được khéo léo lồng qua một chiếc nhẫn, biến thỏi son quý phái trở thành một sợi dây chuyền đeo cổ sang trọng.  Velvet Matte Lip Colour – dòng son lỳ của Christian Louboutin ra đời đánh dấu một thời điểm hoàng kim của dòng son môi lỳ với màu sắc sang trọng, giữ màu lâu nhưng không gây khô môi mà ngược lại còn rất thoải mái.  Son Christian Louboutin Diva màu đỏ cam, tone màu trầm tạo cảm giác cổ điển, quý phái và sang trọng. Phù hợp với những bữa tiệc hạng sang hay phối cùng trang phục đen, tạo nên sự quý phái.     Đặc điểm của Son Christian Louboutin Diva Christian Louboutin Diva Sự pha trộn sắc tố phong phú trong sản phẩm tạo nên màu sắc hoàn hảo cho mỗi thỏi Son Christian Louboutin Diva.  Chất son mềm mại, mịn màng, lên môi dễ dàng và không bị sai màu quá nhiều.  Thành phần tự nhiên từ các loại dầu thực vật và chiết xuất quả bơ nên có khả năng dưỡng môi, giữ ẩm cho môi hiệu quả.  Son lâu trôi, có thể duy trì màu sắc lên đến 4 giờ đồng hồ.  Full box bao gồm: hộp màu đen sơn mài cùng dải ruy băng lụa đi kèm thỏi son.  Thử nghiệm lâm sàng cho thấy Son Christian Louboutin Diva không chứa paraben, Mineral Oil, DEA hoặc Phthalate.', '16/6/2022', 'A', 23, 4),
(32, 2, 'Son Thỏi Apieu True Fitting Lipstick\r\n', '../images/page2/32.webp', 145000, '', 'Còn hàng', 15, 'Australia', 'Apieu', 'Trang điểm', 'Son Thỏi  Apieu True Fitting Lipstick  - Trọng lượng : 4.5g  - Hãng Sản xuất : apieu /korea  - Apieu True Fitting Lipstick là dòng son thỏi có chất son mịn , bám màu bền , độ lì vừa phải , lên môi mướt mịn , không hề bột. Lên chuẩn màu kể cả những sắc môi khó lên màu nhất ! Thiết kế thỏi son có nam châm hút mới lạ sang trọng!', '16/6/2022', 'A', 20, 4),
(33, 2, 'Son thỏi lì 3ce Lip color Matte ', '../images/page2/33.webp', 270000, '', 'Còn hàng', 17, 'England', '3CE', 'Trang điểm ', 'Son thỏi lì 3CE Lip Color Matte - #907 (Old Dress - Hồng Đất) (New)  Xuất xứ: Hàn Quốc  Thương hiệu: 3ce  Trọng lượng: 4g    Tiếp nối sự thành công của dòng son 3CE Lip Color, 3CE tiếp tục cho ra mắt thêm dòng son thỏi mới 3CE Lip Color - Matte với chất son lì hoàn toàn, không bóng, không dầu, và độ lên màu được cải thiện rõ rệt. Gồm các gam màu nổi bật, các bạn có thể dễ dàng tìm thấy một hay nhiều màu son ưng ý.  Dòng son mới với nhiều cải tiến, son lên môi sẽ mềm mịn, đều màu và giữ được màu lâu hơn.  Chất son lì, lên màu chuẩn, rất bám môi và bền màu, son nhiều dưỡng nên không bị khô môi khi sử dụng, có nhiều màu sắc cá tính và quyến rũ.', '16/6/2022', 'A', 50, 4),
(34, 2, 'Son Ba Màu Maybelline Bitten', '../images/page2/34.webp', 140000, '150000₫', 'Còn hàng', 23, 'England', 'Maybelline', 'Trang điểm', 'Son Ba Màu Maybelline Bitten 3.9g - Kết cấu ba màu độc đáo tạo hiệu ứng  môi ombre  3D thời thượng, màu sắc loang nước sống động cho đôi môi căng mọng đẹp tự nhiên. Công thức Ultra creamy dưỡng ẩm môi suốt 12h liền.  Tính năng sản phẩm  Hiệu ứng loang màu nước tạo nên màu sắc sống động cho đôi môi đẹp tự nhiên. Công thức Ultra Creamy cho đôi môi căng mọng, dưỡng ẩm môi suốt 12h liền. 3 Shades màu OMBRE từ đậm sang nhạt trong 1 cây son tạo hiệu ứng ombre môi chỉ với 1 lần tô son. Loại da phù hợp  Thích hợp cho mọi làn da.  Màu sắc  Son Ba Màu Maybelline Bitten - OR01 Son Ba Màu Maybelline Bitten - RD01 Son Ba Màu Maybelline Bitten - PK01 Son Ba Màu Maybelline Bitten - RD03', '16/6/2022', 'A', 32, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_user`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD KEY `fk_brand` (`id_product`);

--
-- Chỉ mục cho bảng `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oder_detail`
--
ALTER TABLE `oder_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oder_detail_ibfk_1` (`id_order`),
  ADD KEY `oder_detail_ibfk_2` (`id_product`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_type` (`id_type`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oder_detail`
--
ALTER TABLE `oder_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `brand`
--
ALTER TABLE `brand`
  ADD CONSTRAINT `fk_brand` FOREIGN KEY (`id_product`) REFERENCES `sanpham` (`id_product`);

--
-- Các ràng buộc cho bảng `oder_detail`
--
ALTER TABLE `oder_detail`
  ADD CONSTRAINT `oder_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `sanpham` (`id_product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
