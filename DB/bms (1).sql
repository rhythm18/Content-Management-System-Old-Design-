-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2020 at 10:47 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `login_ip` varchar(150) DEFAULT NULL,
  `login_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `status`, `login_ip`, `login_date`) VALUES
(1, 'Admin', 'admin@admin.com', '1234', 1, '::1', '2020-06-29 16:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `art_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(500) NOT NULL,
  `details` text NOT NULL,
  `tags` varchar(250) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pic1` varchar(250) DEFAULT NULL,
  `pic2` varchar(250) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`art_id`, `user_id`, `cat_id`, `title`, `details`, `tags`, `post_date`, `update_date`, `pic1`, `pic2`, `views`, `status`) VALUES
(2, 0, 1, 'Test', 'GDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.GDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\nGDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.\r\n\r\n', 'Science', '2020-06-14 18:43:07', '2020-06-14 10:29:14', NULL, NULL, 8, 1),
(3, 0, 7, 'Test2', 'GDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.', 'Technology', '2020-06-14 18:53:18', '2020-06-15 02:32:47', NULL, NULL, 1, 0),
(5, 0, 1, 'Test4', 'GDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.', 'qw', '2020-06-15 13:25:55', '2020-06-17 01:40:15', '93199-nature2.jpg', NULL, 0, 1),
(6, 0, 1, 'Tes', 'GDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.', 'tes', '2020-06-15 13:39:01', '2020-06-17 01:38:38', '823713-flowers.jpg', NULL, 0, 1),
(7, 0, 4, 'sc', 'GDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.', 'sc', '2020-06-15 13:59:12', '2020-06-15 13:59:12', NULL, NULL, 0, 1),
(8, 0, 4, '1sc', 'GDI is committed to make positive impact on the lives of its customers across India. It also aims to provide the best business opportunity to thousand of youth with diverse backgrounds.', 'sc', '2020-06-15 02:38:46', '2020-06-15 02:38:46', NULL, NULL, 0, 0),
(10, 0, 1, 'edu', 'image', 'img', '2020-06-16 02:45:15', '2020-06-17 01:40:38', '911063-nature2.jpg', NULL, 0, 1),
(11, 0, 4, 'sc', 'image', 'img', '2020-06-16 02:50:36', '2020-06-16 02:50:36', 'flower.jpeg', NULL, 1, 1),
(12, 0, 4, 'sc', 'image', 'img', '2020-06-16 02:54:58', '2020-06-16 02:54:58', 'flower.jpeg', NULL, 0, 0),
(13, 0, 4, 'sc', 'image', 'img', '2020-06-16 02:55:20', '2020-06-16 02:55:20', 'flower.jpeg', NULL, 0, 1),
(14, 0, 1, 'edu', 'imgage', 'img', '2020-06-16 02:55:50', '2020-06-16 02:55:50', 'flower.jpeg', NULL, 0, 1),
(15, 0, 7, 'test', 'img', 'img', '2020-06-16 02:58:39', '2020-06-16 02:58:39', 'flower.jpeg', NULL, 0, 1),
(16, 0, 1, 'edu', 'image', 'img', '2020-06-16 03:01:25', '2020-06-16 03:01:25', 'flower.jpeg', NULL, 0, 1),
(17, 0, 4, 'sc', 'image', 'img', '2020-06-16 03:03:10', '2020-06-16 03:03:10', '406051-flower.jpeg', NULL, 0, 1),
(27, 20, 4, 'Science', '<p>abcdde</p>', 'abc', '2020-06-24 04:45:45', '2020-06-28 02:21:55', '483902-images.png', NULL, 22, 2),
(23, 0, 0, 'very new', '<p>latest</p>', 'now', '2020-06-23 08:33:39', '2020-06-23 08:33:39', '819068-export-icon-17.png', NULL, 0, 2),
(24, 0, 0, 'g', '<p>g</p>', 'g', '2020-06-23 08:34:56', '2020-06-23 08:34:56', '257329-export-icon-17.png', NULL, 0, 2),
(25, 0, 1, 'bok', '<p>b</p>', 'b', '2020-06-23 08:35:42', '2020-06-23 08:35:42', '31254-m.jpeg', NULL, 13, 1),
(32, 20, 0, 'car', '<p>shfs</p>', '', '2020-06-28 02:24:37', '2020-06-28 02:24:37', '873029-', NULL, 0, 2),
(34, 20, 1, 'wwe', '<p>fight</p>', '', '2020-06-28 11:41:29', '2020-06-28 11:41:29', '45478-bt-removebg-preview.png', NULL, 0, 1),
(29, 20, 12, 'Iphone XR ', '\r\nApple iPhone XR smartphone was launched in September 2018. The phone comes with a 6.10-inch touchscreen display with a resolution of 828x1792 pixels at a pixel density of 326 pixels per inch (ppi) and an aspect ratio of 19.5:9. Apple iPhone XR is powered by a hexa-core Apple A12 Bionic processor. It comes with 3GB of RAM. The Apple iPhone XR runs iOS 12 and is powered by a 2942mAh non-removable battery. The Apple iPhone XR supports wireless charging, as well as proprietary fast charging.\r\n\r\nAs far as the cameras are concerned, the Apple iPhone XR on the rear packs a 12-megapixel camera with an f/1.8 aperture. The rear camera setup has autofocus. It sports a 7-megapixel camera on the front for selfies, with an f/2.2 aperture.\r\n\r\nApple iPhone XR based on iOS 12 and packs 64GB of inbuilt storage. The Apple iPhone XR is a dual-SIM (GSM and GSM) smartphone that accepts Nano-SIM and eSIM cards. The Apple iPhone XR measures 150.90 x 75.70 x 8.30mm (height x width x thickness) and weighs 194.00 grams. It was launched in Black, Blue, Coral, Red, White, and Yellow colours. It features an IP67 rating for dust and water protection.\r\n\r\nConnectivity options on the Apple iPhone XR include Wi-Fi 802.11 a/b/g/n/ac, GPS, Bluetooth v5.00, NFC, Lightning, 3G, and 4G (with support for Band 40 used by some LTE networks in India) with active 4G on both SIM cards. Sensors on the phone include accelerometer, ambient light sensor, barometer, gyroscope, proximity sensor, and compass/ magnetometer. The Apple iPhone XR supports face unlock with 3D face recognition.\r\n\r\nAs of 24th June 2020, Apple iPhone XR price in India starts at Rs. 52,500.\r\n\r\n', 'apple', '2020-06-25 12:05:42', '2020-06-25 12:05:42', '762123-iphone-xr-red-select-201809.png', NULL, 105, 1),
(30, 0, 12, 'Motorola One Fusion+ ', 'Using the Motorola One Fusion+ felt a lot like using a Google Pixel device, and I prefer the clean approach to Android over a custom skin. The rear-mounted fingerprint scanner is quick to unlock the smartphone. Since Google removed face recognition from Android 10, the Motorola One Fusion+ does not have this feature. We didn\'t miss it too much, as the pop-up camera is a little slow to rise.I did not notice any lag or stutter while using it, and could multitask very easily. There\'s enough grunt to handle day-to-day duties as well as gaming.I ran benchmarks on the Motorola One Fusion+ to see how it fares against the competition. In Antutu, the phone managed to score 273,407 points, whereas the Redmi Note 9 Pro Max managed 277,058 points. In Geekbench 5\'s single-core and multi-core tests, it scored 548 and 1,691 respectively while the Realme 6 Pro managed 567 and 1,683. The Motorola One Fusion+ also managed 7,917 points in PMark Work 2.0, as well as15fps and 55fps respectively in GFXBench\'s Car Chase and T-Rex tests. Clearly, the Motorola One Fusion+ has the chops to keep up with the competition.', 'motorola', '2020-06-25 12:35:22', '2020-06-25 12:53:45', '554328-motorola.jpg', NULL, 115, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cat_on_top` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_status`, `created_at`, `cat_on_top`) VALUES
(1, 'Education', 1, '2020-06-13 14:22:15', 0),
(2, 'Technology1', 0, '2020-06-13 14:41:05', 0),
(4, 'Science', 1, '2020-06-13 15:37:23', 0),
(7, 'test111', 1, '2020-06-14 13:59:44', 0),
(8, 'test', 1, '2020-06-14 13:59:55', 0),
(10, 'test2', 1, '2020-06-17 20:15:29', 0),
(11, 'animals', 1, '2020-06-17 20:16:00', 0),
(12, 'Mobiles', 1, '2020-06-24 23:55:52', 1),
(13, 'Programming', 1, '2020-06-24 23:56:42', 1),
(14, 'Latest News', 1, '2020-06-24 23:56:55', 1),
(15, 'Reviews', 1, '2020-06-24 23:57:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cmt_id` int(11) NOT NULL,
  `art_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `reply` varchar(500) DEFAULT NULL,
  `cmt_date` date DEFAULT NULL,
  `cmt_status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cmt_id`, `art_id`, `name`, `email`, `comment`, `reply`, `cmt_date`, `cmt_status`) VALUES
(1, 41, 'Manan Nagpal', 'manannagpal7@gmail.com', 'Drinking vinegar stumptown yr pop-up artisan sunt. Deep v cliche lomo biodiesel Neutra selfies. Shorts fixie consequat flexitarian four loko tempor duis single-origin coffee. Banksy, elit small.', NULL, '2020-06-22', 0),
(2, 41, 'Manan Nagpal', 'manannagpal7@gmail.com', 'Drinking vinegar stumptown yr pop-up artisan sunt. Deep v cliche lomo biodiesel Neutra selfies. Shorts fixie consequat flexitarian four loko tempor duis single-origin coffee. Banksy, elit small.', NULL, '2020-06-22', 0),
(3, 41, 'Manan Nagpal', 'manannagpal7@gmail.com', 'Drinking vinegar stumptown yr pop-up artisan sunt. Deep v cliche lomo biodiesel Neutra selfies. Shorts fixie consequat flexitarian four loko tempor duis single-origin coffee. Banksy, elit small.', NULL, '2020-06-22', 0),
(5, 41, 'Manan Nagpal', 'manannagpal7@gmail.com', 'hello', NULL, '2020-06-22', 0),
(6, 41, 'Manan Nagpal', 'manannagpal7@gmail.com', 'hello', NULL, '2020-06-22', 0),
(7, 40, 'Manan Nagpal', 'manannagpal7@gmail.com', 'hello', NULL, '2020-06-22', 0),
(8, 40, 'Manan Nagpal', 'manannagpal7@gmail.com', 'hello', NULL, '2020-06-22', 0),
(9, 40, 'Manan Nagpal', 'manannagpal7@gmail.com', 'hello', NULL, '2020-06-22', 0),
(12, 41, 'Rhythm Arya', 'rhythm@gmail.com', 'hiiiiiiiiiiiiiiiii', NULL, '2020-06-22', 0),
(16, 27, 'skslssl', 'lsslsl', 'dlsll', 'dd', '2020-06-28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mailing_list`
--

