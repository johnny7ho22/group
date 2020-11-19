-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- 主機： localhost:8889
-- 產生時間： 2020 年 11 月 19 日 05:41
-- 伺服器版本： 5.7.30
-- PHP 版本： 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- 資料庫： `group`
--
CREATE DATABASE IF NOT EXISTS `group` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `group`;

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
  `type` int(11) NOT NULL,
  `teacher_comment` varchar(100) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `result` varchar(100) NOT NULL,
  `secretary_comment` varchar(100) NOT NULL,
  `secretary_name` varchar(100) NOT NULL,
  `principal_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `apply`
--
ALTER TABLE `apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 資料庫： `johnny7ho22`
--
CREATE DATABASE IF NOT EXISTS `johnny7ho22` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `johnny7ho22`;
--
-- 資料庫： `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- 資料表結構 `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `urgent` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '一般',
  `addTime` datetime NOT NULL,
  `finishTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `todo`
--

INSERT INTO `todo` (`id`, `title`, `content`, `status`, `urgent`, `addTime`, `finishTime`) VALUES
(1, '1', '1', 0, '一般', '0000-00-00 00:00:00', '2020-11-05 10:39:33'),
(2, '2', '2', 1, '緊急', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '3.1', '3.1', 2, '重要', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '4', '4', 3, '一般', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '5', '5', 1, '緊急', '2020-11-05 10:57:54', '2020-11-17 20:56:51');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `loginID` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `loginID`, `password`) VALUES
(1, 'jc', '123'),
(2, 'boss', '123');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `todo`
--
ALTER TABLE `todo`
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
-- 使用資料表自動遞增(AUTO_INCREMENT) `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 資料庫： `Todo`
--
CREATE DATABASE IF NOT EXISTS `Todo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Todo`;

-- --------------------------------------------------------

--
-- 資料表結構 `guestbook`
--

