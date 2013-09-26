-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost:3306
-- 生成日期: 2013 年 09 月 26 日 16:58
-- 服务器版本: 5.5.27-log
-- PHP 版本: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `wsgame_dev`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `user_display` varchar(50) CHARACTER SET utf8 NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `user_phone` varchar(20) NOT NULL COMMENT '电话',
  `password` varchar(60) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='用户表';

-- --------------------------------------------------------

--
-- 表的结构 `user_auth_assignments`
--

CREATE TABLE IF NOT EXISTS `user_auth_assignments` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_auth_itemchildren`
--

CREATE TABLE IF NOT EXISTS `user_auth_itemchildren` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_auth_itemchildren`
--

INSERT INTO `user_auth_itemchildren` (`parent`, `child`) VALUES
('srbac@AuthitemAdministrating', 'srbac@AuthitemAssign'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemAssignments'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemAuto'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemAutocomplete'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemAutoCreateItems'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemAutoDeleteItems'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemClearObsolete'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemConfirm'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemCreate'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemDelete'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemDeleteObsolete'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemEditAllowed'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemFrontPage'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemGetCleverOpers'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemGetOpers'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemGetRoles'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemGetTasks'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemGetUsers'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemInstall'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemList'),
('srbac@AuthitemViewing', 'srbac@AuthitemList'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemManage'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemSaveAllowed'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemScan'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemShow'),
('srbac@AuthitemViewing', 'srbac@AuthitemShow'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemShowAssignments'),
('srbac@AuthitemViewing', 'srbac@AuthitemShowAssignments'),
('srbac@AuthitemAdministrating', 'srbac@AuthitemUpdate');

-- --------------------------------------------------------

--
-- 表的结构 `user_auth_items`
--

CREATE TABLE IF NOT EXISTS `user_auth_items` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user_auth_items`
--

INSERT INTO `user_auth_items` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('srbac@AuthitemAdministrating', 1, NULL, NULL, 'N;'),
('srbac@AuthitemAssign', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAssignments', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAuto', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAutocomplete', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAutoCreateItems', 0, NULL, NULL, 'N;'),
('srbac@AuthitemAutoDeleteItems', 0, NULL, NULL, 'N;'),
('srbac@AuthitemClearObsolete', 0, NULL, NULL, 'N;'),
('srbac@AuthitemConfirm', 0, NULL, NULL, 'N;'),
('srbac@AuthitemCreate', 0, NULL, NULL, 'N;'),
('srbac@AuthitemDelete', 0, NULL, NULL, 'N;'),
('srbac@AuthitemDeleteObsolete', 0, NULL, NULL, 'N;'),
('srbac@AuthitemEditAllowed', 0, NULL, NULL, 'N;'),
('srbac@AuthitemFrontPage', 0, NULL, NULL, 'N;'),
('srbac@AuthitemGetCleverOpers', 0, NULL, NULL, 'N;'),
('srbac@AuthitemGetOpers', 0, NULL, NULL, 'N;'),
('srbac@AuthitemGetRoles', 0, NULL, NULL, 'N;'),
('srbac@AuthitemGetTasks', 0, NULL, NULL, 'N;'),
('srbac@AuthitemGetUsers', 0, NULL, NULL, 'N;'),
('srbac@AuthitemInstall', 0, NULL, NULL, 'N;'),
('srbac@AuthitemList', 0, NULL, NULL, 'N;'),
('srbac@AuthitemManage', 0, NULL, NULL, 'N;'),
('srbac@AuthitemSaveAllowed', 0, NULL, NULL, 'N;'),
('srbac@AuthitemScan', 0, NULL, NULL, 'N;'),
('srbac@AuthitemShow', 0, NULL, NULL, 'N;'),
('srbac@AuthitemShowAssignments', 0, NULL, NULL, 'N;'),
('srbac@AuthitemUpdate', 0, NULL, NULL, 'N;'),
('srbac@AuthitemViewing', 1, NULL, NULL, 'N;');

--
-- 限制导出的表
--

--
-- 限制表 `user_auth_assignments`
--
ALTER TABLE `user_auth_assignments`
  ADD CONSTRAINT `user_auth_assignments_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `user_auth_items` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `user_auth_itemchildren`
--
ALTER TABLE `user_auth_itemchildren`
  ADD CONSTRAINT `user_auth_itemchildren_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `user_auth_items` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_auth_itemchildren_ibfk_2` FOREIGN KEY (`child`) REFERENCES `user_auth_items` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
