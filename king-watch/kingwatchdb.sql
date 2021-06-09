-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 05:55 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `depositori_db`
--
CREATE DATABASE IF NOT EXISTS `depositori_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `depositori_db`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE `tbl_questions` (
  `q_id` int(6) NOT NULL,
  `form` varchar(6) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `question` varchar(500) NOT NULL,
  `ans_a` varchar(200) NOT NULL,
  `ans_b` varchar(200) NOT NULL,
  `ans_c` varchar(200) NOT NULL,
  `ans_d` varchar(200) NOT NULL,
  `ans` varchar(1) NOT NULL,
  `date_created` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`q_id`, `form`, `subject_name`, `user_email`, `question`, `ans_a`, `ans_b`, `ans_c`, `ans_d`, `ans`, `date_created`) VALUES
(1, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'What is 6+5', '11', '5', '3', '8', 'A', '2021-04-22 17:21:16.182263'),
(2, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'What is 6+6', '54', '4', '12', '33', 'C', '2021-04-22 17:22:23.454132'),
(3, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'What is 6-5', '11', '5', '3', '1', 'D', '2021-04-23 06:43:55.981516'),
(4, 'Form 1', 'English', 'slumberjer@gmail.com', 'Identify whether the sentence is correct or not. My best friend in the whole world is coming over to my house to visit me this afternoon.', 'Correct', 'Incorrect, lacks a subject', ' Incorrect, lacks a verb', ' Incorrect, extra subject', 'A', '2021-04-23 06:57:27.692496'),
(5, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'What is 5 x 10', '40', '50', '33', '77', 'B', '2021-04-23 21:16:51.679095'),
(6, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'What is 3 + 44', '43', '44', '55', '47', 'D', '2021-04-24 06:36:01.851766'),
(7, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'what is 4 + 12', '13', '16', '16', '19', 'B', '2021-04-24 06:39:49.884679'),
(8, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'what is 4 * 12', '42', '44', '32', '12', 'A', '2021-04-24 06:40:42.815527'),
(9, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'What is 50 + 55', '100', '105', '110', '102', 'B', '2021-04-24 07:30:37.250312'),
(12, 'Form 1', 'English', 'slumberjer@gmail.com', 'The word expand means', 'become bigger', 'become tiny', 'become smaller', 'become shrink', 'A', '2021-04-26 13:41:24.945274'),
(13, 'Form 1', 'English', 'slumberjer@gmail.com', 'When there is no more oxygen, the flame', 'blows up', 'goes up', 'goes off', 'blows out', 'C', '2021-04-26 14:00:10.238580'),
(14, 'Form 1', 'English', 'slumberjer@gmail.com', 'The graph shows that the number of rabbits sold is', 'decreasing', 'not changing', 'accending', 'descending', 'D', '2021-04-26 14:09:27.177030'),
(15, 'Form 1', 'English', 'slumberjer@gmail.com', 'Which function should Harun use if he want\'s to play a game.', 'at noon', 'before 7 am', 'till 2 pm', 'before 10 am', 'A', '2021-04-26 14:10:27.717531'),
(16, 'Form 1', 'English', 'slumberjer@gmail.com', 'The rules are normally to be followed by', 'the school prefects on duty only', 'the librarians on duty only', 'any students', 'any trespassers', 'B', '2021-04-29 12:52:41.469131'),
(17, 'Form 1', 'English', 'slumberjer@gmail.com', 'If I want to go to supermarket, I should wear', 'a mask', 'wear glove', 'wear jeans', 'spread rumors', 'A', '2021-05-03 06:15:25.772343'),
(18, 'Form 1', 'English', 'slumberjer@gmail.com', 'The fair is about', 'business', 'studies', 'carrier', 'fun', 'D', '2021-05-03 06:16:07.903651'),
(19, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'There were many ways to calm your nerves and relieve stress in your life', 'is', 'are', 'were', 'or', 'B', '2021-05-03 06:22:33.264020'),
(20, 'Form 1', 'English', 'slumberjer@gmail.com', 'Andy ____ the family car', 'wash', 'washes', 'washs', 'washed', 'B', '2021-05-03 06:26:22.754082'),
(21, 'Form 1', 'English', 'slumberjer@gmail.com', 'Mr jack _____ an email every evening', 'writes', 'write', 'writs', 'written', 'A', '2021-05-03 06:26:55.773716'),
(22, 'Form 1', 'English', 'slumberjer@gmail.com', 'The girls ___ the shopping', 'do', 'does', 'done', 'did', 'B', '2021-05-03 06:27:36.132734'),
(23, 'Form 1', 'English', 'slumberjer@gmail.com', 'Every morning my mother ___ at 6.00 am', 'get up', 'gets up', 'get ups', 'got up', 'B', '2021-05-03 06:28:12.849212'),
(24, 'Form 1', 'English', 'slumberjer@gmail.com', 'From the news above we know that', 'a happy occasion turned into a sad one for Wan.', 'heart conditions will affect the first born', 'a young couple were unhappy ', 'Wan was very sad of his heart condition', 'D', '2021-05-03 06:31:14.540610'),
(25, 'Form 1', 'English', 'slumberjer@gmail.com', 'The advertisement says the following EXCEPT', 'the children in the home need donated item', 'the garage sale needs more volunteers', 'the raised fund will be given to Bakhti Children Home', 'all item sold to the public', 'D', '2021-05-03 06:32:50.381693'),
(26, 'Form 1', 'English', 'slumberjer@gmail.com', 'The gardening class will', 'provide seeds for free', 'provide refreshment', 'provide free tools', 'lasted 4 hours', 'B', '2021-05-03 06:33:44.755789'),
(27, 'Form 1', 'English', 'slumberjer@gmail.com', 'My pencil is blunt. May I borrow your _____?', 'sharpener', 'scissors', 'eraser', 'ruler', 'B', '2021-05-03 06:34:57.847274'),
(28, 'Form 1', 'English', 'slumberjer@gmail.com', 'The little boy is wearing his ', 'shirt', 'pyjamas', 'pinafore', 'shorts', 'B', '2021-05-03 06:35:30.081470'),
(29, 'Form 1', 'English', 'slumberjer@gmail.com', 'The young of deer is called a ', 'owlet', 'grub', 'fawn', 'foal', 'D', '2021-05-03 06:36:13.964190'),
(30, 'Form 1', 'English', 'slumberjer@gmail.com', 'What is a hypothesis', 'A theory', 'A suggested solution', 'An explanation', 'A random event', 'A', '2021-05-03 06:37:55.345128'),
(31, 'Form 1', 'English', 'slumberjer@gmail.com', 'What is the prefix that has value of 10 power of 6', 'Mega', 'Mili', 'Centi', 'Micro', 'B', '2021-05-03 06:38:23.908076'),
(32, 'Form 1', 'English', 'slumberjer@gmail.com', 'I ___ going to a concert', 'am', 'are ', 'is', 'were', 'A', '2021-05-03 06:46:07.493547'),
(33, 'Form 1', 'English', 'slumberjer@gmail.com', 'I moved to ____ USA when I was 15', 'a', 'the ', 'an ', 'no article', 'A', '2021-05-03 06:47:18.036340'),
(34, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'Round off 6 977 722 to the nearest ten', '6 977 730', '6 977 833', '6 977 710', '6 977 750', 'C', '2021-05-03 06:48:44.401210'),
(36, 'Form 1', 'Mathematic', 'slumberjer@gmail.com', 'The product of 8 508 x 79', '646 608', '663 624', '672 134', '663 443', 'C', '2021-05-03 06:51:17.786599'),
(46, 'Form 1', 'Science', 'slumberjer@gmail.com', 'Which of these units can be used to measure volume?', 'Balance', 'Graph Paper', 'Weighting', 'Water Displacement', 'D', '2021-05-03 11:20:13.925681');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `school` varchar(150) NOT NULL,
  `password` varchar(40) NOT NULL,
  `otp` varchar(4) NOT NULL,
  `date_reg` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`email`, `phone`, `name`, `school`, `password`, `otp`, `date_reg`) VALUES
('slumberjer@gmail.com', '0194702493', 'Ahmad Hanis Mohd Shabli', 'SK Batu Hampar', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '1', '2021-04-15 13:46:01.016075');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  MODIFY `q_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- Database: `kingwatch`
--
CREATE DATABASE IF NOT EXISTS `kingwatch` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kingwatch`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `email` varchar(50) NOT NULL,
  `prid` varchar(10) NOT NULL,
  `qty` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`email`, `prid`, `qty`) VALUES
('hakimi', '1', 1),
('hakimiryo@gmail.com', '7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prid` int(11) NOT NULL,
  `prname` varchar(30) NOT NULL,
  `prtype` varchar(30) NOT NULL,
  `prprice` double NOT NULL,
  `prqty` int(11) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prid`, `prname`, `prtype`, `prprice`, `prqty`, `datecreated`, `picture`) VALUES
(8, 'EXPLORER 2021 Oyster', 'rolex', 42350, 50, '2021-06-08 22:34:45', '60bf8005f3b0e.png'),
(9, 'DATEJUST 36 2021 Oyster', 'rolex', 27500, 50, '2021-06-08 22:37:08', '60bf80946d4a3.png'),
(10, 'MTP-V002D-1B3', 'casio', 80, 15, '2021-06-08 22:40:03', '60bf814357ce3.png'),
(11, 'MTP-VT01L-2B', 'casio', 190, 15, '2021-06-08 22:41:39', '60bf81a367ce7.png'),
(12, 'DW-6900WS-2', 'gshock', 50, 50, '2021-06-08 22:43:00', '60bf81f422394.png'),
(13, 'DW-5600WS-4', 'gshock', 60, 50, '2021-06-08 22:44:02', '60bf823239642.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `date_reg` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`email`, `phone`, `name`, `password`, `date_reg`) VALUES
('ali@gmail.com', '01137459142', 'Ali', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '2021-04-27 17:13:37.304416'),
('hakimiryo@gmail.com', '01137459142', 'ozoraweki', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '2021-04-18 09:54:46.999578');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`prid`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `myshopdb`
--
CREATE DATABASE IF NOT EXISTS `myshopdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `myshopdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `email` varchar(50) NOT NULL,
  `prid` varchar(10) NOT NULL,
  `qty` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`email`, `prid`, `qty`) VALUES
('slumberjer@gmail.com', '50', 3),
('slumberjer@gmail.com', '49', 4),
('slumberjer@gmail.com', '45', 1),
('slumberjer@gmail.com', '46', 2),
('slumberjer@gmail.com', '43', 1),
('null', '29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prid` int(11) NOT NULL,
  `prname` varchar(30) NOT NULL,
  `prtype` varchar(30) NOT NULL,
  `prprice` double NOT NULL,
  `prqty` int(11) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prid`, `prname`, `prtype`, `prprice`, `prqty`, `datecreated`, `picture`) VALUES
(28, 'Acoustic Guitar', 'electronic', 312.9, 10, '2021-05-19 20:58:10', '60a51972dd733.png'),
(29, 'Mechanical Keyboard', 'electronic', 412.2, 5, '2021-05-19 20:59:52', '60a519d81f552.png'),
(30, 'Gaming Chair', 'furniture', 523.3, 3, '2021-05-19 21:04:50', '60a51b0215725.png'),
(31, 'Farm Dining Table', 'furniture', 172, 21, '2021-05-19 21:05:29', '60a51b29713e8.png'),
(32, 'Rounded Table', 'furniture', 242.3, 3, '2021-05-19 21:06:11', '60a51b53a3992.png'),
(33, 'Mrvls Table', 'furniture', 321, 3, '2021-05-19 21:06:52', '60a51b7c2e87b.png'),
(34, 'Crystal Dining Table', 'furniture', 1234.3, 2, '2021-05-19 21:08:42', '60a51bea3f7b5.png'),
(35, 'Television', 'electronic', 32.3, 1, '2021-05-19 21:32:00', '60a52160bd41a.png'),
(36, 'Comfy Couch', 'furniture', 200, 1, '2021-05-19 21:33:11', '60a521a70d7be.png'),
(37, 'TV', 'electronic', 500, 10, '2021-05-21 22:32:58', '60a7c49a9a001.png'),
(39, 'SailBoat RC', 'electronic', 559, 10, '2021-05-24 13:31:53', '60ab3a49e524e.png'),
(40, 'Cessna RC', 'electronic', 700, 5, '2021-05-24 13:36:48', '60ab3b70e8cd7.png'),
(41, 'Del Monte Leaf Sninach', 'canned', 3.5, 50, '2021-05-24 14:03:27', '60ab41afb3653.png'),
(42, 'Shirley', 'beverage', 15, 10, '2021-05-25 11:07:01', '60ac69d595874.png'),
(43, 'Pink Drink', 'beverage', 8, 10, '2021-05-25 11:15:26', '60ac6bce0cfae.png'),
(44, 'Tuna Premium', 'canned', 12, 50, '2021-05-25 11:17:50', '60ac6c5ee2d54.png'),
(45, 'Soup', 'canned', 7, 10, '2021-05-25 11:21:12', '60ac6d28a774f.png'),
(46, 'Sardines Tomatoes', 'canned', 4.5, 50, '2021-05-25 11:53:30', '60ac74baeef29.png'),
(47, 'Ayam Sardines', 'canned', 4, 55, '2021-05-25 11:55:32', '60ac753411d37.png'),
(48, 'Alishan Sardines', 'canned', 4, 3, '2021-05-25 12:06:03', '60ac77ab1d431.png'),
(49, 'Canned Bread', 'canned', 5, 44, '2021-05-25 12:11:07', '60ac78db810a5.png'),
(50, 'Sunfield  Potatoes', 'canned', 6, 55, '2021-05-25 12:22:27', '60ac7b836aac6.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchased`
--

CREATE TABLE `tbl_purchased` (
  `orderid` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `paid` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`prid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'kingwatchdb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"depositori_db\",\"kingwatch\",\"myshopdb\",\"phpmyadmin\",\"test\",\"watchshop\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"myshopdb\",\"table\":\"tbl_carts\"},{\"db\":\"myshopdb\",\"table\":\"tbl_purchased\"},{\"db\":\"myshopdb\",\"table\":\"tbl_products\"},{\"db\":\"kingwatch\",\"table\":\"tbl_carts\"},{\"db\":\"kingwatch\",\"table\":\"tbl_products\"},{\"db\":\"kingwatch\",\"table\":\"tbl_user\"},{\"db\":\"depositori_db\",\"table\":\"tbl_questions\"},{\"db\":\"depositori_db\",\"table\":\"tbl_user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'depositori_db', 'tbl_questions', '{\"CREATE_TIME\":\"2021-05-18 21:17:16\",\"col_order\":[0,1,2,3,4,5,6,7,8,9,10],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1]}', '2021-05-18 13:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-06-09 03:54:57', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":91.98949999999999}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `watchshop`
--
CREATE DATABASE IF NOT EXISTS `watchshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `watchshop`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
