/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : lingweiwang

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-01-26 10:49:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for adminitrator_table
-- ----------------------------
DROP TABLE IF EXISTS `adminitrator`;
CREATE TABLE `adminitrator` (
  `ID` int(5) NOT NULL,
  `ACOUNT_NAME` varchar(50) NOT NULL,
  `QQ` varchar(15) DEFAULT NULL,
  `REAL_NAME` varchar(50) NOT NULL,
  `TELEPHONE` varchar(15) DEFAULT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of adminitrator_table
-- ----------------------------

-- ----------------------------
-- Table structure for ad_info_table
-- ----------------------------
DROP TABLE IF EXISTS `advertise`;
CREATE TABLE `advertise` (
  `ID` int(11) NOT NULL,
  `PUBLISH_TIME` datetime NOT NULL,
  `IMAGE_URL` varchar(255) NOT NULL,
  `STATE` int(1) NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ad_info_table
-- ----------------------------

-- ----------------------------
-- Table structure for buyer
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `BUYER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `ZHIFUBAO_ACCOUNT` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `QQ_ACCOUNT` varchar(15) DEFAULT NULL,
  `REAL_NAME` varchar(255) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(15) DEFAULT NULL,
  `STATE` int(1) unsigned zerofill NOT NULL,
  PRIMARY KEY (`BUYER_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of buyer
-- ----------------------------
INSERT INTO `buyer` VALUES (1, 'lisi', 'lisi', '123@qq.com', '123@qq.com','3421331' , 'zhangsan', 'hubeiwuhan', '18877779999', 1);

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `ID` int(11) NOT NULL,
  `BUYER_ID` int(11) NOT NULL,
  `GOODS_ID` int(11) NOT NULL,
  `CREATETIME` datetime NOT NULL,
  PRIMARY KEY (`BUYER_ID`,`GOODS_ID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of collection
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `GOODS_ID` int(11) NOT NULL,
  `DETAIL` varchar(255) NOT NULL,
  `IMAGE_URL` varchar(255) NOT NULL,
  `CATEGORY` varchar(50) NOT NULL,
  `STORE` int(8) NOT NULL,
  `UNIT_PRICE` int(10) NOT NULL,
  `GOODS_NAME` varchar(255) NOT NULL,
  `DISCOUNT` int(15) DEFAULT NULL,
  `PURCHASE_QUANTITY` int(5) NOT NULL,
  `SELLER_ID` int(15) NOT NULL,
  PRIMARY KEY (`GOODS_ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for order_goods_table
-- ----------------------------
DROP TABLE IF EXISTS `ordergoods`;
CREATE TABLE `ordergoods` (
  `ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `GOODS_ID` int(11) NOT NULL,
  `NUM` int(11) NOT NULL,
  `GRADE` float(255,0) DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`ID`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order_goods_table
-- ----------------------------

-- ----------------------------
-- Table structure for order_table
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ORDER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `STATE` int(1) NOT NULL COMMENT '订单状态',
  `LOGISTIC_CODE` varchar(11) DEFAULT NULL COMMENT '物流单号',
  `BUYERS_ID` int(11) NOT NULL COMMENT '买家ID',
  `SELLERS_ID` int(11) NOT NULL COMMENT '卖家ID',
  `ORDER_TIME` datetime NOT NULL COMMENT '下单时间',
  `PAY_TIME` datetime DEFAULT NULL COMMENT '付款时间',
  `DELIVER_TIME` datetime DEFAULT NULL COMMENT '发货时间',
  PRIMARY KEY (`ORDER_ID`)
   ) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order_table
-- ----------------------------
INSERT INTO `orders` VALUES (1,1, '10001', '1','1', '2018-01-24 16:11:39', '2018-01-24 16:11:41', '2018-01-24 16:11:43');

-- ----------------------------
-- Table structure for seller
-- ----------------------------
DROP TABLE IF EXISTS `seller`;
CREATE TABLE `seller` (
  `SELLER_ID` int(15) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `ZHIFUBAO_ACCOUNT` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `QQ_ACCOUNT` varchar(15) DEFAULT NULL,
  `DISTRICT` varchar(255) DEFAULT NULL,
  `REAL_NAME` varchar(255) NOT NULL,
  `ADDRESS` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(20) DEFAULT NULL,
  `STATE` int(1) unsigned zerofill NOT NULL,
  PRIMARY KEY (`SELLER_ID`)
  ) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of seller
-- ----------------------------
INSERT INTO `seller` VALUES ('1', 'zhangsan', 'zhangsan', '123@qq.com', '123@qq.com', '123', 'hubei', 'zhangsan', 'hubei', '18888888888', '1');
INSERT INTO `seller` VALUES ('2', 'hel', '1', null, null, null, null, '1', null, null, '01');
INSERT INTO `seller` VALUES ('3', '2', 'c4ca4238a0b923820dcc509a6f75849b', null, null, null, null, 'hello', null, null, '01');
INSERT INTO `seller` VALUES ('4', '45', 'c4ca4238a0b923820dcc509a6f75849b', null, null, null, null, 'hello', null, null, '01');
INSERT INTO `seller` VALUES ('5', '小明', '35f4a8d465e6e1edc05f3d8ab658c551', null, null, null, null, 'hello', null, null, '01');
INSERT INTO `seller` VALUES ('6', '小郝', '35f4a8d465e6e1edc05f3d8ab658c551', null, null, null, null, 'hello', null, null, '01');