CREATE TABLE `mailing_list` (
  `m_id` int(11) NOT NULL,
  `n_id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `sent_date` datetime DEFAULT NULL,
  `sent_status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mailing_list`
--

INSERT INTO `mailing_list` (`m_id`, `n_id`, `email`, `create_date`, `sent_date`, `sent_status`) VALUES
(19, 47, 'manan@gmail.com', '2020-06-24 04:08:57', '2020-06-24 04:21:17', 1),
(20, 47, 'pcsaini@gmail.com', '2020-06-24 04:08:57', '2020-06-24 04:21:31', 1),
(21, 47, 'rhythm@gmail.com', '2020-06-24 04:08:57', '2020-06-24 04:20:20', 1),
(22, 48, 'manan@gmail.com', '2020-06-25 12:13:08', '2020-06-25 12:13:27', 1),
(23, 48, 'pcsaini@gmail.com', '2020-06-25 12:13:08', '2020-06-25 12:14:44', 1),
(24, 48, 'rhythm@gmail.com', '2020-06-25 12:13:08', '2020-06-25 12:14:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `n_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `sent_date` date DEFAULT NULL,
  `sent` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`n_id`, `title`, `content`, `create_date`, `update_date`, `sent_date`, `sent`) VALUES
(47, '2020-06-24- Newsletter', '<html><head><title>Blog-Newsletter</title><meta charset=\'utf-8\'>\n  <meta name=\'viewport\' content=\'width=device-width, initial-scale=1\'>\n  <link rel=\'stylesheet\' href=\'https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\'>\n  <script src=\'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\'></script>\n  <script src=\'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\'></script>\n  <script src=\'https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\'></script>\n  </head>\n  <body>\n  <div class=\'container-fluid bg-muted\'>\n  <div class=\'row\'>\n\n<div class=\'col-md-12\'>\n    <img src=\'http://localhost/projects/betechnical/images/grey-logo.jpeg\' width=\'1400\' height=\'370\'>\n</div>\n</div>\n<div class=\'row mt-4\'>\n  <div class=\'col-md-9\'><div class=\'row\'>\n  <div class=\'col-md-2 float-left\'><img src=\'http://localhost/projects/betechnical/upload/946840-Alter-table.png\'class=\'img-fluid\'></div><div class=\'col-md-10 float-right\'>\n<b><a href=http://localhost/projects/betechnical/show_article.php?artID=26>oiuytrew</a></b><p><p>pou</p></p><hr></div></div><div class=\'row\'>\n  <div class=\'col-md-2 float-left\'><img src=\'http://localhost/projects/betechnical/upload/31254-m.jpeg\'class=\'img-fluid\'></div><div class=\'col-md-10 float-right\'>\n<b><a href=http://localhost/projects/betechnical/show_article.php?artID=25>bok</a></b><p><p>b</p></p><hr></div></div><div class=\'row\'>\n  <div class=\'col-md-2 float-left\'><img src=\'http://localhost/projects/betechnical/upload/257329-export-icon-17.png\'class=\'img-fluid\'></div><div class=\'col-md-10 float-right\'>\n<b><a href=http://localhost/projects/betechnical/show_article.php?artID=24>g</a></b><p><p>g</p></p><hr></div></div><div class=\'row\'>\n  <div class=\'col-md-2 float-left\'><img src=\'http://localhost/projects/betechnical/upload/819068-export-icon-17.png\'class=\'img-fluid\'></div><div class=\'col-md-10 float-right\'>\n<b><a href=http://localhost/projects/betechnical/show_article.php?artID=23>very new</a></b><p><p>latest</p></p><hr></div></div><div class=\'row\'>\n  <div class=\'col-md-2 float-left\'><img src=\'http://localhost/projects/betechnical/upload/92762-3927-200.png\'class=\'img-fluid\'></div><div class=\'col-md-10 float-right\'>\n<b><a href=http://localhost/projects/betechnical/show_article.php?artID=22>new</a></b><p><p>new</p></p><hr></div></div></div>\n<div class=\'col-md-3\'>\n  <h3>RightPanel</h3>\n  <div><a href=http://localhost/projects/betechnical/unsub.php?>\'Unsubscribe\'</a></div>\n</div>\n</div><div class=\'row mt-4\'>\n\n<div class=\'col-md-12\'>\n\n<div class=\'jumbotron text-center text-white bg-dark\'>\n<h5>© 2020. All Rights Reserved | Design by xyx.in</h5>\n\n</div>\n</div>\n</div>\n</div></body></html>', '2020-06-24 04:08:48', NULL, '2020-06-24', 1),
(48, '2020-06-25- Newsletter', '<html><head><title>Blog-Newsletter</title><meta charset=\'utf-8\'>\n  <meta name=\'viewport\' content=\'width=device-width, initial-scale=1\'>\n  <link rel=\'stylesheet\' href=\'https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\'>\n  <script src=\'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\'></script>\n  <script src=\'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\'></script>\n  <script src=\'https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\'></script>\n  </head>\n  <body>\n  <div class=\'container-fluid bg-muted\'>\n  <div class=\'row\'>\n\n<div class=\'col-md-12\'>\n    <img src=\'http://localhost/projects/betechnical/images/grey-logo.jpeg\' width=\'1400\' height=\'370\'>\n</div>\n</div>\n<div class=\'row mt-4\'>\n  <div class=\'col-md-9\'><div class=\'row\'>\n  <div class=\'col-md-2 float-left\'><img src=\'http://localhost/projects/betechnical/upload/762123-iphone-xr-red-select-201809.png\'class=\'img-fluid\'></div><div class=\'col-md-10 float-right\'>\n<b><a href=http://localhost/projects/betechnical/show_article.php?artID=29>Iphone XR </a></b><p>\\r\\nApple iPhone XR smartphone was launched in September 2018. The phone comes with a 6.10-inch touchscreen display with a resolution of 828x1792 pixels at a pixel density of 326 pixels per inch (ppi) and an aspect ratio of 19.5:9. Apple iPhone XR is powered by a hexa-core Apple A12 Bionic processor. It comes with 3GB of RAM. The Apple iPhone XR runs</p><hr></div></div><div class=\'row\'>\n  <div class=\'col-md-2 float-left\'><img src=\'http://localhost/projects/betechnical/upload/16466-\'class=\'img-fluid\'></div><div class=\'col-md-10 float-right\'>\n<b><a href=http://localhost/projects/betechnical/show_article.php?artID=28>latest</a></b><p><p>v</p></p><hr></div></div><div class=\'row\'>\n  <div class=\'col-md-2 float-left\'><img src=\'http://localhost/projects/betechnical/upload/483902-images.png\'class=\'img-fluid\'></div><div class=\'col-md-10 float-right\'>\n<b><a href=http://localhost/projects/betechnical/show_article.php?artID=27>science x</a></b><p><p>abc</p></p><hr></div></div><div class=\'row\'>\n  <div class=\'col-md-2 float-left\'><img src=\'http://localhost/projects/betechnical/upload/946840-Alter-table.png\'class=\'img-fluid\'></div><div class=\'col-md-10 float-right\'>\n<b><a href=http://localhost/projects/betechnical/show_article.php?artID=26>oiuytrews</a></b><p><p>pou</p></p><hr></div></div><div class=\'row\'>\n  <div class=\'col-md-2 float-left\'><img src=\'http://localhost/projects/betechnical/upload/31254-m.jpeg\'class=\'img-fluid\'></div><div class=\'col-md-10 float-right\'>\n<b><a href=http://localhost/projects/betechnical/show_article.php?artID=25>bok</a></b><p><p>b</p></p><hr></div></div></div>\n<div class=\'col-md-3\'>\n  <h3>RightPanel</h3>\n  <div><a href=http://localhost/projects/betechnical/unsub.php?>\'Unsubscribe\'</a></div>\n</div>\n</div><div class=\'row mt-4\'>\n\n<div class=\'col-md-12\'>\n\n<div class=\'jumbotron text-center text-white bg-dark\'>\n<h5>© 2020. All Rights Reserved | Design by xyx.in</h5>\n\n</div>\n</div>\n</div>\n</div></body></html>', '2020-06-25 12:12:58', NULL, '2020-06-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `mail_per_hr` int(11) NOT NULL,
  `mail_from` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `mail_per_hr`, `mail_from`, `update_date`) VALUES
