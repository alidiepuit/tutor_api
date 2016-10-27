/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50628
 Source Host           : localhost
 Source Database       : tutor

 Target Server Type    : MySQL
 Target Server Version : 50628
 File Encoding         : utf-8

 Date: 10/27/2016 14:05:52 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `bid_class`
-- ----------------------------
DROP TABLE IF EXISTS `bid_class`;
CREATE TABLE `bid_class` (
  `bidId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`bidId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `certificate`
-- ----------------------------
DROP TABLE IF EXISTS `certificate`;
CREATE TABLE `certificate` (
  `cerId` int(11) NOT NULL AUTO_INCREMENT,
  `cerName` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `cerStatus` tinyint(4) NOT NULL,
  PRIMARY KEY (`cerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `class`
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `classId` int(11) NOT NULL AUTO_INCREMENT,
  `classSubId` int(11) NOT NULL,
  `classDateBegin` int(11) NOT NULL,
  `classDateEnd` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `degree`
-- ----------------------------
DROP TABLE IF EXISTS `degree`;
CREATE TABLE `degree` (
  `degId` int(11) NOT NULL AUTO_INCREMENT,
  `degName` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`degId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `education_photos`
-- ----------------------------
DROP TABLE IF EXISTS `education_photos`;
CREATE TABLE `education_photos` (
  `edu_photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `eduId` int(11) NOT NULL,
  `photoId` int(11) NOT NULL,
  PRIMARY KEY (`edu_photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `photos`
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `photoId` int(11) NOT NULL AUTO_INCREMENT,
  `photoPath` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`photoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `school`
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `schId` int(11) NOT NULL AUTO_INCREMENT,
  `schName` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`schId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `study`
-- ----------------------------
DROP TABLE IF EXISTS `study`;
CREATE TABLE `study` (
  `stuId` int(11) NOT NULL AUTO_INCREMENT,
  `stuName` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`stuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subId` int(11) NOT NULL AUTO_INCREMENT,
  `subName` varchar(32) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`subId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `verify` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `displayName` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `age` tinyint(11) NOT NULL,
  `isTutor` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `user_certificate`
-- ----------------------------
DROP TABLE IF EXISTS `user_certificate`;
CREATE TABLE `user_certificate` (
  `user_cer_id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `cerId` int(11) NOT NULL,
  PRIMARY KEY (`user_cer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `user_education`
-- ----------------------------
DROP TABLE IF EXISTS `user_education`;
CREATE TABLE `user_education` (
  `eduId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `schoolId` int(11) NOT NULL,
  `degreeId` int(11) NOT NULL,
  `studyId` int(11) NOT NULL,
  `dateBegin` int(11) NOT NULL,
  `dateEnd` int(11) NOT NULL,
  PRIMARY KEY (`eduId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `user_job`
-- ----------------------------
DROP TABLE IF EXISTS `user_job`;
CREATE TABLE `user_job` (
  `jobId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `jobPosition` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `jobNameCompany` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `jobDateBegin` int(11) NOT NULL,
  `jobDateEnd` int(11) NOT NULL,
  PRIMARY KEY (`jobId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- ----------------------------
--  Table structure for `user_subject`
-- ----------------------------
DROP TABLE IF EXISTS `user_subject`;
CREATE TABLE `user_subject` (
  `user_sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `subId` int(11) NOT NULL,
  PRIMARY KEY (`user_sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

SET FOREIGN_KEY_CHECKS = 1;