CREATE TABLE `guestbook` (
  `id` int(11) NOT NULL,
  `title` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `msg` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `guestbook`
--

INSERT INTO `guestbook` (`id`, `title`, `msg`, `name`) VALUES
(1, 'Amazing News', 'This is the first post', 'JC');

-- --------------------------------------------------------

--
-- 資料表結構 `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `degree` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `todo`
--

INSERT INTO `todo` (`id`, `title`, `content`, `status`, `type`, `degree`) VALUES
(2, '程式設計', '完成上機考', 0, 1, 2),
(5, '作業系統', '完成作業系統', 0, 2, 3),
(6, '網頁設計', '網頁設計內容', 0, 3, 1),
(7, '資料庫', '資料庫內容', 0, 4, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `loginID` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`id`, `loginID`, `password`) VALUES
(1, 'jc', '123');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `todo`
--
ALTER TABLE `todo`
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
-- 使用資料表自動遞增(AUTO_INCREMENT) `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 資料庫： `topic_puli`
--
CREATE DATABASE IF NOT EXISTS `topic_puli` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `topic_puli`;

-- --------------------------------------------------------

--
-- 資料表結構 `code_name`
--

CREATE TABLE `code_name` (
  `id` int(11) NOT NULL,
  `s_code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `drilldown`
--

CREATE TABLE `drilldown` (
  `id` int(11) NOT NULL,
  `drill_name` varchar(100) NOT NULL,
  `title1` varchar(100) NOT NULL,
  `percentage1` int(11) NOT NULL,
  `title2` varchar(100) NOT NULL,
  `percentage2` int(11) NOT NULL,
  `title3` varchar(100) NOT NULL,
  `percentage3` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `drilldown`
--

INSERT INTO `drilldown` (`id`, `drill_name`, `title1`, `percentage1`, `title2`, `percentage2`, `title3`, `percentage3`, `year`) VALUES
(1, 'E11', '0004A', 44, '0102A', 34, '0510A', 22, 105),
(2, 'N18', '0408A', 56, '0308A', 26, '0411A', 18, 105),
(3, 'K21', '0524A', 50, '0324A', 25, '0306A', 25, 105),
(4, 'E11', '0308A', 38, '0524A', 31, '0307A', 31, 106),
(5, 'N18', '0102A', 42, '0307A', 33, '0524A', 25, 106),
(6, 'K21', '0326A', 50, '0307A', 33, '0524A', 17, 106),
(7, 'E11', '0524A', 40, '0102A', 30, '0307A', 30, 107),
(8, 'N18', '0406A', 43, '0503A', 43, '0415A', 14, 107),
(9, 'K21', '0713A', 50, '0102A', 25, '0524A', 25, 107),
(10, 'E11', '0524A', 56, '0010A', 12, '0324A', 32, 108),
(11, 'N18', '0308A', 43, '0102A', 32, '0524A', 25, 108),
(12, 'K21', '0306A', 46, '0335A', 15, '0509A', 39, 108);

-- --------------------------------------------------------

--
-- 資料表結構 `e11_drug`
--

CREATE TABLE `e11_drug` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `drug` varchar(100) DEFAULT NULL,
  `dosage` float DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `Drug_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `e11_drug`
--

INSERT INTO `e11_drug` (`id`, `m_id`, `drug`, `dosage`, `frequency`, `note`, `Drug_other`) VALUES
(30, 0, '胰島素', 0, '', '', ''),
(31, 0, '胰島素', 0, '', '', ''),
(54, 123456, '', 0, '', '', ''),
(55, 123456, '', 0, '', '', ''),
(56, 2222222, '', 0, '', '', ''),
(57, 44444, 'A023284100_E11', 22, '22', '', '12015C'),
(58, 44444, 'AC316761G0', 11, '11111', '', '12015C');

-- --------------------------------------------------------

--
-- 資料表結構 `e11_exam`
--

CREATE TABLE `e11_exam` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Glucose_AC` float DEFAULT NULL,
  `PC` float DEFAULT NULL,
  `Hemoglbin_A1C` float DEFAULT NULL,
  `Creatinine` float DEFAULT NULL,
  `ACR` float DEFAULT NULL,
  `Total_Cholesterol` float DEFAULT NULL,
  `LDL_C` float DEFAULT NULL,
  `HDL_C` float DEFAULT NULL,
  `Triglyceride` float DEFAULT NULL,
  `AST_GOT` float DEFAULT NULL,
  `ALT_GPT` float DEFAULT NULL,
  `whether_itchy_skin` int(11) NOT NULL DEFAULT '0',
  `itchy_skin` varchar(100) DEFAULT NULL,
  `whether_skin_wound` int(11) NOT NULL DEFAULT '0',
  `skin_wound` varchar(100) DEFAULT NULL,
  `whether_skin_sores` int(11) NOT NULL DEFAULT '0',
  `skin_sores` varchar(100) DEFAULT NULL,
  `whether_boils` int(11) NOT NULL DEFAULT '0',
  `boils` varchar(100) DEFAULT NULL,
  `whether_cellulitis` int(11) NOT NULL DEFAULT '0',
  `cellulitis` varchar(100) DEFAULT NULL,
  `whether_foot_tingling` int(11) NOT NULL DEFAULT '0',
  `foot_tingling` varchar(100) DEFAULT NULL,
  `whether_decayed_tooth` int(11) NOT NULL DEFAULT '0',
  `decayed_tooth` varchar(100) DEFAULT NULL,
  `whether_swollen_gums` int(11) NOT NULL DEFAULT '0',
  `swollen_gums` varchar(100) DEFAULT NULL,
  `whether_gingival_recession` int(11) NOT NULL DEFAULT '0',
  `gingival_recession` varchar(100) DEFAULT NULL,
  `whether_blurred_vision` int(11) NOT NULL DEFAULT '0',
  `blurred_vision` varchar(100) DEFAULT NULL,
  `whether_diplopia` int(11) NOT NULL DEFAULT '0',
  `diplopia` varchar(100) DEFAULT NULL,
  `Exam_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `e11_exam`
--

INSERT INTO `e11_exam` (`id`, `m_id`, `Date`, `Glucose_AC`, `PC`, `Hemoglbin_A1C`, `Creatinine`, `ACR`, `Total_Cholesterol`, `LDL_C`, `HDL_C`, `Triglyceride`, `AST_GOT`, `ALT_GPT`, `whether_itchy_skin`, `itchy_skin`, `whether_skin_wound`, `skin_wound`, `whether_skin_sores`, `skin_sores`, `whether_boils`, `boils`, `whether_cellulitis`, `cellulitis`, `whether_foot_tingling`, `foot_tingling`, `whether_decayed_tooth`, `decayed_tooth`, `whether_swollen_gums`, `swollen_gums`, `whether_gingival_recession`, `gingival_recession`, `whether_blurred_vision`, `blurred_vision`, `whether_diplopia`, `diplopia`, `Exam_other`) VALUES
(19, 0, '2020-10-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', ''),
(32, 123456, '2020-10-27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', ''),
(33, 123456, '2020-10-27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', ''),
(34, 2222222, '2020-10-27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', ''),
(35, 44444, '2020-10-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `e11_laboratory`
--

CREATE TABLE `e11_laboratory` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `EKG` int(11) NOT NULL DEFAULT '0',
  `laboratory_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `e11_laboratory`
--

INSERT INTO `e11_laboratory` (`id`, `m_id`, `EKG`, `laboratory_other`) VALUES
(19, 0, 0, ''),
(32, 123456, 0, ''),
(33, 123456, 0, ''),
(34, 2222222, 0, ''),
(35, 44444, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `e11_past_history`
--

CREATE TABLE `e11_past_history` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `whether_surgery` int(11) NOT NULL DEFAULT '0',
  `surgery` varchar(100) DEFAULT NULL,
  `whether_medical_history` int(11) NOT NULL DEFAULT '0',
  `medical_history` varchar(100) DEFAULT NULL,
  `whether_home_history` int(11) NOT NULL DEFAULT '0',
  `home_history` varchar(100) DEFAULT NULL,
  `whether_allergies` int(11) NOT NULL DEFAULT '0',
  `allergies` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `e11_past_history`
--

INSERT INTO `e11_past_history` (`id`, `m_id`, `whether_surgery`, `surgery`, `whether_medical_history`, `medical_history`, `whether_home_history`, `home_history`, `whether_allergies`, `allergies`) VALUES
(19, 0, 0, '', 0, '', 0, '', 0, ''),
(32, 123456, 0, '', 0, '', 0, '', 0, ''),
(33, 123456, 0, '', 0, '', 0, '', 0, ''),
(34, 2222222, 0, '', 0, '', 0, '', 0, ''),
(35, 44444, 0, '', 0, '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `e11_plan`
--

CREATE TABLE `e11_plan` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `plan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `e11_plan`
--

INSERT INTO `e11_plan` (`id`, `m_id`, `plan`) VALUES
(19, 0, ''),
(32, 123456, ''),
(33, 123456, ''),
(34, 2222222, ''),
(35, 44444, '');

-- --------------------------------------------------------

--
-- 資料表結構 `e11_present_illness`
--

CREATE TABLE `e11_present_illness` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `polyphagia` int(11) NOT NULL DEFAULT '0',
  `polyuria` int(11) NOT NULL DEFAULT '0',
  `polydipsia` int(11) NOT NULL DEFAULT '0',
  `weight_loss` int(11) NOT NULL DEFAULT '0',
  `hungry_easily` int(11) NOT NULL DEFAULT '0',
  `fatigue` int(11) NOT NULL DEFAULT '0',
  `weak` int(11) DEFAULT '0',
  `Poor_appetite` int(11) NOT NULL DEFAULT '0',
  `irritable` int(11) NOT NULL DEFAULT '0',
  `whether_wound` int(11) NOT NULL DEFAULT '0',
  `wound` varchar(100) DEFAULT NULL,
  `whether_sole_tingling` int(11) NOT NULL DEFAULT '0',
  `sole_tingling` varchar(100) DEFAULT NULL,
  `Present_Illness_other` varchar(100) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `BP_E11` int(11) DEFAULT NULL,
  `HR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `e11_present_illness`
--

INSERT INTO `e11_present_illness` (`id`, `m_id`, `polyphagia`, `polyuria`, `polydipsia`, `weight_loss`, `hungry_easily`, `fatigue`, `weak`, `Poor_appetite`, `irritable`, `whether_wound`, `wound`, `whether_sole_tingling`, `sole_tingling`, `Present_Illness_other`, `height`, `weight`, `BP_E11`, `HR`) VALUES
(16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0),
(29, 123456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0),
(30, 123456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0),
(31, 2222222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', 0, 0, 0, 0),
(32, 44444, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, '', 0, '', '', 12222, 111, 11, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `e11_social_and_job`
--

CREATE TABLE `e11_social_and_job` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `job` varchar(100) DEFAULT NULL,
  `smoke` int(11) NOT NULL DEFAULT '0',
  `alcoholism` int(11) NOT NULL DEFAULT '0',
  `coffe` int(11) NOT NULL DEFAULT '0',
  `Social_and_job_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `e11_social_and_job`
--

INSERT INTO `e11_social_and_job` (`id`, `m_id`, `job`, `smoke`, `alcoholism`, `coffe`, `Social_and_job_other`) VALUES
(19, 0, NULL, 0, 0, 0, ''),
(32, 123456, NULL, 0, 0, 0, ''),
(33, 123456, NULL, 0, 0, 0, ''),
(34, 2222222, NULL, 0, 0, 0, ''),
(35, 44444, NULL, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `k21_drug`
--

CREATE TABLE `k21_drug` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `drug` varchar(100) DEFAULT NULL,
  `dosage` float DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `Drug_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `k21_drug`
--

INSERT INTO `k21_drug` (`id`, `m_id`, `drug`, `dosage`, `frequency`, `note`, `Drug_other`) VALUES
(7, 1, '胃粘膜保護劑', 0, '', '', ''),
(8, 22, '', 0, '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `k21_exam`
--

CREATE TABLE `k21_exam` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `LA_grade` varchar(100) DEFAULT NULL,
  `HbA1c` float DEFAULT NULL,
  `AC` float DEFAULT NULL,
  `LDL` float DEFAULT NULL,
  `Triglyceride` float DEFAULT NULL,
  `AST_GOT` float DEFAULT NULL,
  `ALT_GPT` float DEFAULT NULL,
  `EIA_LIA` float DEFAULT NULL,
  `WBC` float DEFAULT NULL,
  `RBC` float DEFAULT NULL,
  `CRP` float DEFAULT NULL,
  `Exam_P` float DEFAULT NULL,
  `Hb` float DEFAULT NULL,
  `HCT` float DEFAULT NULL,
  `Direct_bilirubin` float DEFAULT NULL,
  `albumin` float DEFAULT NULL,
  `Na` float DEFAULT NULL,
  `Exam_K` float DEFAULT NULL,
  `Exam_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `k21_exam`
--

INSERT INTO `k21_exam` (`id`, `m_id`, `Date`, `LA_grade`, `HbA1c`, `AC`, `LDL`, `Triglyceride`, `AST_GOT`, `ALT_GPT`, `EIA_LIA`, `WBC`, `RBC`, `CRP`, `Exam_P`, `Hb`, `HCT`, `Direct_bilirubin`, `albumin`, `Na`, `Exam_K`, `Exam_other`) VALUES
(7, 1, '2020-10-28', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(8, 22, '2020-10-28', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `k21_laboratory`
--

CREATE TABLE `k21_laboratory` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `whether_Developer` int(11) NOT NULL DEFAULT '0',
  `Developer` varchar(100) DEFAULT NULL,
  `whether_crack` int(11) NOT NULL DEFAULT '0',
  `crack` varchar(100) DEFAULT NULL,
  `whether_esophagus_narrow` int(11) NOT NULL DEFAULT '0',
  `esophagus_narrow` varchar(100) DEFAULT NULL,
  `whether_esophagus_change` int(11) NOT NULL DEFAULT '0',
  `esophagus_change` varchar(100) DEFAULT NULL,
  `whether_damage` int(11) NOT NULL DEFAULT '0',
  `damage` varchar(100) DEFAULT NULL,
  `whether_erosion` int(11) NOT NULL DEFAULT '0',
  `erosion` varchar(100) DEFAULT NULL,
  `whether_ulcer` int(11) NOT NULL DEFAULT '0',
  `ulcer` varchar(100) DEFAULT NULL,
  `whether_narrow` int(11) NOT NULL DEFAULT '0',
  `narrow` varchar(100) DEFAULT NULL,
  `whether_Esophageal_cancer` int(11) NOT NULL DEFAULT '0',
  `Esophageal_cancer` varchar(100) DEFAULT NULL,
  `laboratory_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `k21_laboratory`
--

INSERT INTO `k21_laboratory` (`id`, `m_id`, `whether_Developer`, `Developer`, `whether_crack`, `crack`, `whether_esophagus_narrow`, `esophagus_narrow`, `whether_esophagus_change`, `esophagus_change`, `whether_damage`, `damage`, `whether_erosion`, `erosion`, `whether_ulcer`, `ulcer`, `whether_narrow`, `narrow`, `whether_Esophageal_cancer`, `Esophageal_cancer`, `laboratory_other`) VALUES
(7, 1, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', ''),
(8, 22, 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `k21_past_history`
--

CREATE TABLE `k21_past_history` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `whether_surgery` int(11) NOT NULL DEFAULT '0',
  `surgery` varchar(100) DEFAULT NULL,
  `whether_medical_history` int(11) NOT NULL DEFAULT '0',
  `medical_history` varchar(100) DEFAULT NULL,
  `whether_home_history` int(11) NOT NULL DEFAULT '0',
  `home_history` varchar(100) DEFAULT NULL,
  `whether_allergies` int(11) NOT NULL DEFAULT '0',
  `allergies` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `k21_past_history`
--

INSERT INTO `k21_past_history` (`id`, `m_id`, `whether_surgery`, `surgery`, `whether_medical_history`, `medical_history`, `whether_home_history`, `home_history`, `whether_allergies`, `allergies`) VALUES
(7, 1, 0, '', 0, '', 0, '', 0, ''),
(8, 22, 0, '', 0, '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `k21_plan`
--

CREATE TABLE `k21_plan` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `plan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `k21_plan`
--

INSERT INTO `k21_plan` (`id`, `m_id`, `plan`) VALUES
(7, 1, ''),
(8, 22, '');

-- --------------------------------------------------------

--
-- 資料表結構 `k21_present_illness`
--

CREATE TABLE `k21_present_illness` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `BP_K21` int(11) DEFAULT NULL,
  `HR` int(11) DEFAULT NULL,
  `diarrhea` int(11) NOT NULL DEFAULT '0',
  `appetite` int(11) NOT NULL DEFAULT '0',
  `swallow` int(11) NOT NULL DEFAULT '0',
  `nauseous` int(11) NOT NULL DEFAULT '0',
  `vomiting` int(11) NOT NULL DEFAULT '0',
  `dizziness` int(11) NOT NULL DEFAULT '0',
  `pee` int(11) NOT NULL DEFAULT '0',
  `chest` int(11) NOT NULL DEFAULT '0',
  `weight_loss` int(11) NOT NULL DEFAULT '0',
  `acid` int(11) NOT NULL DEFAULT '0',
  `esophagus` int(11) NOT NULL DEFAULT '0',
  `chest_pain` int(11) NOT NULL DEFAULT '0',
  `teeth` int(11) NOT NULL DEFAULT '0',
  `cough` int(11) NOT NULL DEFAULT '0',
  `night_cough` int(11) NOT NULL DEFAULT '0',
  `asthma` int(11) NOT NULL DEFAULT '0',
  `Hiccup` int(11) NOT NULL DEFAULT '0',
  `Present_Illness_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `k21_present_illness`
--

INSERT INTO `k21_present_illness` (`id`, `m_id`, `height`, `weight`, `BP_K21`, `HR`, `diarrhea`, `appetite`, `swallow`, `nauseous`, `vomiting`, `dizziness`, `pee`, `chest`, `weight_loss`, `acid`, `esophagus`, `chest_pain`, `teeth`, `cough`, `night_cough`, `asthma`, `Hiccup`, `Present_Illness_other`) VALUES
(5, 1, 111, 111, 120, 50, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, ''),
(6, 22, 169, 50, 120, 50, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `k21_social_and_job`
--

CREATE TABLE `k21_social_and_job` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `job` varchar(100) DEFAULT NULL,
  `smoke` int(11) NOT NULL DEFAULT '0',
  `alcoholism` int(11) NOT NULL DEFAULT '0',
  `coffe` int(11) NOT NULL DEFAULT '0',
  `Social_and_job_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `k21_social_and_job`
--

INSERT INTO `k21_social_and_job` (`id`, `m_id`, `job`, `smoke`, `alcoholism`, `coffe`, `Social_and_job_other`) VALUES
(7, 1, NULL, 0, 0, 0, ''),
(8, 22, NULL, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `medical_record`
--

CREATE TABLE `medical_record` (
  `m_id` int(100) UNSIGNED NOT NULL,
  `date` varchar(100) NOT NULL,
  `disease_group` varchar(100) NOT NULL,
  `keyin` varchar(100) DEFAULT 'system'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `medical_record`
--

INSERT INTO `medical_record` (`m_id`, `date`, `disease_group`, `keyin`) VALUES
(1, '2020-10-28', 'K21', ''),
(22, '2020-10-28', 'K21', ''),
(5555, '2020-10-28', 'N18', ''),
(44444, '2020-10-28', 'E11', '2222'),
(2222222, '2020-10-27', 'E11', '林保勳王八蛋');

-- --------------------------------------------------------

--
-- 資料表結構 `n18_drug`
--

CREATE TABLE `n18_drug` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `drug` varchar(100) DEFAULT NULL,
  `dosage` float DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `Drug_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `n18_drug`
--

INSERT INTO `n18_drug` (`id`, `m_id`, `drug`, `dosage`, `frequency`, `note`, `Drug_other`) VALUES
(1, 2147483647, NULL, 33, '33', '', ''),
(4, 12345, NULL, 0, '', '', ''),
(5, 12340, NULL, 0, '', '', ''),
(6, 66, NULL, 0, '', '', ''),
(7, 222, NULL, 0, '', '', ''),
(9, 12366, NULL, 0, '', '', ''),
(10, 12366, NULL, 0, '', '', ''),
(11, 12366, NULL, 0, '', '', ''),
(12, 12366, NULL, 0, '', '', ''),
(13, 12366, NULL, 0, '', '', ''),
(14, 12366, NULL, 0, '', '', ''),
(15, 111111, NULL, 0, '', '', ''),
(16, 222, NULL, 0, '', '', ''),
(17, 222, NULL, 0, '', '', ''),
(20, 0, 'Array', NULL, NULL, '', ''),
(21, 0, 'Array', NULL, NULL, '123', ''),
(22, 0, 'Array', NULL, NULL, '123', ''),
(23, 0, 'Array', NULL, NULL, '123', ''),
(27, 5555, 'KC00955206', 22, '22', '', 'BC22890100'),
(28, 5555, 'BC22890100', 22, '22', '', 'BC22890100');

-- --------------------------------------------------------

--
-- 資料表結構 `n18_exam`
--

CREATE TABLE `n18_exam` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Hb` float DEFAULT NULL,
  `Platelet` float DEFAULT NULL,
  `WBC` float DEFAULT NULL,
  `Triglyceride` float DEFAULT NULL,
  `TG` float DEFAULT NULL,
  `cholesterol` float DEFAULT NULL,
  `LDL_cholesterol` float DEFAULT NULL,
  `creatinine` float DEFAULT NULL,
  `e_GFR` float DEFAULT NULL,
  `CKD_stages_STAGE` float DEFAULT NULL,
  `Albumin` float DEFAULT NULL,
  `Calcium` float DEFAULT NULL,
  `BUN` float DEFAULT NULL,
  `Uric_acid_Blood` float DEFAULT NULL,
  `AST_GOT` float DEFAULT NULL,
  `ALT_GPT` float DEFAULT NULL,
  `HbA1c` float DEFAULT NULL,
  `glucose_AC` float DEFAULT NULL,
  `Sodium_Blood` float DEFAULT NULL,
  `Potassium` float DEFAULT NULL,
  `Phosphorus_Blood` float DEFAULT NULL,
  `UACR` float DEFAULT NULL,
  `UPCR` float DEFAULT NULL,
  `PROT` float DEFAULT NULL,
  `Cystatin_C` float DEFAULT NULL,
  `rash` int(11) NOT NULL DEFAULT '0',
  `Pigmentation` int(11) NOT NULL DEFAULT '0',
  `Itching` int(11) NOT NULL DEFAULT '0',
  `Bleeding_point` int(11) NOT NULL DEFAULT '0',
  `Purple_striae` int(11) NOT NULL DEFAULT '0',
  `Scalp_edema` int(11) NOT NULL DEFAULT '0',
  `Eyelid_edema` int(11) NOT NULL DEFAULT '0',
  `Auricle_uric_acid_nodules` int(11) NOT NULL DEFAULT '0',
  `No_breath_smell` int(11) NOT NULL DEFAULT '0',
  `Sinus_tenderness` int(11) NOT NULL DEFAULT '0',
  `Caries` int(11) NOT NULL DEFAULT '0',
  `Eruptions_and_ulcers_on_the_oral_mucosa` int(11) NOT NULL DEFAULT '0',
  `Enlarged_tonsils` int(11) NOT NULL DEFAULT '0',
  `Distended_jugular_vein` int(11) NOT NULL DEFAULT '0',
  `Vision_loss` int(11) NOT NULL DEFAULT '0',
  `Visual_impairment` int(11) NOT NULL DEFAULT '0',
  `Chronic_itching` int(11) NOT NULL DEFAULT '0',
  `Diplopia` int(11) NOT NULL DEFAULT '0',
  `tinnitus` int(11) NOT NULL DEFAULT '0',
  `Hearing_loss` int(11) NOT NULL DEFAULT '0',
  `pain` int(11) NOT NULL DEFAULT '0',
  `Secretions` int(11) NOT NULL DEFAULT '0',
  `Dizzy` int(11) NOT NULL DEFAULT '0',
  `Bleeding` int(11) NOT NULL DEFAULT '0',
  `snot` int(11) NOT NULL DEFAULT '0',
  `Lumps` int(11) NOT NULL DEFAULT '0',
  `Murmur` int(11) NOT NULL DEFAULT '0',
  `Gallop` int(11) NOT NULL DEFAULT '0',
  `Pericardial_friction` int(11) NOT NULL DEFAULT '0',
  `exam_Difficulty_breathing` int(11) NOT NULL DEFAULT '0',
  `Shortness_of_breath` int(11) NOT NULL DEFAULT '0',
  `cough` int(11) NOT NULL DEFAULT '0',
  `sputum` int(11) NOT NULL DEFAULT '0',
  `Chest_pain` int(11) NOT NULL DEFAULT '0',
  `Sitting_breathing` int(11) NOT NULL DEFAULT '0',
  `Exercise_dyspnea` int(11) NOT NULL DEFAULT '0',
  `Paroxysmal_nocturnal_dyspnea` int(11) NOT NULL DEFAULT '0',
  `Lump` int(11) NOT NULL DEFAULT '0',
  `Lumps_location` varchar(100) DEFAULT NULL,
  `tenderness` int(11) NOT NULL DEFAULT '0',
  `Tenderness_of_costal_ridge_angle` int(11) NOT NULL DEFAULT '0',
  `Econstipation` int(11) NOT NULL DEFAULT '0',
  `Bloating` int(11) NOT NULL DEFAULT '0',
  `diarrhea` int(11) NOT NULL DEFAULT '0',
  `stomachache` int(11) NOT NULL DEFAULT '0',
  `exam_Vomiting` int(11) NOT NULL DEFAULT '0',
  `nausea` int(11) NOT NULL DEFAULT '0',
  `exam_Urgency` int(11) NOT NULL DEFAULT '0',
  `Frequent_urination` int(11) NOT NULL DEFAULT '0',
  `exam_Painful_urination` int(11) NOT NULL DEFAULT '0',
  `exam_hematuria` int(11) NOT NULL DEFAULT '0',
  `Vertigo` int(11) NOT NULL DEFAULT '0',
  `Neuralgia` int(11) NOT NULL DEFAULT '0',
  `Neuralgia_location` varchar(100) DEFAULT NULL,
  `exam_dizziness` int(11) NOT NULL DEFAULT '0',
  `Facial_paralysis` int(11) NOT NULL DEFAULT '0',
  `Speech_disorder` int(11) NOT NULL DEFAULT '0',
  `feeling_abnormal` int(11) NOT NULL DEFAULT '0',
  `Muscle_weakness` int(11) NOT NULL DEFAULT '0',
  `Petechiae` int(11) NOT NULL DEFAULT '0',
  `Bleed` int(11) NOT NULL DEFAULT '0',
  `Joint_pain` int(11) NOT NULL DEFAULT '0',
  `Back_pain` int(11) NOT NULL DEFAULT '0',
  `Hair_loss` int(11) NOT NULL DEFAULT '0',
  `Exam_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `n18_exam`
--

INSERT INTO `n18_exam` (`id`, `m_id`, `Date`, `Hb`, `Platelet`, `WBC`, `Triglyceride`, `TG`, `cholesterol`, `LDL_cholesterol`, `creatinine`, `e_GFR`, `CKD_stages_STAGE`, `Albumin`, `Calcium`, `BUN`, `Uric_acid_Blood`, `AST_GOT`, `ALT_GPT`, `HbA1c`, `glucose_AC`, `Sodium_Blood`, `Potassium`, `Phosphorus_Blood`, `UACR`, `UPCR`, `PROT`, `Cystatin_C`, `rash`, `Pigmentation`, `Itching`, `Bleeding_point`, `Purple_striae`, `Scalp_edema`, `Eyelid_edema`, `Auricle_uric_acid_nodules`, `No_breath_smell`, `Sinus_tenderness`, `Caries`, `Eruptions_and_ulcers_on_the_oral_mucosa`, `Enlarged_tonsils`, `Distended_jugular_vein`, `Vision_loss`, `Visual_impairment`, `Chronic_itching`, `Diplopia`, `tinnitus`, `Hearing_loss`, `pain`, `Secretions`, `Dizzy`, `Bleeding`, `snot`, `Lumps`, `Murmur`, `Gallop`, `Pericardial_friction`, `exam_Difficulty_breathing`, `Shortness_of_breath`, `cough`, `sputum`, `Chest_pain`, `Sitting_breathing`, `Exercise_dyspnea`, `Paroxysmal_nocturnal_dyspnea`, `Lump`, `Lumps_location`, `tenderness`, `Tenderness_of_costal_ridge_angle`, `Econstipation`, `Bloating`, `diarrhea`, `stomachache`, `exam_Vomiting`, `nausea`, `exam_Urgency`, `Frequent_urination`, `exam_Painful_urination`, `exam_hematuria`, `Vertigo`, `Neuralgia`, `Neuralgia_location`, `exam_dizziness`, `Facial_paralysis`, `Speech_disorder`, `feeling_abnormal`, `Muscle_weakness`, `Petechiae`, `Bleed`, `Joint_pain`, `Back_pain`, `Hair_loss`, `Exam_other`) VALUES
(1, 2147483647, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4, 12345, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5, 12340, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(6, 66, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9, 12366, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10, 12366, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(11, 12366, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12, 12366, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(13, 12366, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(14, 12366, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(15, 111111, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(33, 9999, '2020-10-24', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(48, 999666, '2020-10-27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(60, 1111, '2020-10-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(61, 55555, '2020-10-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(62, 5555, '2020-10-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `n18_laboratory`
--

CREATE TABLE `n18_laboratory` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `Fwave` int(11) NOT NULL DEFAULT '0',
  `Ekg` int(11) NOT NULL DEFAULT '0',
  `Eeg` int(11) NOT NULL DEFAULT '0',
  `Tcd` int(11) NOT NULL DEFAULT '0',
  `m_mode` int(11) NOT NULL DEFAULT '0',
  `Cocp` int(11) NOT NULL DEFAULT '0',
  `Caro` int(11) NOT NULL DEFAULT '0',
  `S4` int(11) NOT NULL DEFAULT '0',
  `a23520` int(11) NOT NULL DEFAULT '0',
  `a23504` int(11) NOT NULL DEFAULT '0',
  `a23506` int(11) NOT NULL DEFAULT '0',
  `x_ray_class` varchar(100) DEFAULT NULL,
  `x_ray_way` varchar(100) DEFAULT NULL,
  `x_ray_place` varchar(100) DEFAULT NULL,
  `x_ray_remark` varchar(100) DEFAULT NULL,
  `laboratory_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `n18_laboratory`
--

INSERT INTO `n18_laboratory` (`id`, `m_id`, `Fwave`, `Ekg`, `Eeg`, `Tcd`, `m_mode`, `Cocp`, `Caro`, `S4`, `a23520`, `a23504`, `a23506`, `x_ray_class`, `x_ray_way`, `x_ray_place`, `x_ray_remark`, `laboratory_other`) VALUES
(1, 2147483647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(4, 12345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(5, 12340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(6, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(7, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(9, 12366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(10, 12366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(11, 12366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(12, 12366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(13, 12366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(14, 12366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(15, 111111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(16, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(17, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', ''),
(43, 5555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `n18_past_history`
--

CREATE TABLE `n18_past_history` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `whether_surgery` int(11) NOT NULL DEFAULT '0',
  `surgery` varchar(100) DEFAULT NULL,
  `whether_medical_history` int(11) NOT NULL DEFAULT '0',
  `medical_history` varchar(100) DEFAULT NULL,
  `whether_home_history` int(11) NOT NULL DEFAULT '0',
  `home_history` varchar(100) DEFAULT NULL,
  `whether_allergies` int(11) NOT NULL DEFAULT '0',
  `allergies` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `n18_past_history`
--

INSERT INTO `n18_past_history` (`id`, `m_id`, `whether_surgery`, `surgery`, `whether_medical_history`, `medical_history`, `whether_home_history`, `home_history`, `whether_allergies`, `allergies`) VALUES
(1, 2147483647, 0, '', 0, '', 0, '', 0, ''),
(4, 12345, 0, '', 0, '', 0, '', 0, ''),
(5, 12340, 0, '', 0, '', 0, '', 0, ''),
(6, 66, 0, '', 0, '', 0, '', 0, ''),
(7, 222, 0, '', 0, '', 0, '', 0, ''),
(9, 12366, 0, '', 0, '', 0, '', 0, ''),
(10, 12366, 0, '', 0, '', 0, '', 0, ''),
(11, 12366, 0, '', 0, '', 0, '', 0, ''),
(12, 12366, 0, '', 0, '', 0, '', 0, ''),
(13, 12366, 0, '', 0, '', 0, '', 0, ''),
(14, 12366, 0, '', 0, '', 0, '', 0, ''),
(15, 111111, 0, '', 0, '', 0, '', 0, ''),
(16, 222, 0, '', 0, '', 0, '', 0, ''),
(17, 222, 0, '', 0, '', 0, '', 0, ''),
(20, 0, 0, '', 0, '', 0, '', 0, ''),
(21, 0, 0, '', 0, '', 0, '', 0, ''),
(22, 0, 0, '', 0, '', 0, '', 0, ''),
(23, 0, 0, '', 0, '', 0, '', 0, ''),
(24, 0, 0, '', 0, '', 0, '', 0, ''),
(25, 0, 0, '', 0, '', 0, '', 0, ''),
(26, 0, 0, '', 0, '', 0, '', 0, ''),
(27, 0, 0, '', 0, '', 0, '', 0, ''),
(28, 0, 0, '', 0, '', 0, '', 0, ''),
(29, 0, 0, '', 0, '', 0, '', 0, ''),
(30, 0, 0, '', 0, '', 0, '', 0, ''),
(31, 0, 0, '', 0, '', 0, '', 0, ''),
(32, 0, 0, '', 0, '', 0, '', 0, ''),
(33, 0, 0, '', 0, '', 0, '', 0, ''),
(34, 0, 0, '', 0, '', 0, '', 0, ''),
(35, 0, 0, '', 0, '', 0, '', 0, ''),
(36, 0, 0, '', 0, '', 0, '', 0, ''),
(37, 0, 0, '', 0, '', 0, '', 0, ''),
(38, 0, 0, '', 0, '', 0, '', 0, ''),
(39, 0, 0, '', 0, '', 0, '', 0, ''),
(43, 5555, 0, '', 0, '', 0, '', 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `n18_plan`
--

CREATE TABLE `n18_plan` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `plan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `n18_plan`
--

INSERT INTO `n18_plan` (`id`, `m_id`, `plan`) VALUES
(1, 2147483647, ''),
(4, 12345, ''),
(5, 12340, ''),
(6, 66, ''),
(7, 222, ''),
(9, 12366, ''),
(10, 12366, ''),
(11, 12366, ''),
(12, 12366, ''),
(13, 12366, ''),
(14, 12366, ''),
(15, 111111, ''),
(16, 222, ''),
(17, 222, ''),
(20, 0, ''),
(21, 0, ''),
(22, 0, ''),
(23, 0, ''),
(24, 0, ''),
(25, 0, ''),
(26, 0, ''),
(27, 0, ''),
(28, 0, ''),
(29, 0, ''),
(30, 0, ''),
(31, 0, ''),
(32, 0, ''),
(33, 0, ''),
(34, 0, ''),
(35, 0, ''),
(36, 0, ''),
(37, 0, ''),
(38, 0, ''),
(39, 0, ''),
(43, 5555, '');

-- --------------------------------------------------------

--
-- 資料表結構 `n18_present_illness`
--

CREATE TABLE `n18_present_illness` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `BP_N18` int(11) DEFAULT NULL,
  `HR` int(11) DEFAULT NULL,
  `awareness` int(11) NOT NULL DEFAULT '0',
  `edema` int(11) NOT NULL DEFAULT '0',
  `edema_location` varchar(100) DEFAULT NULL,
  `edema_degree` varchar(100) DEFAULT NULL,
  `back_pain` int(11) NOT NULL DEFAULT '0',
  `back_pain_location` varchar(100) DEFAULT NULL,
  `back_pain_degree` varchar(100) DEFAULT NULL,
  `Urinary_catheter` int(11) NOT NULL DEFAULT '0',
  `Abnormal_urine_color` int(11) NOT NULL DEFAULT '0',
  `urine_color` varchar(100) DEFAULT NULL,
  `Difficulty_urinating` int(11) NOT NULL DEFAULT '0',
  `Burning_sensation` int(11) NOT NULL DEFAULT '0',
  `Urgency` int(11) NOT NULL DEFAULT '0',
  `Painful_urination` int(11) NOT NULL DEFAULT '0',
  `hematuria` int(11) NOT NULL DEFAULT '0',
  `Loss_f_ppetite` int(11) NOT NULL DEFAULT '0',
  `Nauseous` int(11) NOT NULL DEFAULT '0',
  `Vomiting` int(11) NOT NULL DEFAULT '0',
  `dizziness` int(11) NOT NULL DEFAULT '0',
  `Palpitations` int(11) NOT NULL DEFAULT '0',
  `Difficulty_breathing` int(11) NOT NULL DEFAULT '0',
  `Present_Illness_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `n18_present_illness`
--

INSERT INTO `n18_present_illness` (`id`, `m_id`, `height`, `weight`, `BP_N18`, `HR`, `awareness`, `edema`, `edema_location`, `edema_degree`, `back_pain`, `back_pain_location`, `back_pain_degree`, `Urinary_catheter`, `Abnormal_urine_color`, `urine_color`, `Difficulty_urinating`, `Burning_sensation`, `Urgency`, `Painful_urination`, `hematuria`, `Loss_f_ppetite`, `Nauseous`, `Vomiting`, `dizziness`, `Palpitations`, `Difficulty_breathing`, `Present_Illness_other`) VALUES
(1, 2147483647, 12, 12, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4, 12345, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5, 12340, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(6, 66, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7, 222, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9, 12366, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10, 12366, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(11, 12366, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12, 12366, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(13, 12366, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(14, 12366, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(15, 111111, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(16, 222, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(17, 222, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(20, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(21, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(22, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(23, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(24, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(25, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(26, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(27, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(28, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(29, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(30, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(31, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(32, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(33, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(34, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(35, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(36, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(37, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(38, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(39, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(43, 5555, 1, 1, 22, 22, 0, 0, '1', '1', 0, '', '', 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `n18_social_and_job`
--

CREATE TABLE `n18_social_and_job` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `job` varchar(100) DEFAULT NULL,
  `smoke` int(11) NOT NULL DEFAULT '0',
  `alcoholism` int(11) NOT NULL DEFAULT '0',
  `coffe` int(11) NOT NULL DEFAULT '0',
  `Social_and_job_other` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `n18_social_and_job`
--

INSERT INTO `n18_social_and_job` (`id`, `m_id`, `job`, `smoke`, `alcoholism`, `coffe`, `Social_and_job_other`) VALUES
(1, 2147483647, NULL, 0, 0, 0, ''),
(4, 12345, NULL, 0, 0, 0, ''),
(5, 12340, NULL, 0, 0, 0, ''),
(6, 66, NULL, 0, 0, 0, ''),
(7, 222, NULL, 0, 0, 0, ''),
(9, 12366, NULL, 0, 0, 0, ''),
(10, 12366, NULL, 0, 0, 0, ''),
(11, 12366, NULL, 0, 0, 0, ''),
(12, 12366, NULL, 0, 0, 0, ''),
(13, 12366, NULL, 0, 0, 0, ''),
(14, 12366, NULL, 0, 0, 0, ''),
(15, 111111, NULL, 0, 0, 0, ''),
(16, 222, NULL, 0, 0, 0, ''),
(17, 222, NULL, 0, 0, 0, ''),
(20, 0, '', 0, 0, 0, ''),
(21, 0, '', 0, 0, 0, ''),
(22, 0, '', 0, 0, 0, ''),
(23, 0, '', 0, 0, 0, ''),
(24, 0, '', 0, 0, 0, ''),
(25, 0, '', 0, 0, 0, ''),
(26, 0, '', 0, 0, 0, ''),
(27, 0, '', 0, 0, 0, ''),
(28, 0, '', 0, 0, 0, ''),
(29, 0, '', 0, 0, 0, ''),
(30, 0, '', 0, 0, 0, ''),
(31, 0, '', 0, 0, 0, ''),
(32, 0, '', 0, 0, 0, ''),
(33, 0, '', 0, 0, 0, ''),
(34, 0, '', 0, 0, 0, ''),
(35, 0, '', 0, 0, 0, ''),
(36, 0, '', 0, 0, 0, ''),
(37, 0, '', 0, 0, 0, ''),
(38, 0, '', 0, 0, 0, ''),
(39, 0, '', 0, 0, 0, ''),
(43, 5555, '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- 資料表結構 `piechart`
--

CREATE TABLE `piechart` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL,
  `drilldown` varchar(100) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `piechart`
--

INSERT INTO `piechart` (`id`, `name`, `number`, `drilldown`, `year`) VALUES
(1, 'E11', 16, 'E11', 105),
(2, 'N18', 80, 'N18', 105),
(3, 'K21', 4, 'K21', 105),
(4, 'E11', 46, 'E11', 106),
(5, 'N18', 40, 'N18', 106),
(6, 'K21', 14, 'K21', 106),
(7, 'E11', 31, 'E11', 107),
(8, 'N18', 45, 'N18', 107),
(9, 'K21', 24, 'K21', 107),
(10, 'E11', 20, 'E11', 108),
(11, 'N18', 50, 'N18', 108),
(12, 'K21', 30, 'K21', 108);

-- --------------------------------------------------------

--
-- 資料表結構 `subtracted`
--

CREATE TABLE `subtracted` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `disease_group` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `s_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `system_user_page`
--

CREATE TABLE `system_user_page` (
  `s_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `condition` varchar(100) NOT NULL,
  `result` varchar(100) NOT NULL,
  `disease_group` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `system_user_page`
--

INSERT INTO `system_user_page` (`s_id`, `name`, `condition`, `result`, `disease_group`) VALUES
(1, '08011C_E11', 'CBC檢測過於頻繁易被核減\r\n', '可能會被核減 請檢查CBC檢測是否過於頻繁\r\n', 'E11'),
(2, 'AC261051G0_E11', 'Elistin藥品用於糖尿病易被核減\r\n', '可能會被核減 請檢查Elistin(Dihydroergotoxine mesylate)藥品適用性\r\n', 'E11'),
(3, '12015C', 'CRP檢驗用於糖尿病 易被列為非必要之檢查或檢驗 ', '可能會被核減 請檢查CRP檢驗之必要性', 'E11'),
(4, '06012C_E11', 'urine routine為須定期追蹤檢查及治療之病人所需，易被列為非必要之檢查或檢驗 ', '可能會被核減 請檢查病人是否須定期追蹤檢查及治療', 'E11'),
(5, 'AC296301G0_E11', '未寫周邊神經炎故使用methycobal', '可能會被核減 請加入\"周邊神經炎故使用methycobal\"', 'E11'),
(6, 'AC31658100', 'Flunarizine 用於改善其頭暈頭痛 ，未寫dizziness', '可能會被核減 請於病歷附上dizziness或是其他需給予此藥的原因，否則將可能被核減', 'E11'),
(7, '09026C_E11', '未寫病人有脂肪肝情形，故追蹤GPT', '可能會被核減 請加入病人有脂肪肝情形，故追蹤GPT', 'E11'),
(8, '23502C', '如果病歷無糖尿病', '請於病歷附上糖尿病或是其他需進行檢查的原因，否則將可能被核減', 'E11'),
(9, '18001C', '如果病歷無hypertension', '請於病歷附上hypertension或是其他需進行心電圖的原因，否則將可能被核減', 'E11'),
(10, '09013C', '如果病歷無尿酸 or ua or uric acid', '請於病歷附上尿酸or ua或是其他需進行尿酸檢測的症狀，否則將可能被核減', 'E11'),
(11, 'BC17039316', '如果病歷無ulcer', '請於病歷附上ulcer或是其他需給予此藥的原因，否則將可能被核減', 'E11'),
(12, 'BC25350100', '如果病歷無hypertension or 高血脂', '請於病歷附上高血脂或是其他需給予此藥的原因，否則將可能被核減', 'E11'),
(13, 'KC00978206', '未寫 使用胰島素會讓體重上升', '可能會被核減 請加入使用胰島素會讓體重上升', 'E11'),
(14, 'BC23221100', '未寫 Nexium Tab', '可能會被核減 請加入Nexium Tab', 'E11'),
(15, '09022C_E11', '如果病歷無腹瀉', '請於病歷附上腹瀉或是其他需進行鉀檢測的症狀，否則將可能被核減', 'E11'),
(16, 'A023284100_E11', '如果病歷無排便不順 or 消化不良', '請於病歷附上消化不良或是其他需給予此藥的原因，否則將可能被核減', 'E11'),
(17, '23702C', '未寫 糖尿病眼底檢查', '可能會被核減 請加入糖尿病眼底檢查', 'E11'),
(18, '53005C', '未寫 執行雙眼黃色素瘤手術切除', '可能會被核減 請加入執行雙眼黃色素瘤手術切除', 'E11'),
(19, 'AC316761G0', '如果病歷無氣喘', '請於病歷寫上氣喘或是其他須給病人此藥的症狀，否則將可能被核減', 'E11'),
(20, 'A019614329', '如果病歷無Pruritus or 乾燥', '請於病歷寫上Pruritus or乾燥或是其他需給予此藥的症狀，否則將可能被核減', 'E11'),
(21, 'AB45016100_K21', '如果沒有寫 獲得明顯改善、一停藥就復發', '可能會被核減 請加入獲得明顯改善、一停藥就復發', 'K21'),
(22, 'A023284100_K21', '如果沒有寫 消化不良', '可能會被核減 請加入消化不良', 'K21'),
(23, 'AC42272100', '如果沒有寫 懷疑是functional diarrhea、irritable bowel syndrome', '可能會被核減 請加入懷疑是functional diarrhea、irritable bowel syndrome', 'K21'),
(24, '19001C', '如果沒有寫 排除膽道問題、續發性腸胃症狀', '可能會被核減 請加入排除膽道問題、續發性腸胃症狀', 'K21'),
(25, '14051C', '如果沒有寫 hepatitis', '可能會被核減 請加入hepatitis', 'K21'),
(26, 'AC296301G0_K21', '未寫周邊神經炎故使用methycobal', '可能會被核減 請加入周邊神經炎故使用methycobal', 'K21'),
(27, 'AB47656100', '如果沒有寫 GERD、仍感不適', '可能會被核減 請加入GERD、仍感不適', 'K21'),
(28, '33072B', '未加入 尋找可能造成鼠蹊淋巴腫大感染的原因、排除肝脾受損、評估可切除性及惡性程度、腹痛', '可能會被核減 請加入尋找可能造成鼠蹊淋巴腫大感染的原因、排除肝脾受損、評估可切除性及惡性程度、腹痛', 'K21'),
(29, 'A031800100', '未寫病患反覆求診，經H2 blocker + prokinetic 治療仍無效，加上Alginic acid 藻酸類藥物做為食道黏膜覆蓋劑', '可能會被核減 請加入病患反覆求診，經H2 blocker + prokinetic 治療仍無效，加上Alginic acid 藻酸類藥物做為食道黏膜覆蓋劑', 'K21'),
(30, '58029C', '一周洗腎次數>2 且 object中沒有gfr值', '請於病歷附上gfr值或是其他原因，否則將高機率被核減', 'N18'),
(31, '58027C', '一周洗腎次數>2 且 object中沒有gfr值', '請於病歷附上gfr值或是其他原因，否則將高機率被核減', 'N18'),
(32, 'KC00955206', 'Object或exam中未紀錄Hb(Hgb)值', '請於病歷附上HB值，否則將可能被核減', 'N18'),
(33, '11002C', '未在Object或exam中附上當時患者Hb值及輸血原因', '請於病歷附上HB值，否則將可能被核減', 'N18'),
(34, '11004C', '未在Object或exam中附上當時患者Hb值及輸血原因', '請於病歷附上HB值及輸血原因，否則將可能被核減', 'N18'),
(35, 'BC22297212', '未附上病患之換液紀錄', '請於病歷附上換液紀錄，否則將可能被核減', 'N18'),
(36, 'A040833157', 'Order中 開立超過7天', '請於病歷附上此藥開立7天，否則將可能被核減', 'N18'),
(37, '09021C_K21', '如果病歷無腹瀉', '請於病歷附上腹瀉或是其他需進行進行鈉檢測的症狀，否則將可能被核減', 'K21'),
(38, '09022C_K21', '如果病歷無腹瀉', '請於病歷附上腹瀉或是其他需進行鉀檢測的症狀，否則將可能被核減', 'K21'),
(39, '09021C_E11', '如果病歷無腹瀉', '請於病歷附上腹瀉或是其他需進行進行鈉檢測的症狀，否則將可能被核減', 'E11'),
(41, 'BC22890100', '未寫 dyslipidemia', '可能被核減 請加入dyslipidemia', 'N18'),
(42, '09025C', '未寫 underlying disease', '可能被核減 請加入underlying disease', 'N18'),
(43, '06012C_N18', '未寫 underlying disease', '可能被核減 請加入underlying disease', 'N18'),
(44, '08013C', '未寫 underlying disease', '可能被核減 請加入underlying disease', 'N18'),
(45, '09026C_N18', '未寫 underlying disease', '可能被核減 請加入underlying disease', 'N18'),
(46, '08011C_N18', '未寫 underlying disease', '可能被核減 請加入underlying disease', 'N18'),
(47, '09112C', '未寫 水腫、甲狀腺病高危險群、排除甲狀腺低下', '可能被核減 請加入水腫、甲狀腺病高危險群、排除甲狀腺低下', 'N18'),
(48, 'AC449771G0', '未寫 胃潰瘍病史、吃止痛藥也容易胃痛', '可能被核減 請加入胃潰瘍病史、吃止痛藥也容易胃痛', 'N18');

-- --------------------------------------------------------

--
-- 資料表結構 `total_chart`
--

CREATE TABLE `total_chart` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `total_chart`
--

INSERT INTO `total_chart` (`id`, `name`, `number`, `year`) VALUES
(1, 'E11', 16, 105),
(2, 'N18', 80, 105),
(3, 'K21', 4, 105),
(4, 'E11', 46, 106),
(5, 'N18', 40, 106),
(6, 'K21', 14, 106),
(7, 'E11', 31, 107),
(8, 'N18', 45, 107),
(9, 'K21', 24, 107),
(10, 'E11', 20, 108),
(11, 'N18', 50, 108),
(13, 'K21', 30, 108),
(14, 'L03', 1, 105),
(15, 'L03', 4, 106),
(16, 'L03', 1, 107),
(17, 'L03', 1, 108),
(18, 'M48', 2, 105),
(19, 'M48', 3, 106),
(20, 'M48', 1, 107),
(21, 'M48', 4, 108),
(22, 'J45', 2, 105),
(23, 'J45', 4, 106),
(24, 'J45', 1, 107),
(25, 'J45', 5, 108),
(26, 'E53', 6, 105),
(27, 'E53', 1, 106),
(28, 'E53', 3, 107),
(29, 'E53', 1, 108);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`username`, `name`, `password`, `status`) VALUES
('business', '胖胖', '1234567890', 2),
('doctor', '胖子', '1234567890', 1),
('system', '美女', '1234567890', 3),
('topic_puli', 'haha', '1234567890', 3);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `code_name`
--
ALTER TABLE `code_name`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `drilldown`
--
ALTER TABLE `drilldown`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `e11_drug`
--
ALTER TABLE `e11_drug`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `e11_exam`
--
ALTER TABLE `e11_exam`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `e11_laboratory`
--
ALTER TABLE `e11_laboratory`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `e11_past_history`
--
ALTER TABLE `e11_past_history`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `e11_plan`
--
ALTER TABLE `e11_plan`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `e11_present_illness`
--
ALTER TABLE `e11_present_illness`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `e11_social_and_job`
--
ALTER TABLE `e11_social_and_job`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `k21_drug`
--
ALTER TABLE `k21_drug`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `k21_exam`
--
ALTER TABLE `k21_exam`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `k21_laboratory`
--
ALTER TABLE `k21_laboratory`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `k21_past_history`
--
ALTER TABLE `k21_past_history`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `k21_plan`
--
ALTER TABLE `k21_plan`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `k21_present_illness`
--
ALTER TABLE `k21_present_illness`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `k21_social_and_job`
--
ALTER TABLE `k21_social_and_job`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `medical_record`
--
ALTER TABLE `medical_record`
  ADD PRIMARY KEY (`m_id`);

--
-- 資料表索引 `n18_drug`
--
ALTER TABLE `n18_drug`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `n18_exam`
--
ALTER TABLE `n18_exam`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `n18_laboratory`
--
ALTER TABLE `n18_laboratory`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `n18_past_history`
--
ALTER TABLE `n18_past_history`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `n18_plan`
--
ALTER TABLE `n18_plan`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `n18_present_illness`
--
ALTER TABLE `n18_present_illness`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `n18_social_and_job`
--
ALTER TABLE `n18_social_and_job`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `piechart`
--
ALTER TABLE `piechart`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `subtracted`
--
ALTER TABLE `subtracted`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `system_user_page`
--
ALTER TABLE `system_user_page`
  ADD PRIMARY KEY (`s_id`);

--
-- 資料表索引 `total_chart`
--
ALTER TABLE `total_chart`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `code_name`
--
ALTER TABLE `code_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `drilldown`
--
ALTER TABLE `drilldown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `e11_drug`
--
ALTER TABLE `e11_drug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `e11_exam`
--
ALTER TABLE `e11_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `e11_laboratory`
--
ALTER TABLE `e11_laboratory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `e11_past_history`
--
ALTER TABLE `e11_past_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `e11_plan`
--
ALTER TABLE `e11_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `e11_present_illness`
--
ALTER TABLE `e11_present_illness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `e11_social_and_job`
--
ALTER TABLE `e11_social_and_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `k21_drug`
--
ALTER TABLE `k21_drug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `k21_exam`
--
ALTER TABLE `k21_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `k21_laboratory`
--
ALTER TABLE `k21_laboratory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `k21_past_history`
--
ALTER TABLE `k21_past_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `k21_plan`
--
ALTER TABLE `k21_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `k21_present_illness`
--
ALTER TABLE `k21_present_illness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `k21_social_and_job`
--
ALTER TABLE `k21_social_and_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `medical_record`
--
ALTER TABLE `medical_record`
  MODIFY `m_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2222223;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `n18_drug`
--
ALTER TABLE `n18_drug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `n18_exam`
--
ALTER TABLE `n18_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `n18_laboratory`
--
ALTER TABLE `n18_laboratory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `n18_past_history`
--
ALTER TABLE `n18_past_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `n18_plan`
--
ALTER TABLE `n18_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `n18_present_illness`
--
ALTER TABLE `n18_present_illness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `n18_social_and_job`
--
ALTER TABLE `n18_social_and_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `piechart`
--
ALTER TABLE `piechart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `subtracted`
--
ALTER TABLE `subtracted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `system_user_page`
--
ALTER TABLE `system_user_page`
  MODIFY `s_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `total_chart`
--
ALTER TABLE `total_chart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