(1, 5, 'admin@test.com', '2020-06-18 11:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `sid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`sid`, `email`, `join_date`, `update_date`, `status`) VALUES
(1, 'manan@gmail.com', '2020-06-18 14:53:22', '2020-06-18 14:53:22', 1),
(2, 'pcsaini@gmail.com', '2020-06-18 14:53:22', '2020-06-18 14:53:22', 1),
(11, 'pul2699@gmail.com', '2020-06-29 13:11:10', '2020-06-29 13:11:10', 1),
(8, 'rhythm@gmail.com', '2020-06-23 19:41:59', '2020-06-23 19:41:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `mobile` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `email_verify` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_activity` datetime DEFAULT NULL,
  `login_ip` varchar(100) DEFAULT NULL,
  `sub_status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `user_pass`, `first_name`, `last_name`, `mobile`, `city`, `state`, `status`, `email_verify`, `created_at`, `updated_at`, `last_activity`, `login_ip`, `sub_status`) VALUES
(20, 'rhythm@gmail.com', '1234', 'Rhythm', 'Arya', '775756755', 'Delhi', 'New Delhi', 1, 1, '2020-06-12 21:03:53', '2020-06-29 00:00:00', '2020-06-29 15:02:05', '::1', 1),
(27, 'pul2699@gmail.com', '1234', 'Pulkits', 'Sharma', '', 'delhi', NULL, 1, 0, '2020-06-26 00:00:00', '2020-06-26 22:53:40', '2020-06-26 23:35:18', '::1', 1),
(31, 'ram@gmail.com', '123', 'ram', 'ram', '', 'delhi', NULL, 0, 1, '2020-06-27 00:00:00', '2020-06-27 14:17:03', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cmt_id`);

--
-- Indexes for table `mailing_list`
--
ALTER TABLE `mailing_list`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mailing_list`
--
ALTER TABLE `mailing_list`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
