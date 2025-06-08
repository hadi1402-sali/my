-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 08, 2025 at 11:53 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `amir`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `image_url`) VALUES
(2, 'حضور در مسابقات ACM', 'دانش‌آموزان رشته شبکه و نرم‌افزار به همراه استاد امیر نیرومند و استاد فتاحی در مسابقات ACM حضور یافتند.', 'images/10.jpg'),
(3, 'تقدیر ', 'تجلیل از هنرجویان منتخب در جشنواره هنرهای نمایشی امروز هنرستان خلیج فارس سپاهان شهر', 'images/11.jpg'),
(5, 'اردو حیاطی', 'برگزاری آخرین اردو حیاطی سال تحصیلی 1402-1403 در حیاط این هنرستان برگزار شد', 'images/12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `description` text COLLATE utf8_persian_ci,
  `image_url` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `description`, `image_url`) VALUES
(1, 'کارگاه طراحی دوخت', 'دانش‌آموزان یازدهم ژوژمان پودمان برگزار کرده اند', 'images/2.jpg'),
(2, 'نمایشگاه فتوگرافیک', 'بچه های فتو گرافیک هنرهای خود را به نمایش گذاشتند', 'images/5.jpg'),
(3, 'اردو', 'برگزاری اردو کرمان یک روزه همراه با کادر مدرسه در سال 1403', 'images/4.jpg'),
(4, 'بازدید', 'بازدید آموزش پرورش از نمایشگاه کار آفرینی در هفته کار و کار آفرینی در سال 1404', 'images/6.jpg'),
(7, 'کارگاه نقشه کشی', 'پایان سال تحصیلی دهم نرم افزار با استاد ایمانیان درس نقشه کشی', 'images/9.jpg'),
(9, 'تقدیر', 'تقدیر از دانش آموزان برتر هنرستان در هر رشته و هر کلاس', 'images/gallery/1749055036_8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register_form`
--

CREATE TABLE IF NOT EXISTS `register_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `course` varchar(100) NOT NULL,
  `message` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `register_form`
--

INSERT INTO `register_form` (`id`, `name`, `phone`, `course`, `message`, `created_at`) VALUES
(1, 'فاطمه زهرا صالحی', '09135763546', 'نرم‌افزار و حسابداری', 'لطفا فقط در همین رشته ثبت شود', '2025-06-04 17:49:37'),
(2, 'پرستو قاسمی', '09940937950', ' شبکه و نرم افزار ', '', '2025-06-04 18:01:05'),
(5, 'نازنین زهرا صالحی ', '09138433609', 'تربیت کودک  ', '', '2025-06-04 19:01:02'),
(6, 'یگانه زهرا صالحی ', '09132303546', ' فتوگرافیک', 'در سال های آینده ان شالله', '2025-06-04 20:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`) VALUES
(1, 'admin', 'admin123', 0);
