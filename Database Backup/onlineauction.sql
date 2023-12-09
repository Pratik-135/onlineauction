-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 03:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineauction`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `bidding_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_amount` float(10,2) NOT NULL,
  `bidding_date_time` datetime NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`bidding_id`, `customer_id`, `product_id`, `bidding_amount`, `bidding_date_time`, `note`, `status`) VALUES
(3247, 41, 195, 500.00, '2022-12-21 18:37:18', '', 'Active'),
(3248, 40, 196, 5130.00, '2022-12-21 18:49:07', '', 'Active'),
(3249, 40, 197, 5001.00, '2022-12-21 18:49:42', '', 'Active'),
(3250, 41, 194, 50.00, '2022-12-21 18:58:35', '', 'Active'),
(3251, 41, 195, 1000.00, '2022-12-21 18:59:56', '', 'Active'),
(3252, 40, 201, 2100.00, '2022-12-22 10:08:10', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billing_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_amount` float(10,2) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `card_type` varchar(50) NOT NULL,
  `card_number` varchar(20) NOT NULL,
  `expire_date` date NOT NULL,
  `cvv_number` varchar(5) NOT NULL,
  `card_holder` varchar(50) NOT NULL,
  `delivery_date` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billing_id`, `customer_id`, `product_id`, `purchase_date`, `purchase_amount`, `payment_type`, `card_type`, `card_number`, `expire_date`, `cvv_number`, `card_holder`, `delivery_date`, `note`, `status`) VALUES
(1395, 41, 0, '2022-12-21', 50000.00, 'Deposit', 'Credit card', '45212545698565', '2022-12-01', '323', 'Dinesh bohara', '0000-00-00', '', 'Active'),
(1396, 41, 196, '2022-12-21', 100.00, 'Sell', 'Credit card', '1245212536547895', '2022-12-01', '233', 'Dinesh bohara', '0000-00-00', '', 'Active'),
(1397, 41, 197, '2022-12-21', 100.00, 'Sell', 'Debit Card', '7894561230125478', '2022-12-01', '123', 'Dinesh bohara', '0000-00-00', '', 'Active'),
(1398, 40, 0, '2022-12-21', 500000.00, 'Deposit', 'Credit card', '45124587958645', '2022-12-01', '123', 'Anil Bohara', '0000-00-00', '', 'Active'),
(1399, 40, 198, '2022-12-21', 100.00, 'Sell', 'Credit card', '1234567898745621', '2022-12-01', '122', 'Anil Bohara', '0000-00-00', '', 'Active'),
(1400, 41, 201, '2022-12-22', 100.00, 'Sell', 'Credit card', '4578956451235648', '2022-12-01', '123', 'Dinesh bohara', '0000-00-00', '', 'Active'),
(1401, 40, 201, '2022-12-24', 2100.00, 'Winners', 'Credit card', '7845965847845868', '2022-12-01', '122', 'Anil Bohara', '0000-00-00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_icon` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_icon`, `description`, `status`) VALUES
(16562, 'Mobiles Phone', '5038630391028327282Mobile Accessories.png', 'Best Quality mobiles Phone ', 'Active'),
(16563, 'Watches', '14712639715837watch.jpg', 'Best Quality Watches ', 'Active'),
(16564, 'Shoes', '8934086688.jpg', 'Best Quality Shoes', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `landmark` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `email_id`, `password`, `address`, `state`, `city`, `landmark`, `pincode`, `mobile_no`, `note`, `status`) VALUES
(38, 'Bijaya bohara', 'vijaybadhur760@gmail.com', 'Bijay760', '', '', '', '', '', '+9779810781885', '', 'Active'),
(40, 'Anil Bohara', 'anilbohara@gmail.com', 'ee415d4ff4a2856aa5c1bff67d46f66f', 'Parshuram 9', 'sudurpachimm', 'kathmandu', 'Kirtipur', '5461', '+9779810781885', '', 'Active'),
(41, 'Dinesh Bohara', 'Dineshbohara@gmail.com', 'Bijay760', 'bijaya', 'Pradesh No.1 ', 'kathmandu', 'Kirtipur', '546123', '+9779810781885', '', 'Active'),
(42, '8b6bff309d1d883e99a9824702ccd2ea', 'vijaybadhur760@gmail.com', 'Bijay760', '', '', '', '', '', '+9779810781885', '', 'Active'),
(43, 'Bijaya bohara', 'vijaybadhur760@gmail.com', 'ee415d4ff4a2856aa5c1bff67d46f66f', '', '', '', '', '', '+9779810781885', '', 'Active'),
(44, 'Bijaya bohara', 'vijaybadhur760@gmail.com', 'ee415d4ff4a2856aa5c1bff67d46f66f', '', '', '', '', '', '+9779810781885', '', 'Active'),
(45, 'Bijaya bohara', 'vijaybadhur760@gmail.com', 'ee415d4ff4a2856aa5c1bff67d46f66f', '', '', '', '', '', '+9779810781885', '', 'Active'),
(46, 'Bijaya bohara', 'vijaybadhur760@gmail.com', '42f749ade7f9e195bf475f37a44cafcb', '', '', '', '', '', '+9779810781885', '', 'Active'),
(47, 'Bijaya bohara', 'vijaybadhur7160@gmail.com', '42f749ade7f9e195bf475f37a44cafcb', '', '', '', '', '', '+9779810781885', '', 'Active'),
(48, 'Bijaya bohara', 'vijaybadhur760@gmail.com', 'aa41efe0a1b3eeb9bf303e4561ff8392', '', '', '', '', '', '+9779810781885', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `employee_type` varchar(50) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `login_id`, `password`, `employee_type`, `status`) VALUES
(1, 'Administrator', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Active'),
(9, 'Bijaya Bohara', 'bijaya', 'Bijay760', 'Employee', 'Active'),
(10, 'Tirtha Awasthi', 'Tirtha', 'Bijay760', 'Employee', 'Active'),
(11, 'Anil Bohara', 'AnilB', 'Bijay760', 'Admin', 'Active'),
(13, 'Saraswoti bohara', 'saraswoti', 'ee415d4ff4a2856aa5c1bff67d46f66f', 'Employee', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(10) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `message_date_time` datetime NOT NULL,
  `product_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_id`, `receiver_id`, `message_date_time`, `product_id`, `message`, `status`) VALUES
(39, 0, 0, '2022-12-21 18:17:59', 0, 'Hello\n', 'Seller'),
(40, 0, 0, '2022-12-21 18:18:14', 0, 'Sir can have your contact Sir\n', 'Seller');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bidding_id` int(10) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `customer_id`, `payment_type`, `product_id`, `bidding_id`, `paid_amount`, `paid_date`, `status`) VALUES
(247, 41, 'Bid', 195, 3247, 505.00, '2022-12-21', 'Active'),
(248, 40, 'Bid', 196, 3248, 51.30, '2022-12-21', 'Active'),
(249, 40, 'Bid', 197, 3249, 50.01, '2022-12-21', 'Active'),
(250, 41, 'Bid', 194, 3250, 0.50, '2022-12-21', 'Active'),
(251, 41, 'Bid', 195, 3251, 1005.00, '2022-12-21', 'Active'),
(252, 40, 'Bid', 201, 3252, 21.00, '2022-12-22', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category_id` int(10) NOT NULL,
  `product_description` text NOT NULL,
  `starting_bid` float(10,2) NOT NULL,
  `ending_bid` float(10,2) NOT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `product_cost` float(10,2) NOT NULL,
  `product_image` text NOT NULL,
  `product_warranty` varchar(100) NOT NULL,
  `product_delivery` text NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `customer_id`, `product_name`, `category_id`, `product_description`, `starting_bid`, `ending_bid`, `start_date_time`, `end_date_time`, `product_cost`, `product_image`, `product_warranty`, `product_delivery`, `company_name`, `status`) VALUES
(193, 0, 'Xiaomi Redmi 9 Power', 16562, 'Available in two variants: 4 GB RAM + 64 GB ROM and 6 GB RAM + 128 GB ROM, this smartphone packs enough power to execute demanding tasks with ease. ...', 0.00, 0.00, '2022-12-21 18:03:00', '2022-12-26 18:03:00', 5000.00, '6707952637t-9_1_1-473x473.jpg', '', '3-4 Days', 'Nepal bank limited', 'Active'),
(194, 0, 'Rolex Watches', 16563, ' Rolex is one of the most popular and expensive watches in Nepal', 0.00, 50.00, '2022-12-21 18:06:00', '2022-12-22 18:06:00', 5000.00, '1770058489com.jpg', '', '3-4 Days', 'Nepal bank limited', 'Active'),
(195, 0, 'Xiaomi Redmi 9 Power', 16562, 'Best Quality Product', 0.00, 1000.00, '2022-12-21 18:11:00', '2022-12-22 18:11:00', 5000.00, '1370761650b.jpg', '', '4-5 days', 'Nepal bank limited', 'Active'),
(196, 41, 'Rolex Watches', 16562, 'Besst Quality WAtches', 5000.00, 5130.00, '2022-12-21 18:23:00', '2022-12-22 18:23:00', 4000.00, 'a:1:{i:0;s:15:\"36810630360.jpg\";}', '', '3-4 Days', 'Nepal bank limited', 'Active'),
(197, 41, 'Xiaomi Redmi 9 Power', 16562, 'Most Demanded Phone', 5000.00, 5001.00, '2022-12-21 18:30:00', '2022-12-22 18:30:00', 4000.00, 'a:1:{i:0;s:14:\"8506488171.jpg\";}', '', '4-5 days', 'Nepal bank limited', 'Active'),
(198, 40, 'Xiaomi Redmi 9 Power', 16563, 'Dangerious Product', 5000.00, 5000.00, '2022-12-21 18:46:00', '2022-12-21 20:46:00', 4000.00, 'a:1:{i:0;s:15:\"15773494246.jpg\";}', '', '4-5 days', 'Nepal bank limited', 'Active'),
(199, 38, 'Shoes ', 16564, 'Best Quality Shoes', 5000.00, 5000.00, '2022-12-24 19:01:00', '2022-12-26 19:01:00', 3000.00, 'a:1:{i:0;s:17:\"103143297h3-3.jpg\";}', '', '3-4 Days', 'Nepal bank limited', 'Pending'),
(200, 38, 'Diamond Shoes', 16564, 'Best Quality Shoes', 5000.00, 5000.00, '2022-12-21 19:03:00', '2022-12-21 19:05:00', 3000.00, 'a:2:{i:0;s:15:\"16008385248.jpg\";i:1;s:13:\"305501657.jpg\";}', '', '3-4 Days', 'Nepal bank limited', 'Pending'),
(201, 41, 'New Shoes', 16564, 'Best Quality Shoes', 2000.00, 2100.00, '2022-12-22 10:03:00', '2022-12-23 10:03:00', 1500.00, 'a:1:{i:0;s:41:\"278276904Screenshot 2022-12-08 202029.jpg\";}', '', '3-4 Days', 'srth company', 'Active'),
(202, 0, 'Golden Shoes', 16564, 'Best Quality Product ', 0.00, 0.00, '2022-12-26 14:05:00', '2022-12-27 14:05:00', 5000.00, '1283704637IMG-20221204-WA0000.jpeg', '', '3-4 Days', 'Nepal bank limited', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `winner_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `winners_image` varchar(100) NOT NULL,
  `winning_bid` float(10,2) NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winners`
--

INSERT INTO `winners` (`winner_id`, `product_id`, `customer_id`, `winners_image`, `winning_bid`, `end_date`, `status`) VALUES
(15, 196, 40, '131292042IMG-20221204-WA0000.jpeg', 5130.00, '2022-12-21', 'Pending'),
(16, 197, 40, '131292042IMG-20221204-WA0000.jpeg', 5001.00, '2022-12-21', 'Pending'),
(17, 194, 41, '131292042IMG-20221204-WA0000.jpeg', 50.00, '2022-12-21', 'Pending'),
(18, 195, 41, '131292042IMG-20221204-WA0000.jpeg', 1000.00, '2022-12-21', 'Pending'),
(19, 201, 40, '131292042IMG-20221204-WA0000.jpeg', 2100.00, '2022-12-22', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`bidding_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billing_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`winner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `bidding_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3253;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billing_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1402;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16565;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `winner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
