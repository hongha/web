-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2015 at 04:21 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci,
  `userId` int(11) unsigned DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_userId` (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `message`, `userId`, `createDate`) VALUES
(1, 'abc', 5, '2015-10-29 08:57:41'),
(3, 'adasda', 1, '2015-11-02 14:51:28'),
(4, 'zxczxc', 6, '2015-11-02 15:06:32'),
(5, 'gfg', 6, '2015-11-02 15:06:47');

-- --------------------------------------------------------

--
-- Table structure for table `nxb`
--

CREATE TABLE IF NOT EXISTS `nxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(150) NOT NULL,
  `frequency` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `nxb`
--

INSERT INTO `nxb` (`id`, `name`, `content`, `image`, `frequency`) VALUES
(1, 'TP.Hồ Chí Minh', 'Mời các bạn tham dự Buổi giao lưu lúc 9h00 ngày 31/10/2015 (Thứ bảy) tại Hội trường Nhà xuất bản Tổng hợp Thành phố Hồ Chí Minh, 62 Nguyễn Thị Minh Khai, P. Đa Kao, Quận 1!!!!\r\nCùng Tác giả Phạm Phương Thảo và cuốn sách mới Hãy cứ đi về phía Nhân dân!!!\r\nTác giả chia sẻ những trăn trở về việc xây dựng và phát triển Thành phố từ góc độ của người đã từng tham gia quyết sách.\r\nNhà xuất bản Tổng hợp Thành phố Hồ Chí Minh gửi tặng phiếu ebook và sách Hãy cứ đi về phía Nhân dân đến các bạn tham gia đặt câu hỏi giao lưu nhé!!!\r\nCùng nhìn Thành phố Hồ Chí Minh từ góc độ xây dựng và phát triển nhé các bạn!!!!', 'image/nxb/tphochiminh.jpg', 2),
(2, 'văn Hóa Thông Tin', '- Được thành lập ngày 24 tháng 7 năm 1957 theo Nghị định số 47-VH-NĐ do Bộ trưởng Bộ Văn hóa Thông tin Hoàng Minh Giám ký, với tên gọi tiền thân là Nhà xuất bản Mỹ thuật và Âm nhạc.\r\n- Đến năm 1959, Bộ quyết định tách ra làm hai nhà xuất bản: Nhà xuất bản Mỹ thuật và Nhà xuất bản Âm nhạc\r\n- Ngày 15- 2- 1962, theo Quyết định số 838/VH – QĐ: hợp nhất ba nhà xuất bản Văn hóa Nghệ thuật, Mỹ thuật, Âm nhạc thành Nhà xuất bản Văn hóa Nghệ thuật.\r\n- Ngày 3- 2 - 1966, Quyết định số 09-VH/QĐ đổi tên Nhà xuất bản Văn hóa Nghệ thuật thành Nhà xuất bản Mỹ thuật, Âm nhạc\r\n- Ngày 28-9-1970, Quyết định số 76-VH/QĐ đổi tên lại là Nhà xuất bản Văn hóa Nghệ thuật\r\n- Ngày 15-6-1971, có thêm Quyết định số 83-VH/QĐ đổi tên Nhà xuất bản Mỹ thuật Âm nhạc, thuộc Cục xuất bản thành Nhà xuất bản Văn hóa thuộc Bộ Văn hóa\r\n- Ngày 31-8-1978, Quyết định số 127-VHTT hợp nhất ba nhà xuất bản: Nhà xuất bản Văn hóa, Nhà xuất bản Văn hóa Dân tộc và Nhà xuất bản Phổ thông và lấy tên là Nhà xuất bản Văn hóa\r\n- Ngày 13-10-1986,  Quyết định số 257/VH-QĐ tách ra làm ba nhà xuất bản: Văn hóa, Văn hóa Dân tộc, Âm nhạc\r\n- Ngày 23-11-1992, Bộ trưởng Bộ Văn hóa Thông tin Trần Hoàn ra Quyết định số 1662/QĐ-TC hợp nhất Nhà xuất bản Văn hóa và Nhà xuất bản Thông tin thành Nhà xuất bản Văn hóa Thông tin trực thuộc Bộ Văn hóa Thông tin.\r\n2. Chức năng, nhiệm vụ\r\n1. Nhà xuất bản Văn hóa Thông tin là một doanh nghiệp Nhà nước có pháp nhân đầy đủ; sản xuất kinh doanh xuất bản phẩm theo nhiệm vụ của Nhà xuất bản và theo luật pháp của Nhà nước\r\nNhà xuất bản Văn hóa Thông tin có trụ sở chính ở Hà Nội và chi nhánh tại thành phố Hồ Chí Minh; có con dấu và tài khoản riêng tại ngân hàng.\r\n2. Nhà xuất bản Văn hóa Thông tin có nhiệm vụ:\r\n     a. Xuất bản, nhận uỷ thác xuất bản và phát hành các loại xuất bản phẩm bao gồm sách, tranh ảnh, văn hóa phẩm kể cả băng video và cassette về văn hóa, thông tin nhằm giới thiệu những thành tựu và tinh hoa văn hóa của Việt Nam và thế giới; thông báo, giới thiệu và tuyên truyền cổ động đường lối, chính sách của Đảng và Nhà nước về chính trị, kinh tế, khoa học kỹ thuật, văn hóa xã hội cho quảng đại quần chúng nhân dân trong cả nước, người Việt Nam ở nước ngoài và người nước ngoài có nhu cầu.\r\n     b. Quản lý cán bộ nhân viên, cơ sở vật chất kỹ thuật; thực hiện chế độ, chính sách của Nhà nước; sử dụng, bảo toàn, phát triển vốn và nghĩa vụ nộp tài chính với Nhà nước theo quy định.', 'image/nxb/vanhoathongtin.jpg', 2),
(3, 'Văn Hóa', 'Tôi ít khi chọn đọc tác phẩm của người mà trước đó chưa biết gì về họ. Vì thế, khi cầm tập truyện ngắn Gió trên đồng, tôi thật sự chưa có niềm tin đây sẽ là tác phẩm đủ sức thu hút tôi.\r\n\r\nMột phần của sự nghi ngờ này cũng bởi tôi khá quen với những truyện ngắn của nhiều cây bút miền sông nước viết theo kiểu "kể chuyện đồng bằng".\r\n\r\nẤy vậy mà, tôi bị cuốn hút ngay từ truyện ngắn đầu tiên của tập này: Chuyện đồng bằng. Chuyện kể về mối tình khốc liệt giữa cô gái câm và một gã giang hồ có biệt tài phóng dao, trốn chui trốn nhủi về miệt vườn để rồi một ngày trở thành cứu tinh cho đoàn xiếc. Truyện được viết vào năm 1994, bối cảnh đã lùi xa cùng với những đau đớn của thân phận con người trong một thời đại chìm nổi. Tình yêu đau đớn và hy sinh kiên cường để đưa cái ác về thiện mỹ.', 'image/nxb/vanhoa.jpg', 3),
(4, 'Alphabooks', 'Alphabooks là một trong những nhà xuất bản tiếng về sách kinh tế và sách doanh nhân. Với tôn chỉ: Tri Thức Là Sức Mạnh, thời gian qua, Alphabooks đã giới thiệu đến độc giả nhiều cuốn sách kinh doanh hay chuyên sâu có giá trị, được đánh giá rất cao.\r\n\r\nAlphabooks có các tủ sách chính gồm: Alpha Biz - hướng dẫn khởi nghiệp, Alpha Edu – Giáo dục và Tư duy, Alpha Omega - Tinh hoa Nhân loại, Alpha Kid - sách thiếu nhi và IMONE - sách văn học.', 'image/nxb/ScreenShot00026.jpg', 3),
(5, 'Amak', 'Công ty Cổ phần Xuất bản và Truyền thông Amak\r\n\r\nĐịa điểm: Tầng 4 - Số 13 - Ngõ Yên Thế - Đường Nguyễn Thái Học - Quận Đống Đa, Ha Noi, Vietnam\r\n\r\nĐiện thoại: 04 6255 9966\r\n\r\nEmail: info@amak.vn\r\n\r\nWebsite: http://amak.vn', 'image/nxb/ScreenShot00036.jpg', 5),
(6, 'Công Ty Sách Bách Việt', 'Công Ty Sách Bách Việt chuyên xuất bản sách văn học Việt Nam, Trung Quốc. Bách Việt được độc giả yêu thích qua những tác phẩm lãng mạn, kịch tính. Bách Việt chuyên xuất bản sách và các ấn phẩm văn hóa khác. Gồm 4 tủ sách chính: Sách văn học, Sách văn học nước ngoài với các thể loại như, truyện tiểu thuyết, tiểu thuyết tình yêu, truyện trinh thám\r\n; Sách kinh doanh, Sách Tham Khảo. Một số sách bán chạy của Bách Việt: Chân Ngắn, Sao Phải Xoắn, Quán Cà Phê XY (truyện đam mỹ), Bán Đàn Voi Xanh (sách kinh tế).\r\n\r\nMua hàng online các tựa sách hay của Bách Việt tại Tiki.vn ngay hôm nay để tận hưởng ưu đãi tuyệt vời:\r\n\r\n✓ Sách Giảm Giá Trên 20% (Cho 90% sách) ✓ Giao hàng tận nơi miễn phí ✓ Đổi trả đến 15 ngày', 'image/nxb/ScreenShot00027.jpg', 4),
(7, 'Chibooks', 'Nhãn hiệu sách Chibooks được dịch giả Nguyễn Lệ Chi sáng lập từ tháng 12.2008. Với tiêu chí chọn lọc và giới thiệu những tinh hoa văn hóa của các dân tộc trên thế giới đến với độc giả Việt Nam.\r\n\r\nChibooks sẽ tập trung vào dòng sách dành cho phụ nữ, đặc biệt là dòng sách văn học nước ngoài đương đại của Mỹ, Anh, Úc, Trung Quốc… với nhiều tác giả, tác phẩm chưa từng được giới thiệu ở VN như Rick Riordan, Rachel Gibson, Candace Bushnell, Tami Hoag, Isabel Wolff, Adele Parks, Carly Phillips….', 'image/nxb/ScreenShot00028.jpg', 1),
(8, 'Cổ Nguyệt Books', 'Công ty CP Đầu tư và Phát triển Cổ Nguyệt xuất bản những tác phẩm văn học xuất sắc, truyện trinh thám như Huyết Án Liên Hoàn, Đề Thi Đẫm Máu, tiểu thuyết tình cảm: Khi Eva chết, Em biết Adam nói gì không?, Hiệp nữ khuynh thành,...\r\n\r\n- Thành lập tháng 12/2009\r\n- Email: conguyetbooks@gmail.com\r\n\r\n- Tel: 04.36407125 /  0983110418\r\n\r\nĐịa Điểm: B12 lô 12 Khu ĐTM Định Công, Hoàng Mai, HN', 'image/nxb/ScreenShot00029.jpg', 4),
(9, 'DTBOOKS', 'DTBOOKS là một công ty sách thành lập từ giữa năm 2008. Là một đơn vị chuyên xuất bản những đầu sách hay, ý nghĩa, thiết thực dành cho nhiều đối tượng,với nhiều thể loại đa dạng như: Giáo dục, kinh tế, quản trị, văn học, khoa học, lẽ sống...Đặc biệt Tủ sách DOANH TRÍ và GIAO DỤC đã được nhiều bạn đọc  là các doanh nhân yêu mến ,tin cậy vì giá trị và tính hữu ích .\r\n\r\nVới sứ mệnh "Nuôi dưỡng trí tuệ và tâm hồn", ngay từ bước đầu, mỗi một nhân viên trong tổ chức của chúng tôi đã tự đặt ra cho mình những giá trị để cam kết cùng độc giả, rằng: "DT BOOKS nghĩa là Sách hay, Thiết thực và Chất lượng".', 'image/nxb/ScreenShot00030.jpg', 0),
(10, 'First News - Trí Việt', 'Công Ty Sách First News được thành lập ngày 10/12/1994 với tên gọi Ban Biên Dịch First News với ý tưởng lúc bấy giờ là “Mang đến cho bạn đọc những thông tin, kiến thức mới nhất và hữu ích nhất" . First News hiện có Nhà sách Trí Việt và hơn 150 đại lý liên kết phát hành trên toàn quốc và một số đại lý phát hành ở nước ngoài.\r\n\r\nCho đến nay, First News đã có gần 1000 đầu sách và ấn phẩm các loại phát hành với hàng triệu bản in được bạn đọc yêu thích thuộc các tủ sách: Sống đẹp, Hạt giống Tâm hồn, Sách Kinh doanh, Sách doanh nhân, Phong thủy, Thường thức Gia đình, Danh nhân, Thiếu nhi, Sách Ngoại ngữ, Kiến trúc, Âm nhạc và Truyện tiểu thuyết văn học. Một số tựa sách bán chạy nhất của First News: Đắc Nhân Tâm, 22 Quy Luật Bất Biến Trong Marketing (sách kinh tế),  7 Thói Quen Để Thành Đạt, Sống Cho Điều Ý Nghĩa Hơn - Nick Vujicic ...', 'image/nxb/ScreenShot00031.jpg', 1),
(11, 'Flashcard Oxford ', 'ựa vào nguyên lý cơ bản của trí nhớ đó là vận hành theo nguyên tắc lặp đi lặp lại và tần suất xuất hiện của vật thể cần ghi nhớ nên việc dùng Flashcard oxford để học từ mới giúp khai thác tối đa được những nguyên lý vận hành của trí nhớ. Flashcard được thiết kế nhỏ gọn giúp người dùng có thể mang theo học ở mọi lúc mọi nơi khi ngồi trên xe bus, trong giờ nghỉ giải lao, khi ngồi canteen, trong khi đợi chờ, khi đang đi bộ…\r\n\r\nTính hiệu quả của Flashcard oxford còn nằm ở trong những form thiết kế lên nó. Mặt trước in từ chính với font chữ lớn giúp qua nhiều lần lật các bạn có thể quen mặt từ. Nhưng khác với từ điển, Flashcard oxford có chức năng chính là giúp người dùng nghi nhớ từ vựng, để làm được điều đó phần giải nghĩa được thiết kế ở mặt sau.', 'image/nxb/ScreenShot00032.jpg', 1),
(12, 'NXB Tri Thức ', 'Nhà Xuất bản Tri Thức: chuyên xuất bản nhiều sách thuộc nhiều thể loại khác nhau với mục đích trở thành một diễn đàn và địa chỉ có uy tín của các học giả, nhà nghiên cứu, học sinh, sinh viên và độc giả Việt Nam ở khắp nơi trên thế giới, để được thừa nhận là Nhà xuất bản tham chiếu trong việc phổ biến các trào lưu tư tưởng lớn, cổ điển lẫn hiện đại.\r\n\r\nTôn chỉ hoạt động: Chân thành – chuyên nghiệp – khai phóng\r\n\r\nĐịa chỉ: Tầng 1 - Tòa nhà VUSTA - 53 Nguyễn Du - Quận Hai Bà Trưng - Hà Nội\r\n\r\nĐiện thoại: 844 3944 7280 - Fax: 844 3945 4660\r\n\r\nWebsite: http://www.nxbtrithuc.com.vn', 'image/nxb/ScreenShot00033.jpg', 5),
(13, 'NXB Tổng Hợp', 'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh là cơ quan chính trị – tư tưởng – văn hóa của Đảng bộ và nhân dân thành phố Hồ Chí Minh được thành lập từ năm 1977.\r\n\r\nHàng năm, Nhà xuất bản Tổng hợp xuất bản hàng ngàn tựa sách gồm nhiều thể loại về chính trị, lịch sử, văn hóa, sách kinh tế, pháp luật, khoa học - kỹ thuật, từ điển, ngoại ngữ, sách tham khảo cho học sinh từ mẫu giáo đến trung học phổ thông; giáo trình, tài liệu tham khảo, sách học ngoại ngữ cho sinh viên cao đẳng, đại học; bên cạnh đó còn có các ấn phẩm văn hóa như lịch, bưu ảnh, sổ tay, bản đồ…\r\n\r\nMột số tựa sách văn học, truyện tiểu thuyết, sách kinh doanh bán chạy của NXB Tổng hợp: truyện Luyện Yêu, Khi Ta Đi Lướt Qua Nhau, Bí Quyết Thuyết Trình Của Steve Jobs, Đóng Cửa Thả Boss ...\r\n\r\nĐịa chỉ: 62 Nguyễn Thị Minh Khai, Quận 1, Tp HCM\r\nĐT: 08. 38256804 – 38296764\r\nWebsite: http://nxbhcm.com.vn/', 'image/nxb/ScreenShot00034.jpg', 4),
(14, 'NXB Giáo Dục ', 'Tên đơn vị: NHÀ XUẤT BẢN GIÁO DỤC VIỆT NAM Địa chỉ: Số 81 Trần Hưng Đạo - Hoàn Kiếm - Hà Nội Website: http://www.nxbgd.vn Được thành lập năm 1957, Nhà xuất bản Giáo dục là một doanh nghiệp Nhà nước trực thuộc Bộ Giáo dục & Đào tạo, có nhiệm vụ tổ chức biên soạn, biên tập, in ấn và tổng phát hành các loại sách giáo khoa và các xuất bản phẩm giáo dục khác phục vụ giảng dạy, học tập của các ngành học, bậc học trong toàn quốc; đồng thời giúp Bộ Giáo dục & Đào tạo chỉ đạo công tác phát hành sách và Thư viện trường học.', 'image/nxb/ScreenShot00035.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `posts_comments_nm`
--

CREATE TABLE IF NOT EXISTS `posts_comments_nm` (
  `postId` int(11) unsigned NOT NULL,
  `commentId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`postId`,`commentId`),
  KEY `fk_posts_comments_comments` (`commentId`),
  KEY `fk_posts_comments_posts` (`postId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_comments_nm`
--

INSERT INTO `posts_comments_nm` (`postId`, `commentId`) VALUES
(25, 1),
(26, 2),
(26, 3),
(26, 4),
(26, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE IF NOT EXISTS `tbl_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `nxb` int(11) NOT NULL,
  `author` varchar(128) NOT NULL,
  `km_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `cost` int(13) NOT NULL,
  `introduc` text NOT NULL,
  `namxb` int(11) NOT NULL,
  `slnhap` int(11) NOT NULL,
  `slcon` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`id`, `image`, `nxb`, `author`, `km_id`, `name`, `type`, `cost`, `introduc`, `namxb`, `slnhap`, `slcon`) VALUES
(2, '', 2, 'mac dang khoa', 9, 'abcd', 1, 1000, '<p>\r\n	asdasd</p>\r\n', 1994, 300, 0),
(3, '', 3, '2121', 9, '12', 2121, 212, '<p>\r\n	2121</p>\r\n', 212, 2121, 2121),
(4, 'asda', 4, 't', 5, 'asd', 0, 123, '1asd', 11, 231, 12312),
(5, 'image/minnanonihongo1.jpeg', 6, 'nhat ban', 1, 'Minna no nihongo I', 1, 100000, 'Minna no Nihongo và Genki là hai giáo trình rất quen thuộc đối với những ai mới làm quen với tiếng Nhật. Phần đông những trung tâm dạy tiếng Nhật ở Việt Nam chọn Minna no Nihongo làm giáo trình chính, tuy nhiên vẫn có những bạn sử dụng Genki để bắt đầu học tiếng Nhật. Vậy những ưu điểm, khuyết điểm của hai giáo trình là gì, và lựa chọn nào sẽ là phù hợp cho trường hợp của bạn? Chúng ta hãy cùng tìm hiểu.', 1994, 120, 120),
(6, 'image/hatgiongtamhon1.jpeg', 4, 'TP.Hồ CHí Minh', 1, 'Hạt Giống Tâm Hồn I', 2, 20000, 'Một bộ sách nổi tiếng về các câu chuyện nghệ thuật sống và giá trị đạo đức được Công ty First News Trí Việt góp nhặt, sưu tầm và nhận về từ sự đóng góp từ cộng đồng. Bộ sách là nguồn cảm hứng và sự thúc đẩy con người vươn lên trong mọi nghịch cảnh, chiến thắng chính mình, và sống xứng đáng với phẩm giá của mình. Bộ sách đã được đại đa số cộng đồng giới trẻ đón nhận.', 2006, 120, 110),
(7, 'image/ScreenShot00001.jpg', 2, 'Nhiều Tác Giả ', 1, 'Giáo Trình Kỹ Thuật Lập Trình C Căn Bản Và Nâng Cao ', 1, 84000, 'Giáo trình Kỹ thuật lập trình Ngôn ngữ C được hình thành qua nhiều năm giảng dạy của các tác giả. Ngôn ngữ lập trình C là một môn học cơ sở trong chương trình đào tạo kỹ sư, cử nhân tin học của nhiều trường đại học. Ở đây sinh viên được trang bị những kiến thức cơ bản nhất về lập trình, các kỹ thuật  tổ chức dữ liệu và lập trình căn bản với ngôn ngữ C.\r\n\r\nĐể đáp ứng nhu cầu học tập ngôn ngữ lập trình C của sinh viên cũng như nhu cầu về tài liệu cho mọi người trong nhiều ngành khoa học và kỹ thuật cần nghiên cứu C để giải quyết các bài toán của mình, tác giả biên soạn cuốn sách này. Nội dung cuốn sách là tập hợp một cách có chọn lọc các bài giảng của các tác giả.', 2015, 100, 80),
(8, 'image/ScreenShot00002.jpg', 4, 'Nguyễn Nguyệt Minh', 2, 'Tìm Hiểu Về Công Nghệ Thông Tin', 1, 50000, 'Loài người đang bước vào thời đại thông tin. Thông tin, thông tin hóa, thông tin xã hội và nhiều từ ngữ mới bao hàm nội dung này đều đang trở thành chủ đề nóng hổi của xã hội.\r\n\r\nCuốn sách này chủ yếu giới thiệu về công nghệ thông tin hiện đại. Công nghệ thông tin ngày nay có quan hệ mật thiết với công nghệ máy tính, công nghệ tự động hóa. Do vậy, cuốn sách cũng giới thiệu cả về công nghệ máy tính và công nghệ tự động hóa nhằm đưa đến cho bạn đọc kiến thức tổng hợp và toàn diện.\r\n\r\nCuốn sách gồm những nội dung chính như sau:\r\n\r\nLàm thế nào để kết nối điện thoại lại với nhau?\r\n\r\nCáp quang\r\n\r\nCông nghệ Bluetooth\r\n\r\nĐịa chỉ IP\r\n\r\nTruyền hình vệ tinh\r\n\r\nMạng tích hợp IC\r\n\r\nCông nghệ WLAN\r\n\r\nHệ thống định vị toàn cầu GPS\r\n...', 2015, 100, 20),
(9, 'image/ScreenShot00003.jpg', 8, 'Nguyễn Đức Hiếu', 2, 'Tự Học Nhanh Word 2013', 1, 35000, 'Cuốn sách được biên soạn với mục đích củng cố kiến thức cơ bản, cập nhật các tính năng mới, trang bị các kỹ năng về ứng dụng WinWord cho người sử dụng máy tính. Sách trình bày về MS Office Word 2013 với những tính năng cơ bản và tiện dụng, hiện đại và tối ưu hóa giao diện.\r\n\r\nNội dung sách gồm những nội dung chính như sau:\r\n\r\n- Làm quen với Microsoft Word 2013.\r\n\r\n- Soạn thảo văn bản.\r\n\r\n- Hiệu chỉnh văn bản.\r\n\r\n- Làm việc với bảng biểu.\r\n\r\n- Chèn các đối tượng vào văn bản.\r\n\r\n- In ấn.', 2015, 60, 20),
(10, 'image/ScreenShot00004.jpg', 4, 'Nguyễn Đức Hiếu', 1, 'Tự Học Photoshop CS6', 1, 40000, 'Cuốn sách được biên soạn với mục đích củng cố kiến thức cơ bản, cập nhật các tính năng mới, trang bị các kỹ năng về ứng dụng WinWord cho người sử dụng máy tính. Sách trình bày về MS Office Word 2013 với những tính năng cơ bản và tiện dụng, hiện đại và tối ưu hóa giao diện.\r\n\r\nNội dung sách gồm những nội dung chính như sau:\r\n\r\n- Làm quen với Microsoft Word 2013.\r\n\r\n- Soạn thảo văn bản.\r\n\r\n- Hiệu chỉnh văn bản.\r\n\r\n- Làm việc với bảng biểu.\r\n\r\n- Chèn các đối tượng vào văn bản.\r\n\r\n- In ấn.', 2015, 10, 5),
(11, 'image/ScreenShot00005.jpg', 3, 'Nhật Minh - Hà Thành', 1, 'Tự học photoshop CS5', 1, 39000, 'Có thể nói, Adobe Photoshop CS5 là một trong những giải pháp tuyệt đỉnh cho các thao tác xử lý ảnh số cao cấp, cung cấp mọi tính năng phối ghép và biên tập vốn có trong Photoshop, cộng thêm những công cụ đột phá cho phép người sử dụng tạo lập và chỉnh sửa các nội dung 3D và chuyển động thú vị theo nhu cầu, sở thích. Với những đặc điểm ứng dụng vượt trội như: phá vỡ những giới hạn sáng tạo với những thiết kế 2D/3D đẳng cấp thế giới; sử dụng những tính năng lựa chọn, tô vẽ và tinh chỉnh mạnh mẽ mới nhằm tạo ra những bức ảnh đột phá, làm cho trang web thêm sống động và tạo nét riêng biệt cho mỗi trang web; dễ dàng lựa chọn các thành phần ảnh tinh tế cho bố cục; tạo các ảnh nghệ thuật 3D cho logo và nút bấm..., Adobe Photoshop CS5 luôn là sự lựa chọn hàng đầu của các tổ chức, cá nhân về một phần mềm đồ họa thực sự ấn tượng và tạo ra được những hiệu ứng mạnh mẽ, tích cực.\r\n\r\nTự học Adobe Photoshop CS5 sẽ cung cấp đến người sử dụng những thông tin cơ bản lẫn nâng cao liên quan đến một trong những phần mềm được yêu thích và sử dụng nhiều nhất hiện nay trên toàn thế giới.', 2015, 10, 10),
(12, 'image/ScreenShot00006.jpg', 7, 'Hà Thành - Trí Việt', 1, 'Tự Học Nhanh Word 2010', 1, 37000, 'Trong một vài năm gần đây, xu thế phát triển những phần mềm mã nguồn mở ngày càng nhiều, nhất là các ứng dụng trong bộ phần mềm văn phòng như soạn thảo văn bản, bảng tính hay ứng dụng trình chiếu. Tuy nhiên, Microsoft  Office vẫn chiếm được sự tin tưởng của người sử dụng, bằng việc cho ra đời phiên bản Office 2007 với giao diện đẹp, thiết kế khoa học. Ba ứng dụng phổ biến nhất là Word, Excel, PowperPoint.\r\n\r\nNội dung cuốn sáchgồm 7 bài học, hướng dẫn kiến thức và kỹ năng cơ bản liên quan đến Word  2010:\r\n\r\n- Soạn thảo văn bản\r\n\r\n- Hiệu chỉnh văn bản trên word 2010\r\n\r\n- Làm việc với bảng biểu\r\n\r\n- Chèn các đối tượng vào văn bản\r\n\r\n- Một số mẹo hay để thao tác nhanh trên word', 2015, 10, 10),
(13, 'image/ScreenShot00007.jpg', 8, 'Hà Thành - Trí Việt', 2, 'Tự Học Nhanh Word 2007', 1, 33000, 'Trong một vài năm gần đây, xu thế phát triển những phần mềm mã nguồn mở ngày càng nhiều, nhất là các ứng dụng trong bộ phần mềm văn phòng như soạn thảo văn bản, bảng tính hay ứng dụng trình chiếu. Tuy nhiên, Microsoft  Office vẫn chiếm được sự tin tưởng của người sử dụng, bằng việc cho ra đời phiên bản Office 2007 với giao diện đẹp, thiết kế khoa học.\r\n\r\nNội dung cuốn sách hướng dẫn những thủ thuật cơ bản liên quan đến Word 2007:\r\n\r\nHướng dẫn học nhanh cách cài đặt và tìm hiểu giao diện Word 2007\r\n\r\nTự học nhanh cách soạn thảo văn bản trong Word 2007\r\n\r\nHọc nhanh cách chỉnh sửa văn bản trên Word 2007\r\n\r\nHọc nhanh cách vẽ hình, biểu đồ, biểu thức trong Word 2007', 2015, 15, 15),
(14, 'image/ScreenShot00008.jpg', 11, 'Hà Thành - Trí Việt', 3, 'Tự Học Nhanh Excel 2010', 1, 49000, 'Trong một vài năm gần đây, xu thế phát triển những phần mềm mã nguồn mở ngày càng nhiều, nhất là các ứng dụng trong bộ phần mềm văn phòng như soạn thảo văn bản, bảng tính hay ứng dụng trình chiếu. Tuy nhiên, Microsoft  Office vẫn chiếm được sự tin tưởng của người sử dụng, bằng việc cho ra đời phiên bản Office 2007 với giao diện đẹp, thiết kế khoa học. Ba ứng dụng phổ biến nhất là Word, Excel, PowperPoint.\r\n\r\nNội dung cuốn sáchgồm 7 bài học, hướng dẫn kiến thức và kỹ năng cơ bản liên quan đến Excel 2010:\r\n\r\n- Thao tác với bảng tính\r\n\r\n- Làm việc với dữ liệu trên Excel 2010\r\n\r\n- Công thức và hàm, tìm hiểu một số hàm cơ bản trong Excel 2010\r\n\r\n- Mẹo nhỏ giúp thao tác nhanh với Excel 2010\r\n\r\n- In ấn trong Excel 2010', 2015, 10, 10),
(15, 'image/ScreenShot00009.jpg', 10, 'Jeremy Osborn và Nhóm AGI Creative', 1, 'Thiết Kế Web Với Dreamweaver', 1, 59000, 'Adobe Photoshop là phân mềm hàng đầu trong ngành công nghiệp xử lý ảnh số. Tương tự như Thiết kế web với Dreamweaver CS4, cuốn sách Thiết kê hình ảnh với Photoshop CS4 cung cấp hướng dẫn trọn vẹn về những kỹ năng sử dụng công cụ thiết yếu để thiết kế và thao tác với hình ảnh dùng trong in ấn, đăng tải lên web, làm nội dung truyền thông đa phương tiện, ghép vào clip và phục vụ việc thể hiện ý tưởng sáng tạo một cách trực quan bằng hình ảnh.', 2015, 10, 9),
(16, 'image/ScreenShot00010.jpg', 13, 'Trí Việt - Hà Thành', 1, 'Tự Học Nhanh Word 2003 - 2007', 1, 49000, 'Cuốn sách được biên soạn với mục đích củng cố kiến thức cơ bản, cập nhật các tính năng mới, trang bị các kỹ năng về ứng dụng WinWord cho người sử dụng máy tính. Sách trình bày về MS Office Wors 20003 với những tính năng cơ bản và tiện dụng, bên cạnh đó cũng giới thiệu về MS Office Word 2007 hiện đại và tối ưu hóa giao diện.\r\n\r\nNội dung sách gồm 3 phần:\r\n\r\n- Kiến thức cơ bản về Office Word 2003\r\n\r\n- Tự học nhanh Word qua hai phiên bản 2003 - 2007\r\n\r\n- Tự học hiệu chỉnh văn bản với Word 2003 - 2007', 2014, 5, 5),
(17, 'image/ScreenShot00011.jpg', 13, 'Hà Thành - Trí Việt', 1, 'Tin Học Dành Cho Người Tự Học', 1, 59000, 'Cuốn sách đáp ứng nhu cầu của người sử dụng máy tính, với mục đích giúp người học có thể sử dụng thành thạo nhiều phần mềm ứng dụng khác nhau.\r\n\r\nNội dung sách gồm 4 phần:\r\n\r\nPhần 1: Tìm hiểu các kiến thức cơ bản về phần cứng máy tính\r\n\r\nPhần 2: Kiến thức cơ bản về Windows XP\r\n\r\nPhần 3: Tự học các kiến thức cơ bản về các phần mềm tin học văn phòng\r\n\r\nPhần 4: Quản trị mạng', 2015, 10, 10),
(18, 'image/ScreenShot00012.jpg', 2, 'Hà Thành - Trí Việt', 1, 'Học Nhanh Tin Học Văn Phòng', 1, 45000, 'Cuốn sách trình bày các kiến thức cơ bản về Hệ điều hành Windows XP, Microsoft Office 2003, về ứng dụng Internet, nhằm giúp người học trang bị nhanh nhất các kiến thức về tin học văn phòng.\r\n\r\nNội dung sách gồm 5 phần:\r\n\r\n- Khám phá và làm việc trên hệ điều hành Windows\r\n\r\n- Các kiến thức Microsoft Word 2003\r\n\r\n- Các kiến thức về Microsoft Excel 2003\r\n\r\n- Các kiến thức về PowerPoint 2003\r\n\r\n- Cách lập hòm thư gmail và Blog trên Google Internet', 2015, 5, 5),
(19, 'image/ScreenShot00013.jpg', 14, 'Hà Thành - Trí Việt', 1, 'Hướng Dẫn Sử Dụng Excel 2007', 1, 49000, 'Trong một vài năm gần đây, xu thế phát triển những phần mềm mã nguồn mở ngày càng nhiều, nhất là các ứng dụng trong bộ phần mềm văn phòng như soạn thảo văn bản, bảng tính hay ứng dụng trình chiếu, torng số này có thể kể đến như Open Office, King Office. Tuy nhiên, Microsoft Office vẫn chiếm được sự tin tưởng của người sử dụng, bằng việc cho ra đời phiên bản Office 2007 với giao diện thiết kế khoa học, đẹp mắt.\r\n\r\nNội dung sách gồm 7 bài học, giới thiệu một trong ba ứng dụng phổ biến nhất của Microsoft là Excel.', 2015, 10, 10),
(20, 'image/ScreenShot00014.jpg', 12, 'Trí Việt - Hà Thành', 1, 'Tự Học Corel Draw X4', 1, 56000, 'Corel DRAW là một công cụ dùng cho việc thiết kế đồ họa với khả năng tinh tế và tốc độ vượt trội của Corel DRAW trong việc thực hiện những sản phẩm "văn hóa trực quan".\r\n\r\nBên cạnh ý tưởng sáng tạo của người thiết kế đồ họa, có thể nhận ra dấu ấn của Corel DRAW trong nhiều trang minh họa, quảng cáo, nhãn hiệu, bích chương. Ngoài ra, các chức năng vẽ chính xác làm cho Corel DRAW ngày càng được ưa chuộng trong việc thiết kế tài liệu, báo cáo thuộc các lĩnh vực khoa học kỹ thuật. Cuốn sách này giúp bạn tìm hiểu cách sử dụng Corel DRAW và rèn luyện những kỹ năng đồ họa căn bản nhất.', 2015, 10, 10),
(21, 'image/ScreenShot00015.jpg', 5, 'Jonathan Herring', 1, 'Thực Hành AutoCad 2016 (Cơ Bản & Nâng Cao)', 1, 79000, 'Cuốn sách gồm những nội dung chính như sau:\r\n\r\nKhởi đầu với AutoCAD 2016\r\n\r\nCác kỹ năng bản vẽ cơ bản\r\n\r\nSử dụng trợ giúp bản vẽ\r\n\r\nChỉnh sửa các đối tượng\r\n\r\nĐịnh hình các đường cong\r\n\r\nKiểm soát tầm nhìn diện mạo đối tượng\r\n\r\nTổ chức các đối tượng\r\n\r\nLàm việc với các khối và Xref\r\n\r\nTạo và hiệu chỉnh văn bản\r\n\r\nĐo các kích thước\r\n\r\nGiữ quyền kiểm soát bằng các ràng buộc\r\n\r\nBố trí và chú thích các đối tượng.', 2015, 10, 1),
(22, 'image/ScreenShot00016.jpg', 1, 'Timothy J.O’ Leary - Linda I. O’leary', 1, 'Tin Học Cơ Sở', 1, 119000, 'Công nghệ cao và công nghệ thông tin nói riêng đã và đang giúp hàng loạt quốc gia châu Á, trong đó có Việt Nam, thu hẹp khoảng cách và bước kịp các quốc gia phương Tây về sự phát triển.\r\n\r\nTin Học Cơ Sở cung cấp cho người học những kiến thức căn bản cần biết về công nghệ thông tin. Sách truyền tải những nhận thức sâu sắc về tác động của công nghệ thông tin đối với cuộc sống con người và môi trường, nhằm bổ sung nền tảng thiết yếu để xây dựng những kỹ năng tin học cần thiết cho độc giả.', 2015, 10, 10),
(23, 'image/ScreenShot00017.jpg', 8, 'Thái Thanh Sơn', 1, 'Tin Học Cơ Bản Ứng Dụng Trong Đời Sống', 1, 68000, 'Để giúp những người không chuyên về công nghệ thông tin có một tài liệu đơn giản, có thể tự học, dễ sử dụng, nhưng rất cơ bản và cần thiết nhất cho cuộc sống và công việc hàng ngày của mình, Ban công nghệ và ban đào tạo của viện nghiên cứu và phát triển tin học ứng dụng (AIRDI) tổ chức biên soạn nội dung xuất bản cuốn Tin Học Cơ Bản Ứng Dụng Trong Đời Sống. Nội dung cuốn sách gồm 8 chương:\r\n\r\nChương 1: Thông tin và lượng thông tin\r\n\r\nChương 2: Làm quen với máy tính\r\n\r\nChương 3: Chương trình soạn thảo máy tính\r\n\r\nChương 4: Chương trình bản tính Excel\r\n\r\nChương 5: Chương trình trình chiếu\r\n\r\nChương 6: Mạng máy tính, khai thác một vài dịch vụ trên Internet\r\n\r\nChương 7: Mạng xã hội Blog\r\n\r\nChương 8: Virus máy tính', 2015, 10, 10),
(24, 'image/ScreenShot00018.jpg', 9, 'Hà Thành - Trí Việt', 1, 'Học Thiết Kế Đồ Họa Trên CorelDRAW X3', 1, 45000, 'Chương 1: Làm việc với trang bản vẽ\r\n\r\nChương 2: Làm việc với các đối tượng trên Coreldraw X3\r\n\r\nChương 3: Làm việc với các công cụ vẽ hình của Coreldraw X3\r\n\r\nChương 4: Làm việc với các công cụ vẽ đường\r\n\r\nChương 5: Công cụ tô màu và đường biên\r\n\r\nChương 6:  Làm việc với công cụ văn bản trên Coreldraw X3', 2015, 10, 10),
(25, 'image/ScreenShot00019.jpg', 8, 'Hà Thành - Trí Việt', 1, 'Hướng Dẫn Sử Dụng Access 2003', 1, 56000, 'update', 2015, 10, 10),
(26, 'image/ScreenShot00020.jpg', 4, 'HVL.COM', 2, 'Hướng Dẫn Tự Học Microsoft Windows 7 - Các Mẹo & Phím Tắt Trong 10 Phút', 1, 56000, 'Hướng Dẫn Tự Học Microsoft Windows 7 - Các Mẹo & Phím Tắt Trong 10 Phút\r\n\r\nMicrosoft Windows 7 là một hệ điều hành được đông đảo người dùng sử dụng rộng rãi trên các máy tính ngày nay, vói các tính năng vượt trội và dễ sử dụng.\r\n\r\nQuyển sách Hướng Dẫn Tự Học Microsoft Windows 7 - Các Mẹo & Phím Tắt Trong 10 Phút được biên soạn bao gồm các bài hướng dẫn ngắn gọn và dễ hiểu từng bước rõ ràng bằng hình minh họa, nhằm giúp bạn tự học và tự thực hành một cách nhanh chóng và đặc biệt không lãng phí thời gian của bạn như:\r\n\r\n-  Khởi đầu với Windows 7\r\n\r\n-  Quản lý Desktop\r\n\r\n-  Làm việc với các thư viện\r\n\r\n-  Thưởng thức các bức ảnh và Media\r\n\r\n-  Quản lý các thiết bị và máy in\r\n\r\n-  Kết nối một mạng Wireless\r\n\r\n-  Duyệt web với Internet Explorer 8\r\n\r\n-  Tạo và sử dụng Homegroup\r\n\r\n-  Kết nối với những máy tính Windows khác\r\n\r\n-  Sử dụng Windows Backup\r\n\r\n-  Các thủ thuật Windows 7\r\n\r\n-  Các phím tắt Windows 7\r\n\r\nQua quyển sách này, bạn sẽ tự học và tự thực hành nhằm sử dụng hệ điều hành Microsoft Windows 7 vào công việc của mình một cách nhanh chóng và hiệu quả nhất.', 2015, 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chitietdonhang`
--

CREATE TABLE IF NOT EXISTS `tbl_chitietdonhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_book` int(11) NOT NULL,
  `ten sach` varchar(256) NOT NULL,
  `so luong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donhang`
--

CREATE TABLE IF NOT EXISTS `tbl_donhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tong tien` int(11) NOT NULL,
  `thoi gian` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE IF NOT EXISTS `tbl_giohang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_book` int(11) NOT NULL,
  `name_book` varchar(200) NOT NULL,
  `cost` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id`, `id_book`, `name_book`, `cost`, `number`, `status`, `time`) VALUES
(1, 21, 'Thực Hành AutoCad 2016 (Cơ Bản & Nâng Cao)', 79000, 3, 1, '2015-11-02 07:19:17'),
(2, 6, 'Hạt Giống Tâm Hồn I', 20000, 10, 1, '2015-11-02 07:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_km`
--

CREATE TABLE IF NOT EXISTS `tbl_km` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `phantram` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `tbl_km`
--

INSERT INTO `tbl_km` (`id`, `content`, `phantram`) VALUES
(9, '', 5),
(10, '', 10),
(11, '', 15),
(12, '', 20),
(13, '', 25),
(14, '', 30),
(15, '', 35),
(16, '', 40),
(17, '', 45),
(18, '', 50),
(19, '', 55),
(20, '', 60),
(21, '', 65),
(22, '', 70),
(23, '', 75),
(24, '', 80);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rate_book`
--

CREATE TABLE IF NOT EXISTS `tbl_rate_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_book` int(11) NOT NULL,
  `noi dung` text NOT NULL,
  `gia hop li` int(11) NOT NULL,
  `hop lua tuoi` int(11) NOT NULL,
  `noi dung hay` int(11) NOT NULL,
  `hinh thuc` int(11) NOT NULL,
  `sang tao` int(11) NOT NULL,
  `diem trung binh` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report`
--

CREATE TABLE IF NOT EXISTS `tbl_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `messeage` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_report`
--

INSERT INTO `tbl_report` (`id`, `id_post`, `id_user`, `content`, `status`, `messeage`) VALUES
(1, 0, 5, 'ádadasd', '0', ''),
(2, 0, 5, 'dấd', '3', ''),
(3, 0, 5, 'Chưa trả lờisdasd', '1', 'vai dai'),
(4, 0, 5, 'hâha', '0', 'Chưa trả lời'),
(5, 0, 5, '1212', '0', 'Chưa trả lời'),
(6, 0, 5, '24234', '0', 'Chưa trả lời'),
(7, 0, 5, '24234', '0', 'Chưa trả lời'),
(8, 0, 5, 'à', '0', 'Chưa trả lời'),
(9, 0, 1, 'adasd', '0', 'Chưa trả lời'),
(10, 0, 5, 'fsfsdf', '0', 'Chưa trả lời'),
(11, 0, 6, 'ssdadas', '0', 'Chưa trả lời'),
(12, 0, 6, 'a du hjhj', '1', 'It''s common to see users wishing to make substring DB queries, using the % metacharacter used to match anything; in this FAQ we''ll search the tbl_comments table from the blog tutorial hoping to find the text in $match in the content column');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tacgia`
--

CREATE TABLE IF NOT EXISTS `tbl_tacgia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `profile` text NOT NULL,
  `frequency` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_tacgia`
--

INSERT INTO `tbl_tacgia` (`id`, `name`, `profile`, `frequency`) VALUES
(4, 'Nguyễn Nhật Ánh', 'Nguyễn Nhật Ánh là tên và cũng là bút danh của một nhà văn Việt Nam chuyên viết cho tuổi mới lớn.\r\nThuở nhỏ ông theo học tại các trường Tiểu La, Trần Cao Vân và Phan Chu Trinh. Từ 1973 Nguyễn Nhật Ánh chuyển vào sống tại Sài Gòn, theo học ngành sư phạm. Ông đã từng đi Thanh niên xung phong, dạy học, làm công tác Đoàn Thanh niên Cộng Sản Hồ Chí Minh. Từ 1986 đến nay ông là phóng viên nhật báo Sài Gòn Giải Phóng, lần lượt viết về sân khấu, phụ trách mục tiểu phẩm, phụ trách trang thiếu nhi và hiện nay là bình luận viên thể thao trên báo Sài Gòn Giải Phóng Chủ nhật với bút danh Chu Đình Ngạn. Ngoài ra, Nguyễn Nhật Ánh còn có những bút danh khác như Anh Bồ Câu, Lê Duy Cật, Đông Phương Sóc, Sóc Phương Đông,...', 10),
(5, 'TONY BUỔI SÁNG', 'Tony Buổi Sáng khởi đầu là một Fan Page trên Facebook, tác giả sở hữu của Fan Page này không xuất hiện nhân thân để xác định thông tin ai đang quản lý. Tony Buổi Sáng thường chia sẻ những câu chuyện trong cuộc sống, trong kinh doanh bằng cách kể chuyện hài hước, dí dỏm mà không kém phần sâu sắc. Tập hợp rất nhiều bài viết hay trên Fan Page, tuy vậy, quy định của Fan Page là không cho bình luận nên hiếm thấy bình luận nào trên trang này mặc dù số lượng thích và chia sẻ vô cùng lớn.', 2),
(6, 'MINH NHẬT', '\r\nMINH NHẬT\r\nMinh Nhật, tên đầy đủ là Nguyễn Minh Nhật, sinh ngày 3/3 tại Hà Nội. Minh Nhật còn có các bút danh khác như Nhật Zest, Sky, Lê Minh.\r\n\r\nNhững cuốn sách từng xuất bản:\r\nSự lựa chọn của bầu trời (2003)\r\nBỗng một ngày đẹp trời (2004)\r\nHà Nội chờ (2007)\r\nMột chút mỗi ngày (2009)\r\nCafe yêu (2011)\r\nNơi những cơn gió dừng chân (2012)\r\nNhững đêm không ngủ (Tản văn) (2013)\r\nNhững quân cờ Domino (Tiểu  (2014)', 5),
(7, 'GÀO', 'Gào (Vũ Phương Thanh) sinh năm 1988, thuộc thế hệ những nhà văn cuối thời 8X. Trong vài ba năm trở lại đây, cái tên Gào đã gây được sự chú ý trên văn đàn, đặc biệt đối với giới trẻ tuổi teen yêu văn học. Cô là một blogger đính đám và được cộng đồng mạng phong danh là "nhà văn hotgirl".\r\n\r\nCác tác phẩm nổi tiếng của Gào: Cho em gần anh thêm chút nữa, Nhật ký son môi, Tự sát, Yêu Anh Bằng Tất Cả Những Gì Em Có - Mất Anh Bởi Tất Cả Những Thứ Em Cho, Hoa Linh Lan...', 6),
(8, 'TRẦN VỸ', 'Trần Vỹ, tốt nghiệp khoa công nghệ điện tử - thông tin Đại học Chiết Giang năm 1988, đến năm 1992 tham gia Câu lạc bộ Anh ngữ Hàng Châu và theo học Jack Ma. Ba năm sau đó, Jack Ma khởi nghiệp, Câu lạc bộ Anh ngữ giải tán. Năm 2005, Trần Vỹ trở thành trợ lý cho đạo diễn nổi tiếng Trương Kỷ Trung, tham gia chế tác bộ phim "Bích Huyết kiếm", "Lộc đỉnh ký", "Đại Đường du hiệp truyện". Đến năm 2008, gia nhập tập đoàn Alibaba, trở thành trợ lý của Jack Ma cho tới hiện nay.\r\n\r\nTự nhận mình là một người "thích chém gió" và "thiếu lý tưởng nhất Alibaba", tác giả tình nguyện làm "bao kiếm" cho Jack Ma. Có thể nói, ngoài gia đình, tác giả chính là người thân cận nhất và thấu hiểu Jack Ma nhất trong suốt 7 năm nay.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE IF NOT EXISTS `tbl_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `frequency` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`id`, `name`, `frequency`) VALUES
(1, 'Sách tiếng anh', 2),
(2, 'Sách văn học - tiểu thuyết', 3),
(3, 'Sách kinh tế', 5),
(4, 'Sách chuyên nghành', 1),
(5, 'Sách nuôi dạy con', 2),
(6, 'Sách kỹ năng sống', 3),
(7, 'Sách giáo khoa - tham khảo', 3),
(8, 'Sách học ngoại ngữ - từ diển', 3),
(9, 'Sách truyện thiếu nhi', 2),
(10, 'Truyện tran, manga, comic', 5),
(11, 'Sách văn hóa, nghệ thuật, du lịch', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `profile` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `user_type` int(11) NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `profile`, `phone`, `user_type`, `note`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'hoang@gmail.com', 'abcd', '12345678', 1, ''),
(2, 'hadh', 'hadh', 'ha@gmail.com', '1212', '12121', 0, ''),
(3, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'hadh@ows.vn', '132', '121', 2, ''),
(4, 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'hadh@ows.vn', '132', '121', 2, ''),
(6, 'ha', '925cc8d2953eba624b2bfedf91a91613', 'hadh@ows.vn', 'hong ha', '12345', 0, ''),
(7, 'ha123', '6b7661bf1b2f463e984927960210d2e9', 'hadh@yahoo.com', 'adas', '1123', 0, ''),
(8, 'a', '0cc175b9c0f1b6a831c399e269772661', 'ha123@gmail.com', 'adas', '12', 0, ''),
(9, 'ha123', '202cb962ac59075b964b07152d234b70', 'admin@gmail.com', 'ádasd', '1312', 0, ''),
(12, 'admin', '0192023a7bbd73250516f069df18b500', 'hadh@yahoo.com', 'sfsdfsdf', '13123', 0, ''),
(13, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'ha123@gmail.com', 'đâsa', '123123', 0, ''),
(14, 'doanhongha', 'c4ca4238a0b923820dcc509a6f75849b', 'hadh@ows.vn', 'âdadsadas', '123123', 0, ''),
(15, '123', '202cb962ac59075b964b07152d234b70', 'ha@gmail.com', 'adasdad', '123123', 1, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
