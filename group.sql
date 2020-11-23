-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-11-23 19:18:39
-- 伺服器版本： 10.4.14-MariaDB
-- PHP 版本： 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `group`
--

-- --------------------------------------------------------

--
-- 資料表結構 `apply`
--

CREATE TABLE `apply` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `number` int(100) NOT NULL,
  `father` varchar(100) NOT NULL,
  `mother` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `teacher_comment` varchar(100) DEFAULT NULL,
  `teacher_name` varchar(100) DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  `secretary_comment` varchar(100) DEFAULT NULL,
  `secretary_name` varchar(100) DEFAULT NULL,
  `principal_name` varchar(100) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `apply`
--

INSERT INTO `apply` (`id`, `name`, `number`, `father`, `mother`, `type`, `teacher_comment`, `teacher_name`, `result`, `secretary_comment`, `secretary_name`, `principal_name`, `status`) VALUES
(6, 'pinping', 1233455, 'father', 'mother', '家庭突發因素', '四個人擠一張雙人床', 'XXX', '補助100000', '先買兩張床給他們', '宜家家具', NULL, '結案'),
(10, 'student', 1233455, 'cioufather', 'cioumother', '中低收入戶', '洗澡沒有熱水器', '我是導師', '補助100000', '很窮 要給錢', '秘書是我', NULL, '決行(已結案)'),
(11, 'student1', 129310834, 'father', 'mother', '家庭突發因素', '四個人擠一張雙人床', '我是他的導師', '補助100', '很窮 要給錢', '秘書是我', NULL, '決行(已結案)'),
(12, 'student2', 124245687, 'father', 'mother', '中低收入戶', '洗澡沒有熱水器', '某某某', '補助1002334', '非常需要補助', '宜家家具', NULL, '否決(已結案)');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `LoginID` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `LoginID`, `password`, `role`) VALUES
(1, 'student', '123', 0),
(2, 'teacher', '123', 1),
(3, 'secretary', '123', 2),
(4, 'principal', '123', 3),
(5, 'pinping', '123', 0),
(6, 'secret', '123', 2),
(7, 'Iamateacher', '123', 1),
(8, 'Iamaprincipal', '123', 3),
(9, 'student1', '123', 0),
(10, 'student2', '123', 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `apply`
--
ALTER TABLE `apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
