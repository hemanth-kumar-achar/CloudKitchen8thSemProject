-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2018 at 07:11 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_rest`
--
CREATE DATABASE IF NOT EXISTS `online_rest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_rest`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adm_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'hemanth', 'e10adc3949ba59abbe56e057f20f883e', 'hemanth@gmail.com', 'QX5ZMN', '2021-06-29 12:39:07'),
(2, 'rakshu', 'e10adc3949ba59abbe56e057f20f883e', 'rakshu@gmail.com', 'QFE6ZM', '2021-06-29 12:39:03'),
(3, 'sam', 'e10adc3949ba59abbe56e057f20f883e', 'sam@gmail.com', 'QMZR92', '2021-06-29 12:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE IF NOT EXISTS `admin_codes` (
  `id` int(222) NOT NULL AUTO_INCREMENT,
  `codes` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92');


-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE IF NOT EXISTS `dishes` (
  `d_id` int(222) NOT NULL AUTO_INCREMENT,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Masala Dosa', 'Masala dosa is a variation of the popular South Indian dosa, which has its origins in Tuluva Mangalorean cuisine of Karnataka. It is made from rice, lentils, potato, fenugreek, ghee and curry leaves, and served with chutne. ', '45.00', '60d9929916248.jpg'),
(2, 1, 'Idli', 'Idli or idly are a type of savoury rice cake, originating from the Indian subcontinent, popular as breakfast foods in Southern India and in Sri Lanka. The cakes are made by steaming a batter consisting of fermented black ', '30.00', '60d99539de7d5.jpg'),
(3, 1, 'Puri', 'Puri is a deep-fat fried bread made from unleavened whole-wheat flour that originated in the Indian subcontinent. It is eaten for breakfast or as a snack or light meal. It is usually served with a savory curry or bhaji, as', '30.00', '60d9a3bb79cdc.jpg'),
(4, 2, 'Badusha', 'The sugar syrup dripping sweet has the ability to make you crave for more.', '150.00', '60d990346cdea.jpg'),
(5, 2, 'AabJamoon', 'A2B Gulab Jamun ready to eat gulab jamuns in big tin. They are delicious in taste and have a mouth-watering flavour. Gulab Jamuns are popular Indian sweets, which are widely consumed.', '190.00', '60d9909f84a92.jpg'),
(6, 2, 'Mothi Laddu', 'Laddu or laddoo are ball-shaped sweets popular in the indian subcontinent. They are often served at festive or religious occasions.', '250.00', '60d9916d89fb0.jpg'),
(7, 3, 'BK Classic Veg Burger', 'Our tribute to classical American taste.', '79.00', '60d9a66cd0df8.jpg.jpg'),
(8, 3, 'BK Classic Chicken Burger', 'Our tribute to classical American taste.', '99.00', '60d9a6ddf4012.jpg'),
(9, 4, 'Veggie Supreme Pizza', 'Black Olives, Green Capsicum, Mushroom, Onion, Red Paprika, Sweet Corn', '350.00', '60d9a45d8e334.jpg'),
(10, 4, 'Chicken Supreme Pizza', 'Herbed Chicken, Schezwan Chicken Meatball, Chicken Tikka', '370.00', '60d9a4a243de9.jpg'),
(11, 5, 'Bucket For Two', 'Enjoy 2 pc crunchy leg piece, 2 pc smoky red & 1 delicious large popcorn in this special combo for 2.', '550.00', '60d9a752191e2.jpg'),
(12, 5, 'Big 8', 'Some like it crunchy, some like it spicy-but why choose when you can get both? Save big with this bucket of 4pcs Hot & Crispy Chicken & 4pcs Smoky Red chicken! [for 2-3 people]', '549.00', '60d9a78b0b9a5.jpg'),
(13, 6, 'Kushka Rice & Chicken Kebab [Half Plate]', 'Half plate chicken biryani & 6 chicken kebab', '210.00', '60d9a8e230af2.jpg'),
(14, 6, 'Mutton Biryani', 'Half plate mutton biryani & 6 mutton piece.', '220.00', '60d9a955c6fbb.jpg'),
(15, 7, 'Rose Milk', 'Rose milk is a flavored drink and is good for beating the summer heat.', '60.00', '60d9ab3543d46.jpg'),
(16, 7, 'Watermelon Juice', 'Refreshing, naturally sweet watermelon juice couldn’t be easier to make in a blender.', '60.00', '60d9abbb8b567.jpg.jpg'),
(17, 8, 'Death By Chocolate', 'Death By Chocolate is a creamy and moist chocolate dessert. Experience true indulgence with this one.', '200.00', '60d9aa1c8a8bc.jpg.jpg'),
(18, 8, 'Hot Chocolate Fudge (Regular)', 'Vanilla ice cream topped with chocolate sauce and peanuts.', '130.00', '60d9aa78962fa.jpg'),
(19, 9, 'VEGGIE PARADISE Pizza', 'Goldern Corn, Black Olives, Capsicum & Red Paprika', '320.00', '60d9a4fd752c9.jpg.jpg'),
(20, 9, 'PEPPER BARBECUE & ONION Pizza', 'Pepper Barbecue Chicken I Onion', '350.00', '60d9a54cbd889.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE IF NOT EXISTS `remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'in process', 'In Process', '2021-06-29 12:30:41'),
(2, 2, 'closed', 'Your order is delivered', '2021-06-29 12:53:31'),
(3, 3, 'rejected', 'Sorry we are out of Veggie Supreme Pizza', '2021-06-29 12:54:25');


