-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2020 年 11 月 19 日 12:33
-- 伺服器版本： 5.7.30
-- PHP 版本： 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

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
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `apply`
--

INSERT INTO `apply` (`id`, `name`, `number`, `father`, `mother`, `type`, `teacher_comment`, `teacher_name`, `result`, `secretary_comment`, `secretary_name`, `principal_name`, `status`) VALUES
(1, '何政賢', 106213015, '爸', '媽', '低收入戶', '導師的意見', '林書豪', '為低收入戶', '很可憐', '我是秘書', 'chen', 0),
(3, '陳', 1062345, '王', '林', '中低收入戶', NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `LoginID` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `LoginID`, `password`) VALUES
(1, 'student', '123'),
(2, 'teacher', '123'),
(3, 'secretary', '123'),
(4, 'principal', '123');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
