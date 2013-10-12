-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost:3306
-- 生成日期: 2013 年 10 月 12 日 18:25
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CP提交信息表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `wsgame_cp_apply`
--

INSERT INTO `wsgame_cp_apply` (`id`, `cp_code`, `game_name`, `game_id`, `URL`, `update_time`, `check_status`, `check_result`, `check_oper`) VALUES
(1, '501', '超级测试', 888, 'http://www.baidu.com', '2013-10-11 09:15:36', 0, '未测试', '王宝强'),
(2, '330', '大吃大喝', 3213, ' http://www.wasu.com.cn', '2013-10-11 09:15:41', 0, '未测试', ''),
(3, '304', '武侠', 230, 'http://10.48.179.101:8080/gameTest/', '2013-10-11 09:15:57', 1, '不太行，有问题吧', '王宝强'),
(4, '402', '测试的103', 620, 'http://10.48.179.103:8080/gameTest/', '2013-10-11 09:16:13', 1, '好像不行，充值失败', '徐峥'),
(5, 'admin', '神都龙王', 0, 'http://10.48.179.101:8080/gameTest/', '2013-10-12 05:56:51', 0, '', ''),
(6, 'admin', '测试游戏2', 0, 'http://google.com', '2013-10-12 06:30:31', 0, '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
