/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : users

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2017-11-19 14:01:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` int(32) NOT NULL,
  `ip` varchar(255) NOT NULL DEFAULT '192.168.0.1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '风水的说法', '34353454', '192.168.0.1');
INSERT INTO `user` VALUES ('2', '分手的风格沙发上', '123', '192.168.0.1');
INSERT INTO `user` VALUES ('11', '(⊙o⊙)…呃5', '123123', '192.168.0.1');
INSERT INTO `user` VALUES ('13', '高大上', '11', '192.168.0.1');
INSERT INTO `user` VALUES ('14', '供货商', '123131', '192.168.0.1');
INSERT INTO `user` VALUES ('19', '金坷垃将', '24332131', '192.168.0.1');
INSERT INTO `user` VALUES ('20', '赛达大道', '42432421', '192.168.0.1');
INSERT INTO `user` VALUES ('21', '额委屈啊', '231321435', '192.168.0.1');
INSERT INTO `user` VALUES ('22', '灰色的果实', '4534232', '192.168.0.1');
INSERT INTO `user` VALUES ('23', '海东工商所', '35698984', '192.168.0.1');
