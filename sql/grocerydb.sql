-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2023 at 06:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocerydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '6464651', 'sp hostel', '21232f297a57a5a743894a0e4a801fc3', 'admin', '789456');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `pid`, `quantity`) VALUES
(11, 2, 12, 0),
(12, 0, 46, 0),
(15, 43, 47, 0),
(19, 42, 54, 0),
(20, 42, 53, 0),
(21, 0, 47, 0),
(22, 0, 99, 0),
(23, 46, 81, 0),
(25, 0, 101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` date NOT NULL,
  `ddate` date NOT NULL,
  `delivery` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`, `delivery`) VALUES
(90, 51, 101, 2, 'sp', '9999999999', 'no', '2023-05-13', '0000-00-00', 'Express Delivery +100php upon '),
(93, 52, 101, 1, 'sp', '5567576577', 'no', '2023-05-14', '0000-00-00', 'Express Delivery +100php upon '),
(94, 52, 101, 1, 'sp', '5567576577', 'no', '2023-05-14', '0000-00-00', 'Express Delivery +100php upon '),
(95, 52, 98, 1, 'sp', '5567576577', 'no', '2023-05-15', '0000-00-00', 'Express Delivery +100php upon '),
(96, 54, 80, 1, 'ryhg', '4557475456', 'no', '2023-05-15', '0000-00-00', 'Express Delivery +100php upon ');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `piece` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `piece`, `description`, `available`, `category`, `type`, `item`, `pCode`, `picture`) VALUES
(77, 'Maggie Noodles', 12, 1, '200gm Instant Noodles', 25, '', '', 'noodles', '76', '1684084569.jpg'),
(78, 'Yippee Noodles', 14, 1, '220gm Instant Noodles', 27, '', '', 'noodles', '78', '1684084907.jpg'),
(79, 'knorr Noodles', 15, 1, '220gm Instant Noodles', 10, '', '', 'noodles', '79', '1684084972.jpg'),
(80, 'Patanjali Atta Noodles', 10, 1, '180gm Instant Noodles', 40, '', '', 'noodles', '80', '1684085134.jpg'),
(81, 'Coca cola', 40, 1, '750 ml ', 53, '', '', 'drink', 'b5y', '1684088309.jpg'),
(82, 'Thums Up', 40, 1, '750 ml ', 43, '', '', 'drink', 'bfef', '1684088392.jpg'),
(83, 'Sosyo', 75, 1, '1.25 L ', 43, '', '', 'drink', 'bgfb', '1684088430.jpg'),
(84, 'Davat Jeera Masala', 10, 1, '200 ml ', 43, '', '', 'drink', 'bsg', '1684088542.jpg'),
(89, 'Balaji Masala Masti Waffer', 10, 1, '55gm Waffer', 40, '', '', 'snack', 'eg', '1684085780.jpg'),
(90, 'Balaji Cream& Onion Waffer', 10, 1, '55gm Waffer', 45, '', '', 'snack', 'egdf', '1684085813.jpg'),
(91, 'Kurkure Masala Munch', 10, 1, '50gm kurkure', 45, '', '', 'snack', 'df', '1684085868.jpg'),
(92, 'Kurkure Solid Masti', 10, 1, '50gm Solid masti', 45, '', '', 'snack', 'rg', '1684085905.jpg'),
(93, 'Balaji Ratlami Sev', 10, 1, '55gm Sev Mamra\r\n', 45, '', '', 'snack', 'rg', '1684085937.jpg'),
(94, 'Balaji Sev Mamra', 10, 1, '55gm Sev Mamra', 45, '', '', 'snack', 'rg', '1684085961.jpg'),
(95, 'Dairy milk', 10, 1, 'Dairy milk Chocolate', 45, '', '', 'sweet', 'sdv', '1684086540.jpg'),
(96, 'Kitkat', 20, 1, 'Kitkat Chocolate', 24, '', '', 'sweet', 'bg', '1684086573.jpg'),
(97, '5Star', 10, 1, '5star Chocolate', 32, '', '', 'sweet', 'nf', '1684086599.jpg'),
(98, 'Snickers', 15, 1, 'Snickers Chocolate', 54, '', '', 'sweet', 'gv', '1684086636.png'),
(99, 'Pantene Shampoo', 200, 24, 'shampoo12ml+conditioner10ml', 100, '', 'other', 'shampoo', 'r', 'shampoo2.jpg'),
(100, 'Dove Shampoo', 270, 15, 'Dove Shampoo', 100, '', '', 'shampoo', 'v', 'shampoo1.jpg'),
(101, 'Wow shampoo', 215, 1, 'Wow Shampoo', 20, '', '', 'shampoo', '105', '1684072599.jpg'),
(120, 'Dettol AntiSeptic', 55, 1, 'Anti-Septic', 20, '', '', 'hygiene', 'gfb', '1684087143.jpg'),
(121, 'Savlon AntiSeptic', 60, 1, 'Anti-Septic', 34, '', '', 'hygiene', 'gfbv', '1684087173.jpg'),
(122, 'Catch Sabji Masala', 60, 1, 'Sabji masala', 34, '', '', 'seasoning', 'bt', '1684087793.jpg'),
(124, 'Catch Chatpata Chat Masala', 55, 1, 'Chat masala', 32, '', '', 'seasoning', 'btr', '1684087985.jpg'),
(125, 'Everest Lal Mirch Powder', 45, 1, 'Lal Mirch Powder', 32, '', '', 'seasoning', 'b5y', '1684088066.jpg'),
(126, 'Everest Chhole Masala', 45, 1, 'Chhole Masala', 32, '', '', 'seasoning', 'b5y', '1684088126.jpg'),
(133, 'Nirma Soap', 15, 1, 'Detergent Soap', 33, '', '', 'soap', 'bgrg', '1684088922.jpg'),
(134, 'Tide Soap', 15, 1, 'Detergent Soap', 32, '', '', 'soap', 'b6bg', '1684088944.jpg'),
(135, 'Ghsdi Soap', 13, 1, 'Detergent Soap', 21, '', '', 'soap', 'b6bg', '1684088969.jpg'),
(136, 'Dove Soap', 25, 1, 'Bathing Soap', 21, '', '', 'soap', 'bfgn', '1684089031.jpg'),
(137, 'Cinthol Soap', 20, 1, 'Bathing Soap', 21, '', '', 'soap', 'bhth', '1684089053.jpg'),
(140, 'meggie', 30, 1, 'meggie', 50, '', '', 'noodles', '245465', '1684140795.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(120) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  `activation` varchar(10) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `confirmCode`, `activation`) VALUES
(51, 'Jemis', 'Lathiya', 'lathiyajemis13@gmail.com', '9999999999', 'sp', '827ccb0eea8a706c4c34a16891f84e7b', '0', 'yes'),
(52, 'Preet', 'Sukhadiya', 'preetsukhadiya0909@gmail.com', '5567576577', 'sp', '827ccb0eea8a706c4c34a16891f84e7b', '0', 'yes'),
(53, 'Nemish', 'Gorasiya', 'nemish@gmail.com', '8786756343', 'sfdfwv', '827ccb0eea8a706c4c34a16891f84e7b', '0', 'yes'),
(54, 'Dhairya', 'Patel', 'dhairya@gmail.com', '4557475456', 'ryhg', '827ccb0eea8a706c4c34a16891f84e7b', '0', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