-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `rs_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Vasudev Adigas ', 'vasudevadigas@gmail.com', ' 91-8494912611', 'vasudevadigas.com', '7am', '11pm', 'mon-sun', '907/1177, Sai Optimus Building, 5th Main, 7th Sector, HSR Layout, Bengaluru, Karnataka 560102', '60d971acbc8dc.png', '2021-06-28 12:31:44'),
(2, 8, 'Adyar Ananda Bhavan Sweets', 'a2b@gmail.com', '91-7338816622', 'aabsweets.com', '7am', '10pm', 'mon-sun', ' BPCL. Petrol Bunk #344, 7th Block, 80 Feet Road, Hosur Rd, Koramangala, Bengaluru, Karnataka 560095', '60d9745d97867.png', '2021-06-28 14:42:49'),
(3, 4, 'Burger King', 'Burgerking@gmail.com', '080 4175 9034', 'Burgerking.com', '10am', '10pm', 'mon-sun', 'No 1508/1081, Ground Floor, Sector 3, HSR Layout, Bengaluru, Karnataka 560102', '60d974eabbcd9.png', '2021-06-28 12:38:15'),
(4, 3, 'Pizza Hut', 'pizzahut@gmail.com', '1800 202 2022', 'pizzahut.com', '10am', '10pm', 'mon-sun', '55, Bommasandra Village, Hosur Rd, Electronic City, Bengaluru, Karnataka 560099', '60d976667455c.png', '2021-06-28 12:43:44'),
(5, 5, 'KFC', 'kfc@gmail.com', '080 4275 4444', 'kfc.com', '11am', '11pm', 'sat-sun', 'Total Mall, Madiwala Rd, Bengaluru, Karnataka 560034', '60d9775eb5026.png', '2021-06-28 12:47:48'),
(6, 2, 'New Ambur Briyani Point', 'amburbiriyani@gmail.comm', '91-97391 91644', 'biriyaniambur.com', '8am', '8pm', 'sat-sun', '303, 1st Main Rd, 1st Block Koramangala, Koramangala, Bengaluru, Karnataka 560034', '60d985ea7ab7c.png', '2021-06-28 13:49:38'),
(7, 7, 'Juice Corner', 'juicekudithiya@gmail.com', '91-89713 13148', 'juicekudithiya.com', '10am', '9pm', 'mon-sun', 'Sidharata Colony, 2nd Block, Madiwala, Koramangala, Bengaluru, Karnataka 560068', '60d9880470eb3.png', '2021-06-28 16:40:46'),
(8, 8, 'Corner House Ice Cream', 'cornerhouseicecreams@gmail.com', '91-98459 23734', 'cornerhouseicecreams.com', '10am', '8pm', 'mon-sat', '61, First Floor, 1st A Main Rd, 7th Block, Koramangala, Bengaluru, Karnataka 560095', '60d987858c08d.png', '2021-06-28 16:47:27'),
(9, 9, 'Dominos Pizza', 'dominospizza@gmail.com', '91-95137 46310', 'dominonpizza.com', '10am', '9pm', 'mon-sun', 'Ground and First Floor, 800, 7th Cross, 15th Main Rd, near ICICI Bank, Stage 2, Bengaluru, Karnataka 560076', '60d98b00d3c5f.jpg', '2021-06-28 14:14:02');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE IF NOT EXISTS `res_category` (
  `c_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Meals', '2021-06-28 11:59:22'),
(2, 'Biryani', '2021-06-28 11:59:30'),
(3, 'Pizza', '2021-06-28 11:59:44'),
(4, 'Burger', '2021-06-28 11:59:50'),
(5, 'Chicken', '2021-06-28 11:59:55'),
(6, 'IceCream', '2021-06-28 17:01:45'),
(7, 'Refreshments', '2021-06-28 16:36:04'),
(8, 'Sweets', '2021-06-28 14:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'achar', 'hemanth', 'kumar', 'hemanth@gmail.com', '9611234174', 'e10adc3949ba59abbe56e057f20f883e', 'Adugodi, Bangalore 560030', 1, '2021-06-29 12:32:57');


-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE IF NOT EXISTS `users_orders` (
  `o_id` int(222) NOT NULL AUTO_INCREMENT,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 1, 'Masala Dosa', 1, '45.00', 'in process', '2021-06-29 12:30:41'),
(2, 1, 'Idli', 1, '30.00', 'closed', '2021-06-29 12:55:42'),
(3, 1, 'Veggie Supreme Pizza', 1, '350.00', 'rejected', '2021-06-29 12:55:46'),
(4, 1, 'Kushka Rice & Chicken Kebab [Half Plate]', 1, '210.00', 'NULL', '2021-06-29 12:55:49');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
