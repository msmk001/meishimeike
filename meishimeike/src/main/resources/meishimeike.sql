/*
Navicat MySQL Data Transfer

Source Server         : com
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : meishimeike

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-12-08 12:17:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for classifylist
-- ----------------------------
DROP TABLE IF EXISTS `classifylist`;
CREATE TABLE `classifylist` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL,
  `c_name` varchar(40) DEFAULT NULL,
  `c_createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `cy_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `cy_name` varchar(40) NOT NULL,
  `cy_price` double(7,2) NOT NULL,
  `cy_img` varchar(70) NOT NULL,
  `cy_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(30) DEFAULT NULL,
  `m_phone` varchar(11) DEFAULT NULL,
  `m_pass` varchar(25) DEFAULT NULL,
  `m_code` int(11) NOT NULL DEFAULT '0',
  `m_createtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for merchant_info
-- ----------------------------
DROP TABLE IF EXISTS `merchant_info`;
CREATE TABLE `merchant_info` (
  `i_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) DEFAULT NULL,
  `m_phone` varchar(12) DEFAULT NULL,
  `m_info_name` varchar(30) DEFAULT NULL,
  `m_mType` varchar(10) DEFAULT NULL,
  `m_imgIdCar` varchar(70) DEFAULT NULL,
  `m_imgIndoor` varchar(70) DEFAULT NULL,
  `m_logo` varchar(70) DEFAULT NULL,
  `m_appearance` varchar(70) DEFAULT NULL,
  `m_permission` varchar(70) DEFAULT NULL,
  `m_imgLicense` varchar(70) DEFAULT NULL,
  `m_lng` decimal(15,12) DEFAULT NULL,
  `m_lat` decimal(15,12) DEFAULT NULL,
  `m_mname` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for order_form
-- ----------------------------
DROP TABLE IF EXISTS `order_form`;
CREATE TABLE `order_form` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `o_trade_no` varchar(50) DEFAULT NULL,
  `o_price` double(7,2) DEFAULT NULL,
  `o_code` int(11) DEFAULT '1',
  `o_info` json DEFAULT NULL,
  `o_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `uf_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin` (
  `name` char(20) NOT NULL,
  `pass` char(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(30) DEFAULT NULL,
  `u_pass` varchar(30) DEFAULT NULL,
  `u_email` varchar(40) DEFAULT NULL,
  `u_phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `uf_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `uf_name` varchar(25) DEFAULT NULL,
  `uf_site` varchar(40) DEFAULT NULL,
  `uf_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
