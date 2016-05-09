-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016-05-06 21:59:28
-- 服务器版本: 5.5.49-0ubuntu0.14.04.1
-- PHP 版本: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `supermarket`
--

-- --------------------------------------------------------

--
-- 表的结构 `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `inPrice` int(11) NOT NULL,
  `salePrice` int(11) NOT NULL,
  `inNum` int(11) NOT NULL,
  `inTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `num` int(11) NOT NULL,
  `saleAmount` int(11) NOT NULL,
  `earn` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `data`
--

INSERT INTO `data` (`id`, `name`, `inPrice`, `salePrice`, `inNum`, `inTime`, `num`, `saleAmount`, `earn`) VALUES
(1, '黄运智', 999, 99999, 99, '2015-12-31 05:32:57', 96, 3, 297000),
(2, '荣耀5X', 666, 999, 99, '2015-12-31 05:23:03', 97, 2, 666),
(3, '荣耀7', 888, 1799, 99, '2015-12-31 05:23:03', 97, 2, 1822),
(4, '畅玩4C', 555, 799, 99, '2015-12-31 05:15:02', 99, 0, 0),
(5, '华为P8', 999, 1588, 99, '2015-12-31 05:15:29', 99, 0, 0),
(6, '荣耀5A', 233, 599, 99, '2015-12-31 05:15:55', 99, 0, 0),
(7, '荣耀8', 1233, 2079, 99, '2015-12-31 05:19:02', 99, 0, 0),
(8, '华为mate8', 1233, 2699, 99, '2015-12-31 05:19:23', 99, 0, 0),
(9, '华为mateS', 1233, 4999, 99, '2015-12-31 05:19:46', 99, 0, 0),
(12, '12', 12, 12, 12, '2015-12-31 05:43:16', 12, 0, 0),
(13, '13', 13, 13, 13, '2015-12-31 05:43:23', 13, 0, 0),
(14, '14', 14, 14, 14, '2015-12-31 05:43:29', 14, 0, 0),
(111, 'iphone6s', 999, 5799, 999, '2015-12-31 05:39:19', 996, 3, 14400),
(1111, '1111', 1111, 1222, 111, '2015-12-31 05:31:48', 111, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `data2`
--

CREATE TABLE IF NOT EXISTS `data2` (
  `id` int(11) NOT NULL COMMENT '商品代码',
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `inPrice` int(11) NOT NULL,
  `salePrice` int(11) NOT NULL,
  `inNum` int(11) NOT NULL,
  `inTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `num` int(11) NOT NULL,
  `saleAmount` int(11) NOT NULL DEFAULT '0',
  `earn` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `inPrice` (`inPrice`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `inTime` (`inTime`),
  UNIQUE KEY `id_4` (`id`,`name`,`inPrice`,`salePrice`,`inNum`,`inTime`,`num`,`saleAmount`,`earn`),
  UNIQUE KEY `id_5` (`id`,`name`,`inPrice`,`salePrice`,`inNum`,`inTime`,`num`,`saleAmount`,`earn`),
  KEY `id_2` (`id`),
  KEY `id_3` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `data2`
--

INSERT INTO `data2` (`id`, `name`, `inPrice`, `salePrice`, `inNum`, `inTime`, `num`, `saleAmount`, `earn`) VALUES
(1, '2', 3, 4, 5, '2015-12-08 10:59:38', 5, 0, 0),
(5, '5', 5, 5, 5, '2015-12-08 11:21:36', 5, 0, 0),
(6, '6', 6, 7, 7, '2015-12-08 11:21:52', 7, 0, 0),
(7, '7', 7, 7, 7, '2015-12-08 11:02:14', 7, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `saleTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `salePrice` int(11) NOT NULL,
  `saleNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sale`
--

INSERT INTO `sale` (`id`, `name`, `saleTime`, `salePrice`, `saleNum`) VALUES
(1, '1', '2015-12-28 06:03:10', 1, 1),
(1, '1', '2015-12-28 06:05:51', 1, 1),
(3, '荣耀7', '2015-12-31 05:23:03', 3598, 2),
(2, '荣耀5X', '2015-12-31 05:23:03', 1998, 2),
(1, '黄运智', '2015-12-31 05:32:23', 199998, 2),
(1, '黄运智', '2015-12-31 05:32:57', 99999, 1),
(111, 'iphone6s', '2015-12-31 05:32:57', 5799, 1),
(111, 'iphone6s', '2015-12-31 05:39:19', 11598, 2);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`username`, `password`, `id`) VALUES
('admin', 'admin', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
