/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50718
Source Host           : 47.100.93.218:3306
Source Database       : login

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-09-08 10:41:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `user_id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `record_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1', '1', '2019-09-03 20:09:48');
INSERT INTO `record` VALUES ('1', '2', '2019-09-03 22:18:49');
INSERT INTO `record` VALUES ('1', '3', '2019-09-04 08:13:32');
INSERT INTO `record` VALUES ('2', '4', '2019-09-04 08:41:21');
INSERT INTO `record` VALUES ('1', '5', '2019-09-04 09:04:58');
INSERT INTO `record` VALUES ('1', '6', '2019-09-04 09:23:40');
INSERT INTO `record` VALUES ('1', '7', '2019-09-04 09:23:53');
INSERT INTO `record` VALUES ('1', '8', '2019-09-04 09:33:58');
INSERT INTO `record` VALUES ('1', '9', '2019-09-05 13:02:56');
INSERT INTO `record` VALUES ('1', '10', '2019-09-05 13:06:58');
INSERT INTO `record` VALUES ('1', '11', '2019-09-05 13:07:43');
INSERT INTO `record` VALUES ('1', '12', '2019-09-05 13:12:21');
INSERT INTO `record` VALUES ('1', '13', '2019-09-05 13:20:39');
INSERT INTO `record` VALUES ('1', '14', '2019-09-05 13:22:53');
INSERT INTO `record` VALUES ('1', '15', '2019-09-05 13:31:58');
INSERT INTO `record` VALUES ('1', '16', '2019-09-05 13:35:08');
INSERT INTO `record` VALUES ('1', '17', '2019-09-05 13:36:46');
INSERT INTO `record` VALUES ('1', '18', '2019-09-05 13:59:18');
INSERT INTO `record` VALUES ('1', '19', '2019-09-05 14:00:10');
INSERT INTO `record` VALUES ('1', '20', '2019-09-05 14:01:37');
INSERT INTO `record` VALUES ('1', '21', '2019-09-05 14:01:47');
INSERT INTO `record` VALUES ('1', '22', '2019-09-05 14:02:29');
INSERT INTO `record` VALUES ('1', '23', '2019-09-05 14:13:01');
INSERT INTO `record` VALUES ('1', '24', '2019-09-05 14:14:20');
INSERT INTO `record` VALUES ('1', '25', '2019-09-05 22:25:31');
INSERT INTO `record` VALUES ('1', '26', '2019-09-05 22:33:04');
INSERT INTO `record` VALUES ('1', '27', '2019-09-05 22:39:54');
INSERT INTO `record` VALUES ('1', '28', '2019-09-05 22:47:15');
INSERT INTO `record` VALUES ('1', '29', '2019-09-05 22:48:24');
INSERT INTO `record` VALUES ('1', '30', '2019-09-05 22:49:10');
INSERT INTO `record` VALUES ('2', '31', '2019-09-07 17:40:42');
INSERT INTO `record` VALUES ('2', '32', '2019-09-07 17:42:10');
INSERT INTO `record` VALUES ('2', '33', '2019-09-07 17:42:51');
INSERT INTO `record` VALUES ('1', '34', '2019-09-07 18:23:05');
INSERT INTO `record` VALUES ('1', '35', '2019-09-07 18:23:31');
INSERT INTO `record` VALUES ('1', '36', '2019-09-07 18:24:06');
INSERT INTO `record` VALUES ('1', '37', '2019-09-07 18:24:34');
INSERT INTO `record` VALUES ('1', '38', '2019-09-07 20:47:01');
INSERT INTO `record` VALUES ('1', '39', '2019-09-07 21:12:09');
INSERT INTO `record` VALUES ('1', '40', '2019-09-08 09:42:48');
INSERT INTO `record` VALUES ('1', '41', '2019-09-08 09:47:13');
INSERT INTO `record` VALUES ('1', '42', '2019-09-08 09:47:23');
INSERT INTO `record` VALUES ('1', '43', '2019-09-08 09:51:23');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `idcard` varchar(255) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '学生甲', '7961d23a73e658d51536cb275458e2e7281fb0d4', '123456');
