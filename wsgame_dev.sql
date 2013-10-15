-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost:3306
-- 生成日期: 2013 年 10 月 15 日 17:52
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_display` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_phone` varchar(20) CHARACTER SET latin1 NOT NULL COMMENT '电话',
  `password` varchar(60) CHARACTER SET latin1 NOT NULL COMMENT '密码',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `create_time` (`update_time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `user_name`, `user_display`, `user_email`, `user_phone`, `password`, `update_time`) VALUES
(1, 'admin', '超级管理员', 'huzhiw@wasu.com.cn', '111222', 'e19d5cd5af0378da05f63f891c7467af', '2013-10-14 06:04:40'),
(2, '501', '边锋', '', '', '50c6bb05efcdc4ed489bfede6a6fee17', '0000-00-00 00:00:00'),
(3, '202', '龙骑士', '', '', 'b22fc83340a75a5fe2b408f96d68fb20', '0000-00-00 00:00:00'),
(4, '203', '广州稀世', '', '', 'cc8d81eade56c836beb059afe7eca493', '0000-00-00 00:00:00'),
(5, '301', '圣剑', '', '', '2b54ee0a278a6d0530f07373b77aeb89', '0000-00-00 00:00:00'),
(6, '302', '动视', '', '', 'bb60d541884e5e481e5d8143a65d935e', '0000-00-00 00:00:00'),
(7, '303', '视趣', '', '', 'a2c3c6717f4e5496d8bd97b74638222d', '0000-00-00 00:00:00'),
(8, '304', '盛大', '', '', '81312b028c085991776b5eda243110dc', '0000-00-00 00:00:00'),
(9, 'huzw', '胡志伟', '', '', '725be7ee764e5e531acc1f26fbecaabe', '0000-00-00 00:00:00'),
(10, 'lijianyuan', '李建元', '', '', '51f35d29d64e411e57b09bd36f0cc42e', '0000-00-00 00:00:00'),
(11, 'wangjh', '王俊骅', '', '', '16368e3de6f71ebe748568546817e840', '0000-00-00 00:00:00'),
(12, 'donglh', '董利华', '', '', 'b6b0d90835a9ebfc1f8e77eeaa121f71', '0000-00-00 00:00:00'),
(13, 'lijk', '李锦康', '', '', '6ba1524c55c92ec9693aa00cee575b84', '0000-00-00 00:00:00');

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

--
-- 转存表中的数据 `user_auth_assignments`
--

INSERT INTO `user_auth_assignments` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('全局业务管理', '1', '', 's:0:"";'),
('全局业务管理', '11', '', 's:0:"";'),
('全局业务管理', '12', '', 's:0:"";'),
('游戏厂商', '1', '', 's:0:"";'),
('游戏厂商', '2', '', 's:0:"";'),
('游戏厂商', '3', '', 's:0:"";'),
('游戏厂商', '4', '', 's:0:"";'),
('游戏厂商', '5', '', 's:0:"";'),
('游戏厂商', '6', '', 's:0:"";'),
('游戏厂商', '7', '', 's:0:"";'),
('游戏厂商', '8', '', 's:0:"";'),
('管理员', '1', '', 's:0:"";'),
('管理员', '9', '', 's:0:"";'),
('运营角色', '1', '', 's:0:"";'),
('运营角色', '10', '', 's:0:"";'),
('运营角色', '13', '', 's:0:"";'),
('验收测试', '1', '', 's:0:"";'),
('验收测试', '10', '', 's:0:"";'),
('验收测试', '11', '', 's:0:"";');

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
('Admin@WsgameCpApplyAdministrating', 'Admin@WsgameCpApplyAdmin'),
('全局业务', 'Admin@WsgameCpApplyAdmin'),
('测试验收内容', 'Admin@WsgameCpApplyAdmin'),
('运营task', 'Admin@WsgameCpApplyAdmin'),
('管理员', 'Admin@WsgameCpApplyAdministrating'),
('Admin@WsgameCpApplyAdministrating', 'Admin@WsgameCpApplyCreate'),
('CP内容', 'Admin@WsgameCpApplyCreate'),
('全局业务', 'Admin@WsgameCpApplyCreate'),
('Admin@WsgameCpApplyAdministrating', 'Admin@WsgameCpApplyDelete'),
('全局业务', 'Admin@WsgameCpApplyDelete'),
('测试验收内容', 'Admin@WsgameCpApplyDelete'),
('Admin@WsgameCpApplyAdministrating', 'Admin@WsgameCpApplyIndex'),
('全局业务', 'Admin@WsgameCpApplyIndex'),
('Admin@WsgameCpApplyAdministrating', 'Admin@WsgameCpApplyShowlist'),
('Admin@WsgameCpApplyViewing', 'Admin@WsgameCpApplyShowlist'),
('CP内容', 'Admin@WsgameCpApplyShowlist'),
('全局业务', 'Admin@WsgameCpApplyShowlist'),
('Admin@WsgameCpApplyAdministrating', 'Admin@WsgameCpApplyTestcheck'),
('全局业务', 'Admin@WsgameCpApplyTestcheck'),
('测试验收内容', 'Admin@WsgameCpApplyTestcheck'),
('Admin@WsgameCpApplyAdministrating', 'Admin@WsgameCpApplyUpdate'),
('CP内容', 'Admin@WsgameCpApplyUpdate'),
('全局业务', 'Admin@WsgameCpApplyUpdate'),
('Admin@WsgameCpApplyAdministrating', 'Admin@WsgameCpApplyView'),
('Admin@WsgameCpApplyViewing', 'Admin@WsgameCpApplyView'),
('全局业务', 'Admin@WsgameCpApplyView'),
('测试验收内容', 'Admin@WsgameCpApplyView'),
('管理员', 'Admin@WsgameCpApplyViewing'),
('AuthUserAdministrating', 'AuthUserAdmin'),
('全局业务', 'AuthUserAdmin'),
('管理员', 'AuthUserAdministrating'),
('AuthUserAdministrating', 'AuthUserCreate'),
('全局业务', 'AuthUserCreate'),
('AuthUserAdministrating', 'AuthUserDelete'),
('全局业务', 'AuthUserDelete'),
('AuthUserAdministrating', 'AuthUserIndex'),
('全局业务', 'AuthUserIndex'),
('AuthUserAdministrating', 'AuthUserUpdate'),
('全局业务', 'AuthUserUpdate'),
('AuthUserAdministrating', 'AuthUserView'),
('AuthUserViewing', 'AuthUserView'),
('全局业务', 'AuthUserView'),
('管理员', 'AuthUserViewing'),
('游戏厂商', 'CP内容'),
('管理员', 'CP内容'),
('管理员', 'srbac@AuthitemAdministrating'),
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
('srbac@AuthitemAdministrating', 'srbac@AuthitemUpdate'),
('管理员', 'srbac@AuthitemViewing'),
('管理员', 'srbac@DefaultAdministrating'),
('管理员', 'srbac@DefaultViewing'),
('管理员', 'srbac@SBaseAdministrating'),
('管理员', 'srbac@SBaseViewing'),
('WsgameCpApplyAdministrating', 'WsgameCpApplyAdmin'),
('全局业务', 'WsgameCpApplyAdmin'),
('管理员', 'WsgameCpApplyAdministrating'),
('WsgameCpApplyAdministrating', 'WsgameCpApplyCreate'),
('全局业务', 'WsgameCpApplyCreate'),
('WsgameCpApplyAdministrating', 'WsgameCpApplyDelete'),
('全局业务', 'WsgameCpApplyDelete'),
('WsgameCpApplyAdministrating', 'WsgameCpApplyIndex'),
('全局业务', 'WsgameCpApplyIndex'),
('WsgameCpApplyAdministrating', 'WsgameCpApplyTestview'),
('WsgameCpApplyViewing', 'WsgameCpApplyTestview'),
('全局业务', 'WsgameCpApplyTestview'),
('WsgameCpApplyAdministrating', 'WsgameCpApplyUpdate'),
('全局业务', 'WsgameCpApplyUpdate'),
('WsgameCpApplyAdministrating', 'WsgameCpApplyView'),
('WsgameCpApplyViewing', 'WsgameCpApplyView'),
('全局业务', 'WsgameCpApplyView'),
('管理员', 'WsgameCpApplyViewing'),
('全局业务管理', '全局业务'),
('管理员', '全局业务'),
('管理员', '测试验收内容'),
('验收测试', '测试验收内容'),
('管理员', '运营task'),
('运营角色', '运营task'),
('验收测试', '运营task');

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
('Admin@WsgameCpApplyAdmin', 0, NULL, NULL, 'N;'),
('Admin@WsgameCpApplyAdministrating', 1, NULL, NULL, 'N;'),
('Admin@WsgameCpApplyCreate', 0, NULL, NULL, 'N;'),
('Admin@WsgameCpApplyDelete', 0, NULL, NULL, 'N;'),
('Admin@WsgameCpApplyIndex', 0, NULL, NULL, 'N;'),
('Admin@WsgameCpApplyShowlist', 0, NULL, NULL, 'N;'),
('Admin@WsgameCpApplyTestcheck', 0, NULL, NULL, 'N;'),
('Admin@WsgameCpApplyUpdate', 0, NULL, NULL, 'N;'),
('Admin@WsgameCpApplyView', 0, NULL, NULL, 'N;'),
('Admin@WsgameCpApplyViewing', 1, NULL, NULL, 'N;'),
('AuthUserAdmin', 0, NULL, NULL, 'N;'),
('AuthUserAdministrating', 1, NULL, NULL, 'N;'),
('AuthUserCreate', 0, NULL, NULL, 'N;'),
('AuthUserDelete', 0, NULL, NULL, 'N;'),
('AuthUserIndex', 0, NULL, NULL, 'N;'),
('AuthUserUpdate', 0, NULL, NULL, 'N;'),
('AuthUserView', 0, NULL, NULL, 'N;'),
('AuthUserViewing', 1, NULL, NULL, 'N;'),
('CP内容', 1, 'CP内容', '', 's:0:"";'),
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
('srbac@AuthitemViewing', 1, NULL, NULL, 'N;'),
('srbac@DefaultAdministrating', 1, NULL, NULL, 'N;'),
('srbac@DefaultViewing', 1, NULL, NULL, 'N;'),
('srbac@SBaseAdministrating', 1, NULL, NULL, 'N;'),
('srbac@SBaseViewing', 1, NULL, NULL, 'N;'),
('WsgameCpApplyAdmin', 0, NULL, NULL, 'N;'),
('WsgameCpApplyAdministrating', 1, NULL, NULL, 'N;'),
('WsgameCpApplyCreate', 0, NULL, NULL, 'N;'),
('WsgameCpApplyDelete', 0, NULL, NULL, 'N;'),
('WsgameCpApplyIndex', 0, NULL, NULL, 'N;'),
('WsgameCpApplyTestview', 0, NULL, NULL, 'N;'),
('WsgameCpApplyUpdate', 0, NULL, NULL, 'N;'),
('WsgameCpApplyView', 0, NULL, NULL, 'N;'),
('WsgameCpApplyViewing', 1, NULL, NULL, 'N;'),
('全局业务', 1, '全局业务', '', 's:0:"";'),
('全局业务管理', 2, '全局业务管理', '', 's:0:"";'),
('技术部门', 2, '技术部门', '', 's:0:"";'),
('测试验收内容', 1, '测试验收', '', 's:0:"";'),
('游戏厂商', 2, 'CP游戏厂商', '', 's:0:"";'),
('管理员', 2, '管理员', '', 's:0:"";'),
('运营task', 1, '', '', 's:0:"";'),
('运营角色', 2, '运营角色', '', 's:0:"";'),
('验收测试', 2, '测试验收', '', 's:0:"";');

-- --------------------------------------------------------

--
-- 表的结构 `wsgame_cp_apply`
--

CREATE TABLE IF NOT EXISTS `wsgame_cp_apply` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `cp_code` varchar(20) NOT NULL COMMENT 'cp编号',
  `game_name` varchar(50) NOT NULL COMMENT '游戏名称',
  `game_id` int(10) NOT NULL COMMENT '游戏编号',
  `URL` varchar(100) NOT NULL COMMENT 'URL',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `check_status` int(1) NOT NULL COMMENT '是否校验',
  `check_result` varchar(255) NOT NULL COMMENT '测试结果',
  `check_oper` varchar(10) NOT NULL COMMENT '测试人员',
  PRIMARY KEY (`id`),
  KEY `cp_code` (`cp_code`,`game_id`,`check_status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CP提交信息表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `wsgame_cp_apply`
--

INSERT INTO `wsgame_cp_apply` (`id`, `cp_code`, `game_name`, `game_id`, `URL`, `update_time`, `check_status`, `check_result`, `check_oper`) VALUES
(1, '501', '超级测试', 888, 'http://www.baidu.com', '2013-10-11 09:15:36', 0, '未测试', '王宝强'),
(2, '330', '大吃大喝', 3213, ' http://www.wasu.com.cn', '2013-10-11 09:15:41', 0, '未测试', ''),
(3, '304', '武侠', 230, 'http://10.48.179.101:8080/gameTest/', '2013-10-11 09:15:57', 1, '不太行，有问题吧', '王宝强'),
(4, '402', '测试的103', 620, 'http://10.48.179.103:8080/gameTest/', '2013-10-11 09:16:13', 1, '好像不行，充值失败', '徐峥'),
(5, 'admin', '神都龙王', 0, 'http://10.48.179.101:8080/gameTest/', '2013-10-12 05:56:51', 0, '', ''),
(6, 'admin', '测试游戏2', 0, 'http://google.com', '2013-10-12 06:30:31', 0, '', ''),
(7, '301', '圣剑辉耀', 0, 'http://dota2.178.com', '2013-10-14 07:41:40', 0, '', ''),
(8, '301', '猪猪侠-云币', 0, 'http://10.48.179.115:8073/Hall_yunbi/EnterGame/F16_YunBi.aspx', '2013-10-15 01:07:54', 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `wsgame_test_links`
--

CREATE TABLE IF NOT EXISTS `wsgame_test_links` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `link_name` varchar(50) NOT NULL COMMENT '链接名',
  `link_url` varchar(255) NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `author` varchar(50) NOT NULL,
  `status` int(1) NOT NULL COMMENT '状态0失效，1正常',
  PRIMARY KEY (`id`),
  KEY `link_name` (`link_name`,`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试页面链接管理' AUTO_INCREMENT=1 ;

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
