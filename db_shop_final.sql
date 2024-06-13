-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 06:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `adminUser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `adminEmail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `adminPassword` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPassword`, `level`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) UNSIGNED NOT NULL,
  `brandName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(2, 'Sách Tiếng Việt'),
(3, 'English Book'),
(4, 'Tác phẩm kinh điển');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int(1) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(75, 'sg2la4ads6ofkoebn7chb9cegu', 37, 'Thiên Hoàng Minh Trị', '300000', 1, 'uploads/37.jpg'),
(76, 'sg2la4ads6ofkoebn7chb9cegu', 46, 'Wordsworth Classics: Gullivers Travels', '150000', 1, 'uploads/46.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) UNSIGNED NOT NULL,
  `catName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Sách Tiếng Việt'),
(2, 'English Book');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `contact`, `message`, `status`, `date`) VALUES
(3, 'Viet', 'viet@gmail.com', '0987654321', 'Ronaldo', 0, '2024-06-13 15:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `zip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(12, 'Tien Dat', 'Thanh Trì', 'Hà Nội', 'Vietnam', '1234', '0847782558', 'erikd3091@gmail.com', '202cb962ac59075b964b07152d234b70'),
(13, 'Hieu', 'da xua', 'Hà Nội', 'Vietnam', '24000', '0916957470', 'd@gmail.com', '968855132dc5d0eb2ed7c0fc4ef3421e'),
(14, 'Viet', 'HN', 'HN', 'VN', '1234', '0123456789', 'viet@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cus_order`
--

CREATE TABLE `tbl_cus_order` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `zip` int(245) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_cus_order`
--

INSERT INTO `tbl_cus_order` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`) VALUES
(12, 'Tien Dat', 'Thanh Trì', 'Hà Nội', 'Vietnam', 1234, '0847782558', 'erikd3091@gmail.com'),
(13, 'Hieu', 'Hà Nội', 'Hà Nội', 'Vietnam', 24000, '0916957470', 'd@gmail.com'),
(14, 'Viet', 'HN', 'HN', 'VN', 1234, '0123456789', 'viet@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(68, 12, 48, 'Truyện Đọc Tiếng Anh - Wordsworth Editions: The Little Prince', 10, '150000', 'uploads/48.jpg', '2024-06-12 21:34:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `catId` int(11) UNSIGNED NOT NULL,
  `brandId` int(11) UNSIGNED NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `des` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `des`, `price`, `image`, `type`) VALUES
(28, 'Đời ngắn đừng ngủ dài (Tái bản)', 1, 2, '<p>MS:001</p>', '“Mọi lựa chọn đều giá trị. Mọi bước đi đều quan trọng. Cuộc sống vẫn diễn ra theo cách của nó, không phải theo cách của ta. Hãy kiên nhẫn. Tin tưởng. Hãy giống như người thợ cắt đá, đều đặn từng nhịp, ngày qua ngày. Cuối cùng, một nhát cắt duy nhất sẽ phá vỡ tảng đá và lộ ra viên kim cương. Người tràn đầy nhiệt huyết và tận tâm với việc mình làm không bao giờ bị chối bỏ. Sự thật là thế.”', '75000', 'uploads/28.jpg', 0),
(29, 'Cây cam ngọt của tôi (Tái bản mùa 2)', 1, 2, '<p>MS:002</p>', 'Mở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.', '108000', 'uploads/29.jpg', 0),
(30, 'Rừng Nauy', 1, 2, '<p>MS:011</p>', 'Câu chuyện bắt đầu từ một chuyến bay trong ngày mưa ảm đạm, một người đàn ông 37 tuổi chợt nghe thấy bài hát gắn liền với hình ảnh người yêu cũ, thế là quá khứ ùa về xâm chiếm thực tại. Mười tám năm trước, người đàn ông ấy là chàng Toru Wanatabe trẻ trung, mỗi chủ nhật lại cùng nàng Naoko lang thang vô định trên những con phố Tokyo. Họ sánh bước bên nhau để thấy mình còn sống, còn tồn tại, và gắng gượng tiếp tục sống, tiếp tục tồn tại sau cái chết của người bạn cũ Kizuki. Cho đến khi Toru nhận ra rằng mình thực sự yêu và cần có Naoko thì cũng là lúc nàng không thể chạy trốn những ám ảnh quá khứ, không thể hòa nhập với cuộc sống thực tại và trở về dưỡng bệnh trong một khu trị liệu khép kín. Toru, bên cạnh giảng đường vô nghĩa chán ngắt, bên cạnh những đêm chơi bời chuyển từ cảm giác thích thú đến uể oải, ghê tởẫn kiên nhẫn chờ đợi và hy vọng vào sự hồi phục của Naoko. Cuối cùng, những lá thư, những lần thăm hỏi, hồi ức về lần ân ái duy nhất của Toru không thể níu Naoko ở lại, nàng chọn cái chết như một lối đi thanh thản. Từ trong mất mát, Toru nhận ra rằng mình cần tiếp tục sống và bắt đầu tình yêu mới với Midori.', '150000', 'uploads/30.jpg', 0),
(31, 'Nhà Giả Kim', 1, 2, '<p>MS:021</p>', '“Những nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', '80000', 'uploads/31.jpg', 0),
(33, 'Think And Grow Rich- 13 Nguyên tắc nghĩ giàu làm giàu', 1, 2, '<p>MS:041</p>', 'Think and grow rich – 13 nguyên tắc nghĩ giàu, làm giàu là cuốn sách “chỉ dẫn” duy nhất chỉ ra những nguồn lực bạn phải có để thành công. Mỗi chương trong cuốn sách đều đề cập đến bí quyết kiếm tiền, từ việc có niềm tin, có mong muốn đến những kiến thức chuyên sâu, những ý tưởng, những kế hoạch, những cách đưa ra quyết định.', '120000', 'uploads/33.jpg', 0),
(34, 'Rèn luyện tư duy phản biện', 1, 2, '<p>MS;042</p>', 'Như bạn có thể thấy, chìa khóa để trở thành một người có tư duy phản biện tốt chính là sự tự nhận thức. Bạn cần phải đánh giá trung thực những điều trước đây bạn nghĩ là đúng, cũng như quá trình suy nghĩ đã dẫn bạn tới những kết luận đó. Nếu bạn không có những lý lẽ hợp lý, hoặc nếu suy nghĩ của bạn bị ảnh hưởng bởi những kinh nghiệm và cảm xúc, thì lúc đó hãy cân nhắc sử dụng tư duy phản biện! Bạn cần phải nhận ra được rằng con người, kể từ khi sinh ra, rất giỏi việc đưa ra những lý do lý giải cho những suy nghĩ khiếm khuyết của mình. Nếu bạn đang có những kết luận sai lệch này thì có một sự thật là những đức tin của bạn thường mâu thuẫn với nhau và đó thường là kết quả của thiên kiến xác nhận, nhưng nếu bạn biết điều này, thì bạn đã tiến gần hơn tới sự thật rồi!', '99000', 'uploads/34.jpg', 1),
(35, 'Những đêm không ngủ, những ngày chậm trôi', 1, 2, '<p>MS:043</p>', '“Những đêm không ngủ, những ngày chậm trôi” là một khoảng lặng giữa những nốt nhạc vội vã chạy nhảy giữa cuộc sống hiện đại, để những con người dù mang trong mình những tổn thương tâm lý hay không đều cùng ngồi lại bên nhau, soi tỏ tâm hồn nhau bằng ánh sáng của sự thấu cảm, trao gửi cho nhau thương yêu và kết nối để chữa lành.', '86000', 'uploads/35.jpg', 1),
(36, 'Nếu biết trăm nam là hữu hạn', 1, 2, '<p>MS:044</p>', '“Người ta gọi tuổi mới lớn là “tuổi biết buồn”. “Biết buồn” tức là chạm ngõ cuộc đời rồi đó. Biết buồn tức là bắt đầu nhận ra sự hiện hữu của những khoảng trống trong tâm hồn. Biết buồn là khi nhận ra rằng có những lúc mình cảm thấy cô độc. Khi đó, hãy dành cho sự cô độc một khoảng riêng, hãy đóng khung sự cô đơn trong giới hạn của nó, như một căn phòng trống trong ngôi nhà tâm hồn. Mỗi lần vào căn phòng ấy, dù tự nguyện hay bị xô đẩy, thì bạn vẫn có thể điềm tĩnh khám phá bản thân trong sự tĩnh lặng. để rồi sau đó, bạn bình thản bước ra, khép cánh cửa lại và trở về với cuộc sống bề bộn thường ngày, vốn lắm nỗi buồn nhưng cũng không bao giờ thiếu niềm vui.”', '230000', 'uploads/36.jpg', 1),
(37, 'Thiên Hoàng Minh Trị', 1, 2, '<p>MS:045</p>', 'Thiên hoàng Minh Trị là tác phẩm nổi bật của Donald Keene - một học giả khổng lồ về Nhật Bản. Bản in lần này có thêm Lời nói đầu dành cho độc giả Việt Nam của tác giả và Dẫn nhập của TS. Nguyễn Xuân Xanh. Ngoài ra, sách có hai phụ lục in màu: Danh sách các thiên hoàng Nhật Bản, Một số hình ảnh thời Minh Trị.', '300000', 'uploads/37.jpg', 1),
(38, 'English Grammar n Use Book w Ans', 2, 3, '<p>MS:003</p>', 'The world\'s best-selling grammar series for learners of English. English Grammar in Use Fourth edition is an updated version of the world\'s best-selling grammar title. It has a fresh, appealing new design and clear layout, with revised and updated examples, but retains all the key features of clarity and accessibility that have made the book popular with millions of learners and teachers around the world. This \'with answers\' version is ideal for self-study. An online version, book without answers, and book with answers and CD-ROM are available separately.', '200000', 'uploads/38.jpg', 0),
(42, 'English Vocabulary In Use: Vocabulary Reference And Practice', 2, 3, '<p>MS:023</p>', 'The perfect choice for advanced-level students wanting to build their vocabulary skills. English Vocabulary in Use: Advanced includes over 2,000 new words and expressions which are presented and practised in typical contexts appropriate to this level. The book is informed by the Cambridge International Corpus to ensure that the vocabulary selected is useful and up-to-date. A test book (Test Your English Vocabulary in Use: Advanced - 0521 54534X) is also available for extra practice.', '190000', 'uploads/42.jpg', 0),
(43, 'Anh Em Nhà Karamazov ', 1, 4, '<p>MS:004</p>', 'Cuỗm được khối tài sản lớn từ người vợ đầu Adelaida Ivanovna xuất thân quý tộc giàu có, đày đọa vợ thứ hai Sofya Ivanovna nhu mì, khiến nàng hóa điên mà chết, thậm chí cưỡng bức cô gái ngây dại ngoài phố sinh ra đứa con hoang quái dị Smerdyakov, Fyodor Karamazov ma mãnh và tàn nhẫn sau khi góa cả hai vợ cũng tống khứ nốt, không nuôi nấng đứa con nào, sống đây đó sa đọa với đám đàn bà mạt hạng. Ở tuổi xế chiều, lão già ấy mới trở về điền địa của mình. Nơi đây, nhà Karamazov đoàn tụ. Nhưng chỉ là để đẩy tấn bi kịch của những tâm hồn bị hành hạ lên tột cùng bi thả', '400000', 'uploads/43.jpg', 0),
(44, 'Tam Quốc Diễn Nghĩa (Trọn Bộ 13 Tập) - Tái Bản 2020', 1, 4, '<p>MS:012</p>', 'Tam Quốc diễn nghĩa là pho tiểu thuyết lịch sử ưu tú của nền văn học cổ Trung Quốc được độc giả khắp thế giới yêu thích, say mê. Ở nước ta trước đây, Tam Quốc diễn nghĩa đã được dịch ra nhiều bản, trong số đó bản của cụ cử Phan Kế Bính được hoan nghênh hơn cả. Tiếc rằng bản dịch này dựa theo nguyên bản Tam Quốc diễn nghĩa cũ, trong đó có những điểm không được chính xác. Trong bản in tác phẩm này của NXB Phổ Thông năm 1959, cụ phó bảng Bùi Kỷ đã được mời tham gia hiệu đính bằng cách đem đối chiếu với bộ Tam quốc diễn nghĩa của Nhân dân văn học xã xuất bản năm 1958. Kỷ niệm 50 năm NXB Phổ thông lần đầu ra mắt bộ Tam quốc diễn nghĩa 13 tập (1959-2009), Công ty văn hóa Đông A đã chính thức phát hành lại bộ sách quý này dành cho bạn đọc chơi sách và mê truyện Tam Quốc diễn nghĩa.', '390000', 'uploads/44.jpg', 0),
(45, 'The Secret Garden (Vintage Childrens Classics)', 2, 4, '<p>MS:013</p>', 'When Mary Lennox is sent to Misselthwaite Manor to live with her uncle everybody says she is the most disagreeable-looking child ever seen. It is true, too. Mary is pale, spoilt and quite contrary. But she is also horribly lonely. Then one day she hears about a garden in the grounds of the Manor that has been kept locked and hidden for years. And when a friendly robin helps Mary find the key, she discovers the most magical place anyone could imagine...', '25000', 'uploads/45.jpg', 0),
(46, 'Wordsworth Classics: Gullivers Travels', 2, 4, '<p>MS:014</p>', ' classic satirical narrative was first published in 1726, seven years after Defoe\'s Robinson Crusoe (one of its few rivals in fame and breadth of appeal). As a parody travel-memoir it reports on extraordinary lands and societies, whose names have entered the English language: notably the minute inhabitants of Lilliput, the giants of Brobdingnag, and the Yahoos in Houyhnhnmland, where talking horses are the dominant species. It spares no vested interest from its irreverent wit, and its attack on political and financial corruption, as well as abuses in science, continue to resonate in our own times.', '150000', 'uploads/46.jpg', 0),
(47, 'Truyện Đọc Tiếng Anh - Wonder', 2, 3, '<p>MS:032</p>', '\"My name is August. I won\'t describe what I look like. Whatever you\'re thinking, it\'s probably worse.\" Auggie wants to be an ordinary ten-year-old. He does ordinary things - eating ice cream, playing on his Xbox. He feels ordinary - inside. But ordinary kids don\'t make other ordinary kids run away screaming in playgrounds. Ordinary kids aren\'t stared at wherever they go. Born with a terrible facial abnormality, Auggie has been home-schooled by his parents his whole life. Now, for the first time, he\'s being sent to a real school - and he\'s dreading it. All he wants is to be accepted - but can he convince his new classmates that he\'s just like them, underneath it all? Wonder is a funny, frank, astonishingly moving debut to read in one sitting, pass on to others, and remember long after the final page.', '147000', 'uploads/47.jpg', 0),
(48, 'Truyện Đọc Tiếng Anh - Wordsworth Editions: The Little Prince', 2, 3, '<p>MS:033</p>', 'The Little Prince is a classic tale of equal appeal to children and adults. On one level it is the story of an airman\'s discovery, in the desert, of a small boy from another planet - the Little Prince of the title - and his stories of intergalactic travel, while on the other hand it is a thought-provoking allegory of the human condition. First published in 1943, the year before the author\'s death in action, this translation contains Saint-Exupery\'s delightful illustrations.', '15000', 'uploads/48.jpg', 0),
(49, 'Truyện Đọc Tiếng Anh - Aesops Fables', 2, 3, '<p>MS:034</p>', 'Aesop\'s celebrated collection of fables has always been popular with both adults and children. These simple tales embody truths so powerful, the titles of the individual fables - the fox and the grapes, the dog in the manger, the wolf in sheep\'s clothing and many others - have entered the languages and idioms of most European tongues. This edition is beautifully illustrated in black and white by the great Arthur Rackham, and has an introduction by G.K. Chesterton.', '90000', 'uploads/49.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cus_order`
--
ALTER TABLE `tbl_cus_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
