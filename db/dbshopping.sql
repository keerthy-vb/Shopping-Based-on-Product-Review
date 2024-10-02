-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2022 at 08:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbrand`
--

CREATE TABLE `tblbrand` (
  `bid` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrand`
--

INSERT INTO `tblbrand` (`bid`, `brand`) VALUES
(1, 'Samsung'),
(2, 'Toshiba'),
(3, 'Sandisk'),
(4, 'Sony'),
(5, 'Hp'),
(6, 'Amaze'),
(7, 'Lenovo'),
(8, 'Fogg'),
(9, 'VKC'),
(10, 'soumya'),
(11, 'MAC'),
(12, 'swaparnika');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `cartid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cdate` datetime NOT NULL,
  `qty` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`cartid`, `rid`, `pid`, `cdate`, `qty`, `rate`, `status`) VALUES
(1, 1, 4, '2021-05-22 17:16:46', 1, 2500, 'purchased'),
(3, 2, 4, '2022-04-28 21:29:48', 1, 2500, 'purchased'),
(4, 4, 4, '2022-04-28 21:58:21', 1, 2500, 'In cart'),
(6, 4, 12, '2022-04-29 10:17:10', 1, 420, 'In cart');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `catid` int(11) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`catid`, `category`) VALUES
(1, 'Electronics'),
(2, 'Clothings'),
(3, 'Fashion accessories'),
(4, 'Footwares');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE `tbllogin` (
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`uname`, `pwd`, `utype`, `status`) VALUES
('tarun@gmail.com', 'tarun', 'customer', '1'),
('admin@gmail.com', 'admin', 'admin', '1'),
('midhunaap111999@gmail.com', 'midhuna@123', 'customer', '1'),
('midhunaap111999@gmail.com', 'midhuna@123', 'customer', '1'),
('advaidsivadas@gmail.com', 'advaid@123', 'customer', '1'),
('darsana@gmail.com', 'darsana@!23', 'customer', '1'),
('naveenaap222003@gmail.com', 'naveena@123', 'customer', '1'),
('darsanakp@gmail.com', 'darsana@123', 'customer', '1'),
('rahular@gmail.com', 'rahul@123', 'customer', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `pid` int(11) NOT NULL,
  `subid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `product` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `rate` int(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`pid`, `subid`, `bid`, `product`, `description`, `rate`, `img`) VALUES
(1, 1, 5, 'Hp 32 gb silver pendrive', 'hjvnn', 750, '/media/hp-32gb-usb-20-pendrive_Pe4UH5C.jpg'),
(2, 1, 2, 'Toshiba 16 gb pendrive', 'jhwvnjsh', 350, '/media/41g8qWL2z-L._AC_SS450_.jpg'),
(3, 1, 3, 'Sandisk 16 gb pendrive', 'ajbhv', 700, '/media/61PVIzk6ALL._SL1104_.jpg'),
(4, 2, 6, 'Full flared kids frock', 'jhbfvhj', 2500, '/media/3434121141_1994964681.jpg'),
(5, 2, 6, 'Kids frock', 'ijnk', 1500, '/media/61o9b8KupZL._UL1000_.jpg'),
(6, 4, 8, 'IMPRESSIO', ' Fogg Perfumes for men', 450, '/media/download.png'),
(7, 11, 9, 'Sparx', 'Outdoor Sandals', 750, '/media/shopping.webp'),
(12, 13, 12, ' White Earring ', 'Butterfly long Collections', 420, '/media/earrings.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tblregistration`
--

CREATE TABLE `tblregistration` (
  `rid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblregistration`
--

INSERT INTO `tblregistration` (`rid`, `name`, `email`, `contact`) VALUES
(1, 'Tarun', 'tarun@gmail.com', '8596471023'),
(2, 'Midhuna AP', 'midhunaap111999@gmail.com', '9061311446'),
(3, 'Midhuna AP', 'midhunaap111999@gmail.com', '9061311446'),
(4, 'advaid k s', 'advaidsivadas@gmail.com', '9874561230'),
(5, 'darsana', 'darsana@gmail.com', '9633877837'),
(6, 'Naveena A P', 'naveenaap222003@gmail.com', '7994206416'),
(7, 'darsana', 'darsanakp@gmail.com', '9633877837'),
(8, 'Rahul A R', 'rahular@gmail.com', '7034725847');

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

CREATE TABLE `tblreview` (
  `revid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `rdate` datetime NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreview`
--

INSERT INTO `tblreview` (`revid`, `rid`, `pid`, `rdate`, `feedback`, `rating`) VALUES
(1, 1, 4, '2021-05-22 18:05:33', 'Good product', 3),
(2, 2, 4, '2022-04-27 13:37:10', 'worth money', 4),
(6, 4, 7, '2022-04-29 10:13:26', 'Waste of money. Never buy this product. I will never suggest this for anyone. Please dont buy', 1),
(7, 4, 12, '2022-04-29 10:16:02', 'Good Product.', 4),
(8, 4, 5, '2022-04-29 10:16:48', 'Fabrics are bad, a Waste of money.', 1),
(9, 6, 12, '2022-04-29 10:19:00', 'Delivery service is bad', 2),
(10, 7, 12, '2022-04-29 10:31:03', 'Good product. worth money', 1),
(11, 7, 6, '2022-04-29 10:36:55', 'Good product. I suggest to buy this product.', 5),
(12, 2, 12, '2022-04-29 10:50:10', 'Quality of the material is too bad. Never buy this product. I will never suggest this to anyone.', 2),
(13, 2, 7, '2022-04-29 10:56:26', 'Good product, i will suggest to buy this product . worth of money.', 4),
(14, 2, 5, '2022-04-29 10:59:32', 'product is too good. I will suggest to buy this product. worth of money.', 4),
(15, 2, 3, '2022-04-29 11:28:45', 'worst product, waste of money. ', 1),
(16, 7, 3, '2022-04-29 11:33:08', 'Awesome product. I suggest to buy this product. read-write speed is amazing .', 5),
(17, 8, 3, '2022-04-29 11:36:45', 'Good product.', 5),
(18, 8, 2, '2022-04-29 11:42:49', 'Nice product.', 4),
(19, 8, 7, '2022-04-29 11:50:58', 'Awesome product.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `subid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `subcategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`subid`, `catid`, `subcategory`) VALUES
(1, 1, 'Gadget'),
(2, 2, 'Kids wear'),
(3, 1, 'Laptops'),
(4, 3, 'Perfumes'),
(6, 4, 'Womens'),
(10, 4, 'Girls'),
(11, 4, 'Boys'),
(12, 4, 'Mens'),
(13, 3, 'Ear Rings'),
(14, 3, 'Necklace'),
(15, 3, 'Lipstick');

-- --------------------------------------------------------

--
-- Table structure for table `tblview`
--

CREATE TABLE `tblview` (
  `vid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `vdate` date NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblview`
--

INSERT INTO `tblview` (`vid`, `rid`, `vdate`, `pid`) VALUES
(1, 1, '2021-05-24', 1),
(2, 1, '2021-05-24', 1),
(3, 1, '2021-05-24', 4),
(4, 2, '2022-04-27', 3),
(5, 2, '2022-04-27', 3),
(6, 2, '2022-04-27', 4),
(7, 2, '2022-04-27', 4),
(8, 2, '2022-04-27', 4),
(9, 2, '2022-04-27', 1),
(10, 2, '2022-04-27', 4),
(11, 2, '2022-04-27', 4),
(12, 2, '2022-04-27', 4),
(13, 2, '2022-04-27', 4),
(14, 2, '2022-04-27', 4),
(15, 2, '2022-04-27', 5),
(16, 2, '2022-04-27', 4),
(17, 2, '2022-04-27', 4),
(18, 2, '2022-04-27', 4),
(19, 2, '2022-04-27', 4),
(20, 2, '2022-04-27', 4),
(21, 2, '2022-04-27', 5),
(22, 2, '2022-04-27', 5),
(23, 2, '2022-04-27', 5),
(24, 2, '2022-04-27', 5),
(25, 2, '2022-04-27', 4),
(26, 2, '2022-04-27', 5),
(27, 2, '2022-04-27', 7),
(28, 2, '2022-04-27', 9),
(29, 2, '2022-04-27', 4),
(30, 2, '2022-04-27', 5),
(31, 2, '2022-04-27', 5),
(32, 2, '2022-04-27', 5),
(33, 2, '2022-04-27', 5),
(34, 2, '2022-04-27', 7),
(35, 2, '2022-04-27', 4),
(36, 2, '2022-04-27', 6),
(37, 2, '2022-04-27', 5),
(38, 2, '2022-04-27', 4),
(39, 2, '2022-04-27', 3),
(40, 2, '2022-04-27', 7),
(41, 2, '2022-04-27', 0),
(42, 2, '2022-04-27', 0),
(43, 2, '2022-04-27', 0),
(44, 4, '2022-04-28', 4),
(45, 4, '2022-04-28', 4),
(46, 4, '2022-04-28', 4),
(47, 2, '2022-04-28', 3),
(48, 2, '2022-04-28', 6),
(49, 2, '2022-04-28', 0),
(50, 2, '2022-04-28', 4),
(51, 2, '2022-04-28', 4),
(52, 2, '2022-04-28', 0),
(53, 2, '2022-04-28', 4),
(54, 4, '2022-04-28', 4),
(55, 4, '2022-04-28', 4),
(56, 4, '2022-04-28', 4),
(57, 4, '2022-04-28', 4),
(58, 4, '2022-04-28', 4),
(59, 4, '2022-04-28', 4),
(60, 4, '2022-04-28', 4),
(61, 4, '2022-04-28', 4),
(62, 4, '2022-04-28', 4),
(63, 4, '2022-04-28', 4),
(64, 4, '2022-04-28', 4),
(65, 4, '2022-04-28', 4),
(66, 4, '2022-04-28', 4),
(67, 4, '2022-04-28', 6),
(68, 4, '2022-04-28', 4),
(69, 4, '2022-04-28', 7),
(70, 6, '2022-04-28', 4),
(71, 6, '2022-04-28', 4),
(72, 6, '2022-04-28', 4),
(73, 6, '2022-04-28', 4),
(74, 6, '2022-04-28', 4),
(75, 4, '2022-04-29', 12),
(76, 4, '2022-04-29', 4),
(77, 4, '2022-04-29', 4),
(78, 4, '2022-04-29', 5),
(79, 4, '2022-04-29', 7),
(80, 4, '2022-04-29', 6),
(81, 4, '2022-04-29', 7),
(82, 4, '2022-04-29', 7),
(83, 4, '2022-04-29', 7),
(84, 4, '2022-04-29', 7),
(85, 4, '2022-04-29', 7),
(86, 4, '2022-04-29', 7),
(87, 4, '2022-04-29', 7),
(88, 4, '2022-04-29', 7),
(89, 4, '2022-04-29', 4),
(90, 4, '2022-04-29', 4),
(91, 4, '2022-04-29', 5),
(92, 4, '2022-04-29', 4),
(93, 4, '2022-04-29', 7),
(94, 4, '2022-04-29', 6),
(95, 4, '2022-04-29', 12),
(96, 4, '2022-04-29', 7),
(97, 4, '2022-04-29', 4),
(98, 4, '2022-04-29', 7),
(99, 4, '2022-04-29', 7),
(100, 4, '2022-04-29', 7),
(101, 4, '2022-04-29', 4),
(102, 4, '2022-04-29', 4),
(103, 4, '2022-04-29', 12),
(104, 4, '2022-04-29', 12),
(105, 4, '2022-04-29', 12),
(106, 4, '2022-04-29', 4),
(107, 4, '2022-04-29', 7),
(108, 4, '2022-04-29', 7),
(109, 4, '2022-04-29', 7),
(110, 4, '2022-04-29', 7),
(111, 4, '2022-04-29', 7),
(112, 4, '2022-04-29', 12),
(113, 4, '2022-04-29', 12),
(114, 4, '2022-04-29', 5),
(115, 4, '2022-04-29', 5),
(116, 4, '2022-04-29', 12),
(117, 4, '2022-04-29', 12),
(118, 4, '2022-04-29', 12),
(119, 4, '2022-04-29', 7),
(120, 4, '2022-04-29', 12),
(121, 6, '2022-04-29', 12),
(122, 6, '2022-04-29', 12),
(123, 6, '2022-04-29', 12),
(124, 6, '2022-04-29', 12),
(125, 6, '2022-04-29', 5),
(126, 6, '2022-04-29', 5),
(127, 6, '2022-04-29', 5),
(128, 6, '2022-04-29', 12),
(129, 6, '2022-04-29', 12),
(130, 6, '2022-04-29', 12),
(131, 7, '2022-04-29', 5),
(132, 7, '2022-04-29', 12),
(133, 7, '2022-04-29', 12),
(134, 7, '2022-04-29', 12),
(135, 7, '2022-04-29', 12),
(136, 7, '2022-04-29', 12),
(137, 7, '2022-04-29', 7),
(138, 7, '2022-04-29', 12),
(139, 7, '2022-04-29', 12),
(140, 7, '2022-04-29', 12),
(141, 7, '2022-04-29', 12),
(142, 7, '2022-04-29', 12),
(143, 7, '2022-04-29', 6),
(144, 7, '2022-04-29', 6),
(145, 7, '2022-04-29', 6),
(146, 6, '2022-04-29', 6),
(147, 6, '2022-04-29', 6),
(148, 6, '2022-04-29', 12),
(149, 6, '2022-04-29', 12),
(150, 6, '2022-04-29', 12),
(151, 6, '2022-04-29', 12),
(152, 6, '2022-04-29', 12),
(153, 6, '2022-04-29', 12),
(154, 2, '2022-04-29', 12),
(155, 2, '2022-04-29', 12),
(156, 2, '2022-04-29', 12),
(157, 2, '2022-04-29', 12),
(158, 2, '2022-04-29', 12),
(159, 2, '2022-04-29', 12),
(160, 2, '2022-04-29', 12),
(161, 2, '2022-04-29', 12),
(162, 2, '2022-04-29', 12),
(163, 2, '2022-04-29', 12),
(164, 2, '2022-04-29', 12),
(165, 2, '2022-04-29', 5),
(166, 2, '2022-04-29', 5),
(167, 2, '2022-04-29', 4),
(168, 2, '2022-04-29', 7),
(169, 2, '2022-04-29', 7),
(170, 2, '2022-04-29', 7),
(171, 2, '2022-04-29', 5),
(172, 2, '2022-04-29', 6),
(173, 2, '2022-04-29', 7),
(174, 2, '2022-04-29', 5),
(175, 2, '2022-04-29', 5),
(176, 2, '2022-04-29', 5),
(177, 2, '2022-04-29', 5),
(178, 2, '2022-04-29', 5),
(179, 2, '2022-04-29', 5),
(180, 2, '2022-04-29', 5),
(181, 2, '2022-04-29', 5),
(182, 2, '2022-04-29', 5),
(183, 2, '2022-04-29', 5),
(184, 2, '2022-04-29', 5),
(185, 2, '2022-04-29', 5),
(186, 2, '2022-04-29', 5),
(187, 2, '2022-04-29', 5),
(188, 2, '2022-04-29', 5),
(189, 2, '2022-04-29', 5),
(190, 2, '2022-04-29', 3),
(191, 2, '2022-04-29', 3),
(192, 7, '2022-04-29', 3),
(193, 7, '2022-04-29', 3),
(194, 8, '2022-04-29', 3),
(195, 8, '2022-04-29', 3),
(196, 8, '2022-04-29', 3),
(197, 8, '2022-04-29', 3),
(198, 8, '2022-04-29', 3),
(199, 8, '2022-04-29', 2),
(200, 8, '2022-04-29', 2),
(201, 8, '2022-04-29', 2),
(202, 8, '2022-04-29', 7),
(203, 8, '2022-04-29', 7),
(204, 8, '2022-04-29', 5),
(205, 8, '2022-04-29', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbrand`
--
ALTER TABLE `tblbrand`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`cartid`),
  ADD KEY `rid` (`rid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `subid` (`subid`,`bid`);

--
-- Indexes for table `tblregistration`
--
ALTER TABLE `tblregistration`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD PRIMARY KEY (`revid`),
  ADD KEY `rid` (`rid`,`pid`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`subid`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `tblview`
--
ALTER TABLE `tblview`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `rid` (`rid`,`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbrand`
--
ALTER TABLE `tblbrand`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblregistration`
--
ALTER TABLE `tblregistration`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblreview`
--
ALTER TABLE `tblreview`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblview`
--
ALTER TABLE `tblview`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD CONSTRAINT `tblcart_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `tblregistration` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblcart_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `tblproduct` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `tblsubcategory_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `tblsubcategory` (`subid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
