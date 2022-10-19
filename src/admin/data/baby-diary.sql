/*
 Navicat Premium Data Transfer

 Source Server         : 13306
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:13306
 Source Schema         : baby-diary

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 05/10/2022 21:06:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule` (
  `ptype` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v0` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v1` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v2` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v3` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v4` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `v5` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
BEGIN;
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '1', '1', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '1', '3', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '22', '2', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '22', '1', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '15', '2', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '8', '78', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '8', '83', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '8', '84', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '8', '89', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '8', '103', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '8', '104', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '8', '106', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '8', '90', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '8', '112', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '8', '117', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '1', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '5', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '19', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '20', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '21', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '22', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '23', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '24', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '25', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '6', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '41', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '42', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '43', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '86', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '2', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '8', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '16', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '17', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '18', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '26', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '27', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '29', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '30', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '31', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '28', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '44', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '45', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '46', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '33', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '47', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '48', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '49', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '40', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '50', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '51', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '52', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '53', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '54', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '3', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '34', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '55', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '36', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '56', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '57', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '58', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '59', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '60', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '37', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '38', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '61', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '62', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '39', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '63', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '64', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '4', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '32', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '65', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '66', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '67', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '68', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '35', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '69', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '70', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '71', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '89', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '103', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '119', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '104', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '106', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '90', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '112', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '115', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '116', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '117', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '93', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '113', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '118', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '114', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '107', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '108', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '109', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '110', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '1', '111', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '2', '2', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '3', '2', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '34', '1', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '35', '3', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '35', '2', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '5', '2', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '14', '3', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '36', '2', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '37', '2', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '1', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '5', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '19', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '20', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '21', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '22', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '23', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '24', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '25', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '6', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '41', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '42', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '43', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '2', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '8', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '16', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '17', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '18', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '26', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '27', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '29', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '30', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '31', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '28', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '33', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '40', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '50', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '52', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '53', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '3', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '34', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '36', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '37', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '38', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '39', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '4', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '32', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '35', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '96', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '97', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '98', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '124', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', '2', '126', 'All', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '38', '5', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '38', '8', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'alice', 'data1', 'read', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'bob', 'data2', 'write', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'data2_admin', 'data2', 'read', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('p', 'data2_admin', 'data2', 'write', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', 'alice', 'data2_admin', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '31', '1', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '31', '2', '', '', '', '');
INSERT INTO `casbin_rule` (`ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES ('g', '16', '3', '', '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for demo_data_auth
-- ----------------------------
DROP TABLE IF EXISTS `demo_data_auth`;
CREATE TABLE `demo_data_auth` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '标题',
  `created_by` int unsigned DEFAULT '0' COMMENT '创建人',
  `updated_by` int unsigned DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of demo_data_auth
-- ----------------------------
BEGIN;
INSERT INTO `demo_data_auth` (`id`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '测试01', 31, 31, '2022-03-03 10:15:11', '2022-03-03 10:36:34', NULL);
INSERT INTO `demo_data_auth` (`id`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, '测试02', 16, 0, '2022-03-03 10:36:52', '2022-03-03 10:36:52', NULL);
INSERT INTO `demo_data_auth` (`id`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, '测试03', 22, 0, '2022-03-03 10:37:47', '2022-03-03 10:37:47', NULL);
INSERT INTO `demo_data_auth` (`id`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, '测试04', 28, 0, '2022-03-03 10:37:53', '2022-03-03 10:37:53', NULL);
INSERT INTO `demo_data_auth` (`id`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, '测试05', 20, 0, '2022-03-03 10:37:58', '2022-03-03 10:37:58', NULL);
INSERT INTO `demo_data_auth` (`id`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, '测试06', 32, 0, '2022-03-03 10:38:05', '2022-03-03 10:38:05', NULL);
INSERT INTO `demo_data_auth` (`id`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, '测试07', 32, 0, '2022-03-03 10:38:12', '2022-03-03 10:38:12', NULL);
INSERT INTO `demo_data_auth` (`id`, `title`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, '测试08', 31, 0, '2022-03-03 10:38:18', '2022-03-03 10:38:18', NULL);
COMMIT;

-- ----------------------------
-- Table structure for demo_gen
-- ----------------------------
DROP TABLE IF EXISTS `demo_gen`;
CREATE TABLE `demo_gen` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `demo_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `demo_age` int unsigned NOT NULL DEFAULT '0' COMMENT '年龄',
  `classes` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '班级',
  `demo_born` datetime DEFAULT NULL COMMENT '出生年月',
  `demo_gender` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `created_at` datetime DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime DEFAULT NULL COMMENT '修改日期',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除日期',
  `created_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `demo_status` tinyint NOT NULL DEFAULT '0' COMMENT '状态',
  `demo_cate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='代码生成测试表';

-- ----------------------------
-- Records of demo_gen
-- ----------------------------
BEGIN;
INSERT INTO `demo_gen` (`id`, `demo_name`, `demo_age`, `classes`, `demo_born`, `demo_gender`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `demo_status`, `demo_cate`) VALUES (1, '张三', 54, '2', '2021-08-03 00:00:00', 1, '2021-08-03 18:03:00', '2021-08-03 18:03:37', NULL, 31, 31, 1, '0,1');
INSERT INTO `demo_gen` (`id`, `demo_name`, `demo_age`, `classes`, `demo_born`, `demo_gender`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `demo_status`, `demo_cate`) VALUES (2, '李四', 56, '2', '2021-08-03 00:00:00', 1, '2021-08-03 18:23:01', '2021-08-16 15:45:30', NULL, 31, 31, 1, '1,0');
INSERT INTO `demo_gen` (`id`, `demo_name`, `demo_age`, `classes`, `demo_born`, `demo_gender`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `demo_status`, `demo_cate`) VALUES (3, 'sssss', 0, '2', NULL, 1, '2021-08-03 18:23:25', '2021-08-03 18:23:25', '2021-08-03 18:23:28', 31, 0, 0, '1');
COMMIT;

-- ----------------------------
-- Table structure for demo_gen_class
-- ----------------------------
DROP TABLE IF EXISTS `demo_gen_class`;
CREATE TABLE `demo_gen_class` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `class_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='代码生成关联测试表';

-- ----------------------------
-- Records of demo_gen_class
-- ----------------------------
BEGIN;
INSERT INTO `demo_gen_class` (`id`, `class_name`) VALUES (1, '一班');
INSERT INTO `demo_gen_class` (`id`, `class_name`) VALUES (2, '二班');
INSERT INTO `demo_gen_class` (`id`, `class_name`) VALUES (3, '三班');
INSERT INTO `demo_gen_class` (`id`, `class_name`) VALUES (4, '1111111');
INSERT INTO `demo_gen_class` (`id`, `class_name`) VALUES (5, '22222');
COMMIT;

-- ----------------------------
-- Table structure for demo_gen_tree
-- ----------------------------
DROP TABLE IF EXISTS `demo_gen_tree`;
CREATE TABLE `demo_gen_tree` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `demo_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `demo_age` int unsigned NOT NULL DEFAULT '0' COMMENT '年龄',
  `classes` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '班级',
  `demo_born` datetime DEFAULT NULL COMMENT '出生年月',
  `demo_gender` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '性别',
  `created_at` datetime DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime DEFAULT NULL COMMENT '修改日期',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除日期',
  `created_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `demo_status` tinyint NOT NULL DEFAULT '0' COMMENT '状态',
  `demo_cate` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='代码生成树形结构测试表';

-- ----------------------------
-- Records of demo_gen_tree
-- ----------------------------
BEGIN;
INSERT INTO `demo_gen_tree` (`id`, `parent_id`, `demo_name`, `demo_age`, `classes`, `demo_born`, `demo_gender`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `demo_status`, `demo_cate`) VALUES (1, 0, '张三', 20, '1', '2021-08-23 00:00:00', 1, '2021-08-04 11:54:21', '2021-08-04 11:54:21', NULL, 31, 0, 1, '0');
INSERT INTO `demo_gen_tree` (`id`, `parent_id`, `demo_name`, `demo_age`, `classes`, `demo_born`, `demo_gender`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `demo_status`, `demo_cate`) VALUES (2, 1, '李四', 28, '2', '2021-08-24 00:00:00', 1, '2021-08-04 11:54:38', '2021-08-04 14:33:57', NULL, 31, 0, 0, '0');
INSERT INTO `demo_gen_tree` (`id`, `parent_id`, `demo_name`, `demo_age`, `classes`, `demo_born`, `demo_gender`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `demo_status`, `demo_cate`) VALUES (3, 0, '王五', 63, '1', '2021-08-17 00:00:00', 1, '2021-08-04 11:54:56', '2021-08-04 11:54:56', NULL, 31, 0, 1, '0');
INSERT INTO `demo_gen_tree` (`id`, `parent_id`, `demo_name`, `demo_age`, `classes`, `demo_born`, `demo_gender`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `demo_status`, `demo_cate`) VALUES (4, 3, '小小', 65, '1', '2021-08-24 00:00:00', 1, '2021-08-04 15:51:55', '2021-08-04 15:51:55', NULL, 31, 0, 0, '0');
INSERT INTO `demo_gen_tree` (`id`, `parent_id`, `demo_name`, `demo_age`, `classes`, `demo_born`, `demo_gender`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `demo_status`, `demo_cate`) VALUES (5, 3, '麻花', 23, '1', NULL, 2, '2021-08-04 15:52:13', '2021-08-04 15:52:13', NULL, 31, 0, 1, '0');
INSERT INTO `demo_gen_tree` (`id`, `parent_id`, `demo_name`, `demo_age`, `classes`, `demo_born`, `demo_gender`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `demo_status`, `demo_cate`) VALUES (6, 5, '璐璐', 12, '1', '2021-08-09 00:00:00', 2, '2021-08-16 15:42:46', '2021-08-16 15:42:46', NULL, 31, 0, 1, '0');
COMMIT;

-- ----------------------------
-- Table structure for plugins_manage
-- ----------------------------
DROP TABLE IF EXISTS `plugins_manage`;
CREATE TABLE `plugins_manage` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `store_id` int DEFAULT NULL COMMENT '插件在商城中的id',
  `p_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '插件名称英文',
  `p_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '插件名称',
  `p_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '插件介绍',
  `p_auth` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '作者',
  `is_install` tinyint NOT NULL DEFAULT '0' COMMENT '是否安装',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '状态',
  `version` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '当前版本',
  `price` int unsigned NOT NULL DEFAULT '0' COMMENT '价格',
  `download_times` int unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `install_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '安装路径（用于卸载）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `storeIdUni` (`store_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='插件管理';

-- ----------------------------
-- Records of plugins_manage
-- ----------------------------
BEGIN;
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (34, 1, 'mail', '邮件发送', '邮件发送', 'demo01', 1, 1, '1.0.0', 1, 1248, 'plugins');
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (35, 2, 'wechat', '微信公众号', '微信小程序管理接口，包含关注回复、关键字回复、图文消息、素材管理、菜单管理等', 'demo01', 0, 0, '1.0.2', 1, 456, NULL);
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (36, 3, 'cms', 'cms管理系统', 'cms管理系统', 'gfast01', 0, 0, '1.0.4', 9900, 446, NULL);
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (37, 4, 'demo2', '免费测试', '666', 'demo01', 0, 0, '1.2', 0, 2, NULL);
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (38, 5, 'mail', '邮件发送', 'qq smtp邮件发送功能', 'wilgx0', 0, 0, '1.0.1', 199, 98, NULL);
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (39, 6, 'wechat', '微信公众号', '微信小程序管理接口，包含关注回复、关键字回复、图文消息、素材管理、菜单管理等', 'gfast01', 0, 0, '1.0.1', 5900, 48, NULL);
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (40, 7, 'gencode', '代码生成', '代码生成功能完善，支持生成上传文件、图片及富文本编辑器功能', 'gfast01', 1, 1, '1.0.4', 900, 283, 'app');
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (41, 8, 'im', '在线客服', '在线客服', 'wilgx0', 0, 0, '1.0.1', 9900, 20, NULL);
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (42, 9, 'doorkeeper', 'IP过滤', 'IP地址过滤，支持ipv4 ipv6 ,可设置访问ip白名单和黑名单', 'wilgx0', 0, 0, '1.0.1', 199, 46, NULL);
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (43, 10, 'smsPlugin', '短信发送', '短信发送，支持网易云信、腾讯云、阿里云短信平台，可自定义配置。', 'wilgx0', 0, 0, '1.0.1', 1999, 38, NULL);
INSERT INTO `plugins_manage` (`id`, `store_id`, `p_name`, `p_title`, `p_description`, `p_auth`, `is_install`, `status`, `version`, `price`, `download_times`, `install_path`) VALUES (44, 11, 'workFlow', '流程审批', '流程审批插件', 'gfast01', 0, 0, '1.0.1', 29900, 55, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_rule`;
CREATE TABLE `sys_auth_rule` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` int unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `menu_type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '类型 0目录 1菜单 2按钮',
  `weigh` int NOT NULL DEFAULT '0' COMMENT '权重',
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `always_show` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '显示状态',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '路由地址',
  `jump_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '跳转路由',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '组件路径',
  `is_frame` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否外链 1是 0否',
  `module_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '所属模块',
  `model_id` int unsigned NOT NULL DEFAULT '0' COMMENT '模型ID',
  `created_at` datetime DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime DEFAULT NULL COMMENT '修改日期',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除日期',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE,
  KEY `weigh` (`weigh`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=349 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='菜单节点表';

-- ----------------------------
-- Records of sys_auth_rule
-- ----------------------------
BEGIN;
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 0, 'system/config', '系统配置', 'system', '', 'Admin tips', 0, 0, 1, 1, 'config', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 0, 'system/auth', '权限管理', 'peoples', '', '', 0, 0, 1, 1, 'system/auth', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 0, 'system/monitor', '系统监控', 'monitor', '', '', 0, 0, 1, 1, 'monitor', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 1, 'system/config/dict/type/list', '字典管理', 'dict', '', '', 1, 0, 1, 1, 'dict/list', '', 'system/config/dict/list', 0, 'sys_admin', 0, NULL, '2021-07-20 08:47:37', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 1, 'system/config/sysConfig/list', '参数管理', 'date-range', '', '', 1, 0, 1, 1, 'params/list', '', 'system/config/params/list', 0, 'sys_admin', 0, NULL, '2021-07-20 08:58:57', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 2, 'system/auth/menuList', '菜单管理', 'nested', '', '', 1, 0, 1, 1, 'menuList', '', 'system/auth/menuList', 0, 'sys_admin', 0, NULL, '2021-07-20 09:01:49', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (21, 5, 'system/config/dict/type/delete', '删除字典', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 08:56:49', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 8, 'system/auth/addMenu', '添加菜单', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:02:20', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 8, 'system/auth/editMenu', '修改菜单', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 8, 'system/auth/deleteMenu', '删除菜单', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (19, 5, 'system/config/dict/type/add', '添加字典', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 08:56:29', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 5, 'system/config/dict/type/edit', '修改字典', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 08:56:39', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 5, 'system/config/dict/data/list', '字典数据管理', '', '', '', 2, 0, 1, 1, 'dataList', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 08:57:25', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 5, 'system/config/dict/data/add', '添加字典数据', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 08:58:06', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 5, 'system/config/dict/data/edit', '修改字典数据', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 08:58:14', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (25, 5, 'system/config/dict/data/delete', '删除字典数据', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 08:58:22', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (26, 2, 'system/auth/roleList', '角色管理', 'logininfor', '', '', 1, 0, 1, 1, 'role', '', 'system/auth/roleList', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (27, 26, 'system/auth/addRole', '添加角色', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 2, 'system/auth/deptList', '部门管理', 'peoples', '', '', 1, 0, 1, 1, 'dept', '', 'system/auth/dept', 0, 'sys_admin', 0, NULL, '2021-07-20 09:03:46', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 26, 'system/auth/editRole', '修改角色', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 26, 'system/auth/statusSetRole', '设置角色状态', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 26, 'system/auth/deleteRole', '删除角色', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 2, 'system/auth/postList', '岗位管理', 'tab', '', '', 1, 0, 1, 1, 'post', '', 'system/auth/post', 0, 'sys_admin', 0, NULL, '2021-07-20 09:04:51', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, 3, 'system/monitor/online/list', '在线用户', 'cascader', '', '', 1, 0, 1, 1, 'online', '', 'system/monitor/online/list', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, 3, 'system/monitor/job', '定时任务', 'clipboard', '', '', 1, 0, 1, 1, 'job', '', 'system/monitor/job', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, 3, 'system/monitor/server/info', '服务监控', 'dict', '', '', 1, 0, 1, 1, 'server', '', 'system/monitor/server', 0, 'sys_admin', 0, NULL, '2021-07-19 16:07:23', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, 3, 'system/monitor/loginLog', '登录日志', 'chart', '', '', 1, 0, 1, 1, 'logininfor', '', 'system/monitor/logininfor', 0, 'sys_admin', 0, NULL, '2021-07-20 09:08:00', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (39, 3, 'system/monitor/operLog', '操作日志', 'dashboard', '', '', 1, 0, 1, 1, 'operlog', '', 'system/monitor/operlog', 0, 'sys_admin', 0, NULL, '2021-07-20 09:08:31', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (40, 2, 'system/auth/userList', '用户管理', 'user', '', '', 1, 0, 1, 1, 'user', '', 'system/auth/userList', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (41, 6, 'system/config/sysConfig/add', '添加参数', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 08:59:09', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (42, 6, 'system/config/sysConfig/edit', '修改参数', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 08:59:17', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (43, 6, 'system/config/sysConfig/delete', '删除参数', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 08:59:25', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (44, 28, 'system/auth/deptAdd', '添加部门', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:04:05', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (45, 28, 'system/auth/deptEdit', '修改部门', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:04:19', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (46, 28, 'system/auth/deptDelete', '删除部门', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:04:35', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (47, 33, 'system/auth/postAdd', '添加岗位', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:05:04', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (48, 33, 'system/auth/postEdit', '修改岗位', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:05:15', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (49, 33, 'system/auth/postDelete', '删除岗位', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:05:25', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (50, 40, 'system/auth/addUser', '添加用户', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (51, 40, 'system/auth/editUser', '修改用户', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (52, 40, 'system/auth/resetUserPwd', '密码重置', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (53, 40, 'system/auth/changeUserStatus', '状态设置', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (54, 40, 'system/auth/deleteUser', '删除用户', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:06:16', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (55, 34, 'system/monitor/online/forceLogout', '强制退出', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (56, 36, 'system/monitor/job/add', '添加任务', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (57, 36, 'system/monitor/job/edit', '修改任务', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (58, 36, 'system/monitor/job/start', '开启任务', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (59, 36, 'system/monitor/job/stop', '停止任务', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (60, 36, 'system/monitor/job/delete', '删除任务', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (61, 38, 'system/monitor/loginLog/delete', '删除', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:08:10', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (62, 38, 'system/monitor/loginLog/clear', '清空', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:08:15', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (63, 39, 'system/monitor/operLog/delete', '删除', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:08:36', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (64, 39, 'system/monitor/operLog/clear', '清空', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, '2021-07-20 09:08:41', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (75, 0, 'system/tools', '系统工具', 'server', '', '', 0, 0, 1, 1, 'system/tools', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (76, 75, 'system/tools/build', '表单构建', 'build', '', '', 1, 0, 1, 1, 'build', '', 'system/tools/build', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (86, 1, 'system/config/sysWebSet', '站点设置', 'system', '', '', 1, 0, 1, 1, '/webSet', '', 'system/config/webSet', 0, 'sys_admin', 0, NULL, '2021-07-20 08:59:41', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (185, 86, 'system/config/sysWebSet/update', '站点配置更新', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, '2021-07-20 09:00:18', '2021-07-20 09:00:18', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (186, 75, 'system/tools/gen/tableList', '代码生成', 'code', '', '', 1, 0, 1, 1, 'gen', '', 'system/tools/gen', 0, 'sys_admin', 0, '2021-08-16 10:36:54', '2021-08-16 12:12:49', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (231, 227, 'system/pluginsManage/delete', '插件管理删除', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, '2021-12-22 10:12:09', '2021-12-22 10:12:09', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (232, 227, 'system/pluginsManage/changeStatus', '插件管理状态修改', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, '2021-12-22 10:12:31', '2021-12-22 10:12:31', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (230, 227, 'system/pluginsManage/edit', '插件管理修改', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, '2021-12-22 10:11:48', '2021-12-22 10:11:48', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (229, 227, 'system/pluginsManage/add', '插件管理添加', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, '2021-12-22 10:11:29', '2021-12-22 10:11:29', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (228, 227, 'system/pluginsManage/get', '插件管理查询', '', '', '', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, '2021-12-22 10:10:54', '2021-12-22 10:10:54', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (227, 75, 'system/pluginsManage/list', '插件管理', 'list', '', '', 1, 0, 1, 1, 'pluginsManageList', '', 'system/pluginsManage/list', 0, 'sys_admin', 0, '2021-12-22 10:10:15', '2021-12-22 10:10:15', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (226, 75, 'system/tools/api', '系统接口', 'guide', '', '', 1, 0, 1, 1, 'api', '', 'system/tools/api', 0, 'sys_admin', 0, '2021-12-22 09:42:42', '2021-12-22 09:42:42', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (233, 0, 'demo/demoDataAuth', '数据权限测试管理', 'clipboard', '', '', 0, 0, 1, 1, 'demoDataAuth', '', '', 0, 'sys_admin', 0, '2022-03-03 11:52:48', '2022-03-03 11:52:48', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (234, 233, 'demo/demoDataAuth/list', '数据权限测试列表', 'date', '', '', 1, 0, 1, 1, 'demoDataAuthList', '', 'demo/demoDataAuth/list', 0, 'sys_admin', 0, '2022-03-03 11:53:26', '2022-03-03 11:53:26', NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (235, 0, 'system/sysUserBind', '三方绑定管理', 'form', '', '三方绑定管理', 0, 0, 1, 1, 'sysUserBind', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (236, 235, 'system/sysUserBind/list', '三方绑定列表', 'list', '', '三方绑定列表', 1, 0, 1, 1, 'sysUserBindList', '', 'system/sysUserBind/list', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (237, 236, 'system/sysUserBind/get', '三方绑定查询', '', '', '三方绑定查询', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (238, 236, 'system/sysUserBind/add', '三方绑定添加', '', '', '三方绑定添加', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (239, 236, 'system/sysUserBind/edit', '三方绑定修改', '', '', '三方绑定修改', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (240, 236, 'system/sysUserBind/delete', '三方绑定删除', '', '', '三方绑定删除', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (282, 278, 'system/sysBaby/delete', '宝宝基础信息删除', '', '', '宝宝基础信息删除', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (281, 278, 'system/sysBaby/edit', '宝宝基础信息修改', '', '', '宝宝基础信息修改', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (280, 278, 'system/sysBaby/add', '宝宝基础信息添加', '', '', '宝宝基础信息添加', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (279, 278, 'system/sysBaby/get', '宝宝基础信息查询', '', '', '宝宝基础信息查询', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (277, 0, 'system/sysBaby', '宝宝基础信息管理', 'form', '', '宝宝基础信息管理', 0, 0, 1, 1, 'sysBaby', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (278, 277, 'system/sysBaby/list', '宝宝基础信息列表', 'list', '', '宝宝基础信息列表', 1, 0, 1, 1, 'sysBabyList', '', 'system/sysBaby/list', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (266, 265, 'system/sysUserBaby/list', '用户与宝宝关联列表', 'list', '', '用户与宝宝关联列表', 1, 0, 1, 1, 'sysUserBabyList', '', 'system/sysUserBaby/list', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (267, 266, 'system/sysUserBaby/get', '用户与宝宝关联查询', '', '', '用户与宝宝关联查询', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (268, 266, 'system/sysUserBaby/add', '用户与宝宝关联添加', '', '', '用户与宝宝关联添加', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (269, 266, 'system/sysUserBaby/edit', '用户与宝宝关联修改', '', '', '用户与宝宝关联修改', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (270, 266, 'system/sysUserBaby/delete', '用户与宝宝关联删除', '', '', '用户与宝宝关联删除', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (293, 290, 'system/sysBabyFoodComplementary/edit', '宝宝辅食修改', '', '', '宝宝辅食修改', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (265, 0, 'system/sysUserBaby', '用户与宝宝关联管理', 'form', '', '用户与宝宝关联管理', 0, 0, 1, 1, 'sysUserBaby', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (292, 290, 'system/sysBabyFoodComplementary/add', '宝宝辅食添加', '', '', '宝宝辅食添加', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (291, 290, 'system/sysBabyFoodComplementary/get', '宝宝辅食查询', '', '', '宝宝辅食查询', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (290, 289, 'system/sysBabyFoodComplementary/list', '宝宝辅食列表', 'list', '', '宝宝辅食列表', 1, 0, 1, 1, 'sysBabyFoodComplementaryList', '', 'system/sysBabyFoodComplementary/list', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (289, 0, 'system/sysBabyFoodComplementary', '宝宝辅食管理', 'form', '', '宝宝辅食管理', 0, 0, 1, 1, 'sysBabyFoodComplementary', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (294, 290, 'system/sysBabyFoodComplementary/delete', '宝宝辅食删除', '', '', '宝宝辅食删除', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (295, 0, 'system/sysBabyFoodFeedingBottle', '宝宝奶瓶喂养管理', 'form', '', '宝宝奶瓶喂养管理', 0, 0, 1, 1, 'sysBabyFoodFeedingBottle', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (296, 295, 'system/sysBabyFoodFeedingBottle/list', '宝宝奶瓶喂养列表', 'list', '', '宝宝奶瓶喂养列表', 1, 0, 1, 1, 'sysBabyFoodFeedingBottleList', '', 'system/sysBabyFoodFeedingBottle/list', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (297, 296, 'system/sysBabyFoodFeedingBottle/get', '宝宝奶瓶喂养查询', '', '', '宝宝奶瓶喂养查询', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (298, 296, 'system/sysBabyFoodFeedingBottle/add', '宝宝奶瓶喂养添加', '', '', '宝宝奶瓶喂养添加', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (299, 296, 'system/sysBabyFoodFeedingBottle/edit', '宝宝奶瓶喂养修改', '', '', '宝宝奶瓶喂养修改', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (300, 296, 'system/sysBabyFoodFeedingBottle/delete', '宝宝奶瓶喂养删除', '', '', '宝宝奶瓶喂养删除', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (348, 344, 'system/sysBabyFoodFeedingMother/delete', '宝宝母乳亲喂删除', '', '', '宝宝母乳亲喂删除', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (346, 344, 'system/sysBabyFoodFeedingMother/add', '宝宝母乳亲喂添加', '', '', '宝宝母乳亲喂添加', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (347, 344, 'system/sysBabyFoodFeedingMother/edit', '宝宝母乳亲喂修改', '', '', '宝宝母乳亲喂修改', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (345, 344, 'system/sysBabyFoodFeedingMother/get', '宝宝母乳亲喂查询', '', '', '宝宝母乳亲喂查询', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (344, 343, 'system/sysBabyFoodFeedingMother/list', '宝宝母乳亲喂列表', 'list', '', '宝宝母乳亲喂列表', 1, 0, 1, 1, 'sysBabyFoodFeedingMotherList', '', 'system/sysBabyFoodFeedingMother/list', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (343, 0, 'system/sysBabyFoodFeedingMother', '宝宝母乳亲喂管理', 'form', '', '宝宝母乳亲喂管理', 0, 0, 1, 1, 'sysBabyFoodFeedingMother', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (307, 0, 'system/sysBabyBody', '宝宝身体管理', 'form', '', '宝宝身体管理', 0, 0, 1, 1, 'sysBabyBody', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (308, 307, 'system/sysBabyBody/list', '宝宝身体列表', 'list', '', '宝宝身体列表', 1, 0, 1, 1, 'sysBabyBodyList', '', 'system/sysBabyBody/list', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (309, 308, 'system/sysBabyBody/get', '宝宝身体查询', '', '', '宝宝身体查询', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (310, 308, 'system/sysBabyBody/add', '宝宝身体添加', '', '', '宝宝身体添加', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (311, 308, 'system/sysBabyBody/edit', '宝宝身体修改', '', '', '宝宝身体修改', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (312, 308, 'system/sysBabyBody/delete', '宝宝身体删除', '', '', '宝宝身体删除', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (313, 0, 'system/sysBabyDiaper', '宝宝换尿布管理', 'form', '', '宝宝换尿布管理', 0, 0, 1, 1, 'sysBabyDiaper', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (314, 313, 'system/sysBabyDiaper/list', '宝宝换尿布列表', 'list', '', '宝宝换尿布列表', 1, 0, 1, 1, 'sysBabyDiaperList', '', 'system/sysBabyDiaper/list', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (315, 314, 'system/sysBabyDiaper/get', '宝宝换尿布查询', '', '', '宝宝换尿布查询', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (316, 314, 'system/sysBabyDiaper/add', '宝宝换尿布添加', '', '', '宝宝换尿布添加', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (317, 314, 'system/sysBabyDiaper/edit', '宝宝换尿布修改', '', '', '宝宝换尿布修改', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (318, 314, 'system/sysBabyDiaper/delete', '宝宝换尿布删除', '', '', '宝宝换尿布删除', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (337, 0, 'system/sysBabyFoodBreastPump', '宝宝吸奶器管理', 'form', '', '宝宝吸奶器管理', 0, 0, 1, 1, 'sysBabyFoodBreastPump', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (342, 338, 'system/sysBabyFoodBreastPump/delete', '宝宝吸奶器删除', '', '', '宝宝吸奶器删除', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (341, 338, 'system/sysBabyFoodBreastPump/edit', '宝宝吸奶器修改', '', '', '宝宝吸奶器修改', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (340, 338, 'system/sysBabyFoodBreastPump/add', '宝宝吸奶器添加', '', '', '宝宝吸奶器添加', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (339, 338, 'system/sysBabyFoodBreastPump/get', '宝宝吸奶器查询', '', '', '宝宝吸奶器查询', 2, 0, 1, 1, '', '', '', 0, 'sys_admin', 0, NULL, NULL, NULL);
INSERT INTO `sys_auth_rule` (`id`, `pid`, `name`, `title`, `icon`, `condition`, `remark`, `menu_type`, `weigh`, `status`, `always_show`, `path`, `jump_path`, `component`, `is_frame`, `module_type`, `model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES (338, 337, 'system/sysBabyFoodBreastPump/list', '宝宝吸奶器列表', 'list', '', '宝宝吸奶器列表', 1, 0, 1, 1, 'sysBabyFoodBreastPumpList', '', 'system/sysBabyFoodBreastPump/list', 0, 'sys_admin', 0, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_baby
-- ----------------------------
DROP TABLE IF EXISTS `sys_baby`;
CREATE TABLE `sys_baby` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` tinyint DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '用户头像',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `created_by` bigint unsigned DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='宝宝基础信息表';

-- ----------------------------
-- Records of sys_baby
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_baby_body
-- ----------------------------
DROP TABLE IF EXISTS `sys_baby_body`;
CREATE TABLE `sys_baby_body` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` bigint NOT NULL COMMENT '宝宝ID',
  `height` int DEFAULT '0' COMMENT '身高',
  `weight` int DEFAULT '0' COMMENT '体重',
  `hc` int DEFAULT '0' COMMENT '头尾',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `created_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='宝宝身体表';

-- ----------------------------
-- Records of sys_baby_body
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_baby_diaper
-- ----------------------------
DROP TABLE IF EXISTS `sys_baby_diaper`;
CREATE TABLE `sys_baby_diaper` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` bigint NOT NULL COMMENT '宝宝ID',
  `start_at` datetime DEFAULT NULL COMMENT '开始时间',
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '类型',
  `weight` tinyint NOT NULL DEFAULT '0' COMMENT '尿布重量',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '便便状态',
  `colour` tinyint NOT NULL DEFAULT '0' COMMENT '便便颜色',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `created_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='宝宝换尿布表';

-- ----------------------------
-- Records of sys_baby_diaper
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_baby_food_breast_pump
-- ----------------------------
DROP TABLE IF EXISTS `sys_baby_food_breast_pump`;
CREATE TABLE `sys_baby_food_breast_pump` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` bigint NOT NULL COMMENT '宝宝ID',
  `start_at` datetime DEFAULT NULL COMMENT '开始时间',
  `appetite_left` tinyint DEFAULT '0' COMMENT '左侧量',
  `appetite_right` tinyint DEFAULT '0' COMMENT '右侧量',
  `duration_left` tinyint DEFAULT '0' COMMENT '左侧时长',
  `duration_right` tinyint DEFAULT '0' COMMENT '右侧时长',
  `duration_type` tinyint(1) DEFAULT '0' COMMENT '吸奶方式',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `created_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='宝宝吸奶器表';

-- ----------------------------
-- Records of sys_baby_food_breast_pump
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_baby_food_complementary
-- ----------------------------
DROP TABLE IF EXISTS `sys_baby_food_complementary`;
CREATE TABLE `sys_baby_food_complementary` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` bigint NOT NULL COMMENT '宝宝ID',
  `start_at` datetime DEFAULT NULL COMMENT '开始时间',
  `type` bigint NOT NULL COMMENT '辅食类型',
  `character` tinyint NOT NULL DEFAULT '0' COMMENT '性状',
  `appetite` tinyint NOT NULL DEFAULT '0' COMMENT '食量',
  `duration` tinyint DEFAULT '0' COMMENT '持续时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `created_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='宝宝辅食表';

-- ----------------------------
-- Records of sys_baby_food_complementary
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_baby_food_feeding_bottle
-- ----------------------------
DROP TABLE IF EXISTS `sys_baby_food_feeding_bottle`;
CREATE TABLE `sys_baby_food_feeding_bottle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baby_id` bigint NOT NULL COMMENT '宝宝ID',
  `start_at` datetime NOT NULL COMMENT '开始时间',
  `appetite` tinyint NOT NULL DEFAULT '0' COMMENT '总量',
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '喂养类型',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `created_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='宝宝奶瓶喂养表';

-- ----------------------------
-- Records of sys_baby_food_feeding_bottle
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_baby_food_feeding_mother
-- ----------------------------
DROP TABLE IF EXISTS `sys_baby_food_feeding_mother`;
CREATE TABLE `sys_baby_food_feeding_mother` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `baby_id` bigint NOT NULL COMMENT '宝宝ID',
  `start_at` datetime DEFAULT NULL COMMENT '开始时间',
  `duration_left` tinyint DEFAULT '0' COMMENT '左侧时长',
  `duration_right` tinyint DEFAULT '0' COMMENT '右侧时长',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注',
  `created_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='宝宝母乳亲喂表';

-- ----------------------------
-- Records of sys_baby_food_feeding_mother
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数键值',
  `config_type` tinyint(1) DEFAULT '0' COMMENT '系统内置（Y是 N否）',
  `create_by` int unsigned DEFAULT '0' COMMENT '创建者',
  `update_by` int unsigned DEFAULT '0' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`config_id`) USING BTREE,
  UNIQUE KEY `uni_config_key` (`config_key`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '文件上传-文件大小', 'sys.uploadFile.fileSize', '50M', 1, 31, 31, '文件上传大小限制', NULL, '2021-07-06 14:57:35', NULL);
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, '文件上传-文件类型', 'sys.uploadFile.fileType', 'doc,docx,zip,xls,xlsx,rar,jpg,jpeg,gif,npm,png', 1, 31, 31, '文件上传后缀类型限制', NULL, NULL, NULL);
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '图片上传-图片类型', 'sys.uploadFile.imageType', 'jpg,jpeg,gif,npm,png', 1, 31, 0, '图片上传后缀类型限制', NULL, NULL, NULL);
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, '图片上传-图片大小', 'sys.uploadFile.imageSize', '50M', 1, 31, 31, '图片上传大小限制', NULL, NULL, NULL);
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, '静态资源', 'static.resource', '/', 1, 2, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, '啊实打实的22', 'aasdd22', 'asdasd22', 0, 31, 31, 'dasdasd22', '2021-07-06 12:11:37', '2021-07-06 14:58:27', '2021-07-06 15:21:48');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `created_by` bigint unsigned DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint DEFAULT NULL COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (100, 0, '0', '奇讯科技', 0, '若依', '15888888888', 'ry@qq.com', '1', 0, 31, '2021-07-13 15:56:52', '2021-07-13 15:57:05', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (200, 100, '', '大数据', 1, '小刘', '18888888888', 'liou@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (201, 100, '', '开发', 1, '老李', '18888888888', 'li@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (202, 108, '', '外勤', 1, '小a', '18888888888', 'aa@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (203, 108, '', '行政', 0, 'aa', '18888888888', 'aa@qq.com', '0', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', NULL);
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (204, 100, '', '测试一下', 0, '张三', '13688999888', '656@qq.com', '1', 0, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', '2021-07-12 10:12:00');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (205, 100, '', '测试222', 0, '李四22', '13788556554', '1546@2ad.com', '1', 31, 31, '2021-07-13 15:56:52', '2021-07-13 15:56:52', '2021-07-12 10:12:20');
INSERT INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (206, 205, '', 'asdasd', 0, 'dasd', '13699878797', '4654@aa.com', '1', 31, NULL, '2021-07-13 15:56:52', '2021-07-13 15:56:52', '2021-07-12 10:12:20');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表格回显样式',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '是否默认（1是 0否）',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` bigint unsigned DEFAULT '0' COMMENT '创建者',
  `update_by` bigint unsigned DEFAULT '0' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 0, '男', '1', 'sys_user_sex', '', '', 0, 1, 31, 2, '备注信息', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 0, '女', '2', 'sys_user_sex', '', '', 0, 1, 31, 31, '备注信息', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 0, '保密', '0', 'sys_user_sex', '', '', 1, 1, 31, 31, '备注信息', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 0, '正常', '0', 'sys_job_status', '', 'default', 1, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 0, '暂停', '1', 'sys_job_status', '', 'default', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 0, '默认', 'DEFAULT', 'sys_job_group', '', 'default', 1, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 0, '系统', 'SYSTEM', 'sys_job_group', '', 'default', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 0, '成功', '1', 'admin_login_status', '', 'default', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 0, '失败', '0', 'admin_login_status', '', 'default', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, 0, '成功', '1', 'sys_oper_log_status', '', 'default', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (35, 0, '失败', '0', 'sys_oper_log_status', '', 'default', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, 0, '重复执行', '1', 'sys_job_policy', '', 'default', 1, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, 0, '执行一次', '2', 'sys_job_policy', '', 'default', 1, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, 0, '显示', '1', 'sys_show_hide', NULL, 'default', 1, 1, 31, 0, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (39, 0, '隐藏', '0', 'sys_show_hide', NULL, 'default', 0, 1, 31, 0, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (40, 0, '正常', '1', 'sys_normal_disable', '', 'default', 1, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (41, 0, '停用', '0', 'sys_normal_disable', '', 'default', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (49, 0, '是', '1', 'sys_yes_no', '', '', 1, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (50, 0, '否', '0', 'sys_yes_no', '', '', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (61, 0, '政府工作目标', '1', 'gov_cate_models', '', '', 0, 1, 2, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (62, 0, '系统后台', 'sys_admin', 'menu_module_type', '', '', 1, 1, 2, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (63, 0, '政务工作', 'gov_work', 'menu_module_type', '', '', 0, 1, 2, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (65, 0, '[work]测试业务表', 'wf_news', 'flow_type', '', '', 0, 1, 2, 2, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (66, 0, '回退修改', '-1', 'flow_status', '', '', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (67, 0, '保存中', '0', 'flow_status', '', '', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (68, 0, '流程中', '1', 'flow_status', '', '', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (69, 0, '审批通过', '2', 'flow_status', '', '', 0, 1, 31, 2, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (70, 2, '发布栏目', '2', 'sys_blog_sign', '', '', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (71, 3, '跳转栏目', '3', 'sys_blog_sign', '', '', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (72, 4, '单页栏目', '4', 'sys_blog_sign', '', '', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (73, 2, '置顶', '1', 'sys_log_sign', '', '', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (74, 3, '幻灯', '2', 'sys_log_sign', '', '', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (75, 4, '推荐', '3', 'sys_log_sign', '', '', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (76, 1, '一般', '0', 'sys_log_sign', '', '', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (77, 1, '频道页', '1', 'sys_blog_sign', '', '', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (78, 0, '普通', '0', 'flow_level', '', '', 0, 1, 31, 0, '', NULL, '2021-07-20 08:55:20', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (79, 0, '加急', '1', 'flow_level', '', '', 0, 1, 31, 0, '', NULL, '2021-07-20 08:55:20', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (80, 0, '紧急', '2', 'flow_level', '', '', 0, 1, 31, 0, '', NULL, '2021-07-20 08:55:20', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (81, 0, '特急', '3', 'flow_level', '', '', 0, 1, 31, 31, '', NULL, '2021-07-20 08:55:25', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (82, 0, '频道页', '1', 'sys_blog_type', '', '', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (83, 0, '发布栏目', '2', 'sys_blog_type', '', '', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (84, 0, '跳转栏目', '3', 'sys_blog_type', '', '', 0, 1, 31, 31, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (85, 0, '单页栏目', '4', 'sys_blog_type', '', '', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (87, 0, '[cms]文章表', 'cms_news', 'flow_type', '', '', 0, 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (88, 0, '微信小程序', '0', 'open_type', '', '', 1, 1, 31, 0, '', '2022-09-29 10:41:03', '2022-09-29 10:41:03', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (89, 0, '微信公众号', '1', 'open_type', '', '', 0, 1, 31, 0, '', '2022-09-29 10:41:12', '2022-09-29 10:41:12', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (90, 0, 'QQ', '2', 'open_type', '', '', 0, 1, 31, 0, '', '2022-09-29 10:41:20', '2022-09-29 10:41:20', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (91, 0, '普通软糊状', '0', 'excrement_status', '', '', 1, 1, 31, 0, '', '2022-09-30 20:25:49', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (92, 0, '较干', '1', 'excrement_status', '', '', 0, 1, 31, 0, '', '2022-09-30 20:26:04', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (93, 0, '颗粒状', '2', 'excrement_status', '', '', 0, 1, 31, 0, '', '2022-09-30 20:26:12', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (94, 0, '水样便', '3', 'excrement_status', '', '', 0, 1, 31, 0, '', '2022-09-30 20:26:20', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (95, 0, '水便分离', '4', 'excrement_status', '', '', 0, 1, 31, 0, '', '2022-09-30 20:26:32', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (96, 0, '蛋花汤状', '5', 'excrement_status', '', '', 0, 1, 31, 0, '', '2022-09-30 20:26:46', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (97, 0, '血便', '6', 'excrement_status', '', '', 0, 1, 31, 0, '', '2022-09-30 20:26:54', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (98, 0, '油性大便', '7', 'excrement_status', '', '', 0, 1, 31, 0, '', '2022-09-30 20:27:05', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (99, 0, '豆腐渣样', '8', 'excrement_status', '', '', 0, 1, 31, 31, '', '2022-09-30 20:27:20', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (100, 0, '泡沫状', '9', 'excrement_status', '', '', 0, 1, 31, 0, '', '2022-09-30 20:27:39', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (101, 0, '黄色', '0', 'excrement_colour', '', '', 1, 1, 31, 31, '', '2022-09-30 20:28:54', '2022-09-30 20:29:07', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (102, 0, '墨绿色', '1', 'excrement_colour', '', '', 0, 1, 31, 0, '', '2022-09-30 20:29:03', '2022-09-30 20:29:03', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (103, 0, '棕色', '2', 'excrement_colour', '', '', 0, 1, 31, 0, '', '2022-09-30 20:29:17', '2022-09-30 20:29:17', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (104, 0, '绿色', '3', 'excrement_colour', '', '', 0, 1, 31, 0, '', '2022-09-30 20:29:25', '2022-09-30 20:29:25', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (105, 0, '红色', '4', 'excrement_colour', '', '', 0, 1, 31, 0, '', '2022-09-30 20:29:37', '2022-09-30 20:29:37', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (106, 0, '黑色', '5', 'excrement_colour', '', '', 0, 1, 31, 0, '', '2022-09-30 20:29:46', '2022-09-30 20:29:46', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (107, 0, '灰白色', '6', 'excrement_colour', '', '', 0, 1, 31, 0, '', '2022-09-30 20:29:56', '2022-09-30 20:29:56', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (108, 0, '很轻', '0', 'diaper_weight', '', '', 1, 1, 31, 0, '', '2022-09-30 20:30:16', '2022-09-30 20:30:16', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (109, 0, '正常', '1', 'diaper_weight', '', '', 1, 1, 31, 0, '', '2022-09-30 20:30:29', '2022-09-30 20:30:29', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (110, 0, '很重', '2', 'diaper_weight', '', '', 0, 1, 31, 0, '', '2022-09-30 20:30:36', '2022-09-30 20:30:36', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (111, 0, '嘘嘘', '0', 'diaper_type', '', '', 1, 1, 31, 0, '', '2022-09-30 20:30:55', '2022-09-30 20:30:55', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (112, 0, '便便', '1', 'diaper_type', '', '', 0, 1, 31, 0, '', '2022-09-30 20:31:01', '2022-09-30 20:31:01', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (113, 0, '嘘嘘+便便', '2', 'diaper_type', '', '', 0, 1, 31, 0, '', '2022-09-30 20:31:09', '2022-09-30 20:31:09', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (114, 0, '一勺', '0', 'food_complementary_appetite', '', '', 1, 1, 31, 0, '', '2022-09-30 20:33:10', '2022-09-30 20:33:10', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (115, 0, '两勺', '1', 'food_complementary_appetite', '', '', 0, 1, 31, 0, '', '2022-09-30 20:33:24', '2022-09-30 20:33:24', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (116, 0, '三勺', '2', 'food_complementary_appetite', '', '', 0, 1, 31, 0, '', '2022-09-30 20:33:31', '2022-09-30 20:33:31', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (117, 0, '半碗', '3', 'food_complementary_appetite', '', '', 0, 1, 31, 0, '', '2022-09-30 20:33:42', '2022-09-30 20:33:42', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (118, 0, '一碗', '4', 'food_complementary_appetite', '', '', 0, 1, 31, 31, '', '2022-09-30 20:33:50', '2022-09-30 20:33:54', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (119, 0, '希滑', '0', 'food_complementary_character', '', '', 1, 1, 31, 0, '', '2022-09-30 20:34:51', '2022-09-30 20:34:51', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (120, 0, '粘稠', '1', 'food_complementary_character', '', '', 0, 1, 31, 0, '', '2022-09-30 20:35:14', '2022-09-30 20:35:14', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (121, 0, '泥状', '2', 'food_complementary_character', '', '', 0, 1, 31, 0, '', '2022-09-30 20:35:34', '2022-09-30 20:35:34', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (122, 0, '半固体', '3', 'food_complementary_character', '', '', 0, 1, 31, 0, '', '2022-09-30 20:35:41', '2022-09-30 20:35:41', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (123, 0, '固体', '4', 'food_complementary_character', '', '', 0, 1, 31, 0, '', '2022-09-30 20:35:50', '2022-09-30 20:35:50', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (124, 0, '否', '0', 'yes2No', '', '', 0, 1, 31, 0, '', '2022-09-30 21:40:13', '2022-09-30 21:40:13', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (125, 0, '是', '1', 'yes2No', '', '', 0, 1, 31, 0, '', '2022-09-30 21:40:18', '2022-09-30 21:40:18', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (126, 0, '谷物', '0', 'food_complementary_type', '', '', 1, 1, 31, 0, '', '2022-09-30 21:45:53', '2022-09-30 21:45:53', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (127, 0, '肉类', '1', 'food_complementary_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:45:58', '2022-09-30 21:45:58', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (128, 0, '蔬菜', '2', 'food_complementary_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:46:06', '2022-09-30 21:46:06', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (129, 0, '水果', '3', 'food_complementary_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:46:12', '2022-09-30 21:46:12', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (130, 0, '果汁', '4', 'food_complementary_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:46:20', '2022-09-30 21:46:20', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (131, 0, '汤', '5', 'food_complementary_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:46:27', '2022-09-30 21:46:27', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (132, 0, '奶粉', '6', 'food_complementary_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:46:39', '2022-09-30 21:46:39', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (133, 0, '其他', '7', 'food_complementary_type', '', '', 0, 1, 31, 31, '', '2022-09-30 21:46:48', '2022-09-30 21:46:54', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (134, 0, '母乳', '0', 'feeding_bottle_type', '', '', 1, 1, 31, 0, '', '2022-09-30 21:55:41', '2022-09-30 21:55:41', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (135, 0, '奶粉', '1', 'feeding_bottle_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:55:48', '2022-09-30 21:55:48', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (136, 0, '母乳+奶粉', '2', 'feeding_bottle_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:56:02', '2022-09-30 21:56:02', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (137, 0, '水', '3', 'feeding_bottle_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:56:10', '2022-09-30 21:56:10', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (138, 0, '水奶', '5', 'feeding_bottle_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:56:19', '2022-09-30 21:56:19', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (139, 0, '其他', '6', 'feeding_bottle_type', '', '', 0, 1, 31, 0, '', '2022-09-30 21:56:26', '2022-09-30 21:56:26', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (140, 0, '双侧同时吸奶', '0', 'suckle_type', '', '', 1, 1, 31, 0, '', '2022-10-03 10:41:30', '2022-10-03 10:41:30', NULL);
INSERT INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (141, 0, '双侧分开吸奶', '1', 'suckle_type', '', '', 0, 1, 31, 0, '', '2022-10-03 10:41:41', '2022-10-03 10:41:41', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `status` tinyint unsigned DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` int unsigned DEFAULT '0' COMMENT '创建者',
  `update_by` int unsigned DEFAULT '0' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `created_at` datetime DEFAULT NULL COMMENT '创建日期',
  `updated_at` datetime DEFAULT NULL COMMENT '修改日期',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除日期',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE KEY `dict_type` (`dict_type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '用户性别', 'sys_user_sex', 1, 31, 1, '用于选择用户性别', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, '任务状态', 'sys_job_status', 1, 31, 31, '任务状态列表', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, '任务分组', 'sys_job_group', 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, '管理员登录状态', 'admin_login_status', 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, '操作日志状态', 'sys_oper_log_status', 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, '任务策略', 'sys_job_policy', 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, '菜单状态', 'sys_show_hide', 1, 31, 0, '菜单状态', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, '系统开关', 'sys_normal_disable', 1, 31, 31, '系统开关', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, '系统内置', 'sys_yes_no', 1, 31, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, '政务工作模型分类', 'gov_cate_models', 1, 2, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, '菜单模块类型', 'menu_module_type', 1, 2, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, '工作流程类型', 'flow_type', 1, 2, 0, '', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, '工作流程审批状态', 'flow_status', 1, 31, 0, '工作流程审批状态', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, '博客分类类型', 'sys_blog_type', 1, 31, 31, '博客分类中的标志', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, '博客日志标志', 'sys_log_sign', 1, 31, 0, '博客日志管理中的标志数据字典', NULL, NULL, NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (35, '工作流紧急状态', 'flow_level', 1, 31, 31, '', NULL, '2021-07-20 08:55:20', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, '开发平台', 'open_type', 1, 31, 0, '', '2022-09-29 10:40:45', '2022-09-29 10:40:45', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, '尿布-臭臭类型', 'diaper_type', 1, 31, 0, '', '2022-09-30 20:23:46', '2022-09-30 20:23:46', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, '尿布重量', 'diaper_weight', 1, 31, 0, '', '2022-09-30 20:24:23', '2022-09-30 20:24:23', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (39, '便便颜色', 'excrement_colour', 1, 31, 31, '', '2022-09-30 20:25:02', '2022-09-30 20:28:32', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (40, '便便状态', 'excrement_status', 1, 31, 31, '', '2022-09-30 20:25:27', '2022-09-30 20:28:38', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (41, '辅食食量', 'food_complementary_appetite', 1, 31, 0, '', '2022-09-30 20:32:55', '2022-09-30 20:32:55', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (42, '辅食性状', 'food_complementary_character', 1, 31, 0, '', '2022-09-30 20:34:30', '2022-09-30 20:34:30', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (43, '是否', 'yes2No', 1, 31, 0, '', '2022-09-30 21:40:01', '2022-09-30 21:40:01', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (44, '辅食类型', 'food_complementary_type', 1, 31, 0, '', '2022-09-30 21:45:38', '2022-09-30 21:45:38', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (45, '辅食持续时间', 'food_complementary_duration', 1, 31, 0, '', '2022-09-30 21:50:53', '2022-09-30 21:50:53', '2022-09-30 21:51:53');
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (46, '奶瓶喂养类型', 'feeding_bottle_type', 1, 31, 0, '', '2022-09-30 21:55:29', '2022-09-30 21:55:29', NULL);
INSERT INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (47, '吸奶器吸奶方式', 'suckle_type', 1, 31, 0, '', '2022-10-03 10:41:14', '2022-10-03 10:41:14', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_params` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '参数',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` tinyint DEFAULT '1' COMMENT '计划执行策略（1多次执行 2执行一次）',
  `concurrent` tinyint DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` tinyint DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` bigint unsigned DEFAULT '0' COMMENT '创建者',
  `update_by` bigint unsigned DEFAULT '0' COMMENT '更新者',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '备注信息',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_params`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, '测试任务1', '', 'DEFAULT', 'test1', '* * * * * ?', 1, 0, 1, 1, 31, '', NULL, '2021-07-16 16:01:59', NULL);
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_params`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, '测试任务2', 'hello|gfast', 'DEFAULT', 'test2', '* * * * * ?', 1, 0, 1, 1, 31, '备注', NULL, '2021-07-16 17:15:09', NULL);
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_params`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, '测试任务3', 'hello|gfast', 'DEFAULT', 'test2', '* * * * * *', 1, 0, 1, 1, 31, '备注', NULL, NULL, '2021-07-16 16:51:20');
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_params`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, '在线用户定时更新', '', 'DEFAULT', 'checkUserOnline', '5 */10 * * * ?', 1, 0, 0, 2, 1, '', NULL, '2021-07-19 08:57:24', NULL);
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_params`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, '测试', 'arg1', 'DEFAULT', 'demo1', ' */5 * * * * ? ', 1, 1, 1, 31, 31, '', '2021-07-15 15:00:15', '2021-07-16 16:47:56', '2021-07-16 16:48:00');
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_params`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, '测试', 'arg1', 'DEFAULT', 'demo1', ' */5 * * * * ? ', 2, 1, 1, 31, 31, '', '2021-07-15 22:12:15', '2021-07-16 16:47:52', '2021-07-16 16:48:00');
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_params`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, '测试', 'arg1', 'DEFAULT', 'demo1', ' */5 * * * * ? ', 2, 1, 1, 31, 31, '', '2021-07-16 08:49:43', '2021-07-16 08:59:32', '2021-07-16 16:46:51');
INSERT INTO `sys_job` (`job_id`, `job_name`, `job_params`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `update_by`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, '测试366', 'arg1', 'DEFAULT', 'demo1', ' */5 * * * * ? ', 2, 1, 1, 31, 31, '', '2021-07-16 08:50:10', '2021-07-16 08:59:26', '2021-07-16 16:46:51');
COMMIT;

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作系统',
  `status` tinyint DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '登录时间',
  `module` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '登录模块',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_model_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_model_info`;
CREATE TABLE `sys_model_info` (
  `model_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `model_category_id` int unsigned NOT NULL DEFAULT '0' COMMENT '模板分类id',
  `model_name` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '模型标识',
  `model_title` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '模型名称',
  `model_pk` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '主键字段',
  `model_order` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '默认排序字段',
  `model_sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '表单字段排序',
  `model_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列表显示字段，为空显示全部',
  `model_edit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '可编辑字段，为空则除主键外均可以编辑',
  `model_indexes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '索引字段',
  `search_list` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '高级搜索的字段',
  `create_time` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` bigint unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `model_status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `model_engine` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'MyISAM' COMMENT '数据库引擎',
  `create_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `update_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  PRIMARY KEY (`model_id`) USING BTREE,
  UNIQUE KEY `name_uni` (`model_name`) USING BTREE COMMENT '模型名唯一'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='文档模型表';

-- ----------------------------
-- Records of sys_model_info
-- ----------------------------
BEGIN;
INSERT INTO `sys_model_info` (`model_id`, `model_category_id`, `model_name`, `model_title`, `model_pk`, `model_order`, `model_sort`, `model_list`, `model_edit`, `model_indexes`, `search_list`, `create_time`, `update_time`, `model_status`, `model_engine`, `create_by`, `update_by`) VALUES (1, 5, 'house_info', '房屋信息', 'house_id', 'hi_order', 'house_id', 'house_id,belong_houses,belong_house_type,door_number', 'belong_houses,belong_house_type,door_number', 'door_number', 'belong_houses,belong_house_type,door_number', 1498101800, 1605838046, 1, 'MyISAM', 0, 1);
INSERT INTO `sys_model_info` (`model_id`, `model_category_id`, `model_name`, `model_title`, `model_pk`, `model_order`, `model_sort`, `model_list`, `model_edit`, `model_indexes`, `search_list`, `create_time`, `update_time`, `model_status`, `model_engine`, `create_by`, `update_by`) VALUES (9, 6, 'cms_news_attr', '文章模型', 'art_id', '', 'art_id', 'news_info,text_demo', 'news_content,thumbnail,news_files,news_file,news_imgs,news_title,news_info,text_demo,time_demo', '', 'news_info,text_demo', 1595316217, 1596095352, 1, 'InnoDB', 1, 31);
INSERT INTO `sys_model_info` (`model_id`, `model_category_id`, `model_name`, `model_title`, `model_pk`, `model_order`, `model_sort`, `model_list`, `model_edit`, `model_indexes`, `search_list`, `create_time`, `update_time`, `model_status`, `model_engine`, `create_by`, `update_by`) VALUES (10, 1, 'gov_work_report', '政府工作报告', 'matter_id', 'matter_id', '', 'title,content,sponsor,organizer', 'title,content,sponsor,organizer', 'matter_id', 'title', 1596528880, 1599701551, 1, 'InnoDB', 2, 31);
INSERT INTO `sys_model_info` (`model_id`, `model_category_id`, `model_name`, `model_title`, `model_pk`, `model_order`, `model_sort`, `model_list`, `model_edit`, `model_indexes`, `search_list`, `create_time`, `update_time`, `model_status`, `model_engine`, `create_by`, `update_by`) VALUES (12, 1, 'gov_work_major_project', '重大项目', 'matter_id', 'matter_id', '', 'project_no,title,content,sponsor,total_investment,annual_investment,progress_status', 'project_no,title,content,sponsor,total_investment,annual_investment,progress_status', 'matter_id', 'title', 1599702575, 1605512186, 1, 'InnoDB', 31, 1);
INSERT INTO `sys_model_info` (`model_id`, `model_category_id`, `model_name`, `model_title`, `model_pk`, `model_order`, `model_sort`, `model_list`, `model_edit`, `model_indexes`, `search_list`, `create_time`, `update_time`, `model_status`, `model_engine`, `create_by`, `update_by`) VALUES (13, 1, 'gov_work_important_documents', '重要文件办理', 'matter_id', 'matter_id', '', 'title,original_unit,document_number,receive_time,sponsor,content', 'title,original_unit,document_number,receive_time,sponsor,content', 'matter_id', 'title', 1599710390, 1599710390, 1, 'InnoDB', 31, 0);
INSERT INTO `sys_model_info` (`model_id`, `model_category_id`, `model_name`, `model_title`, `model_pk`, `model_order`, `model_sort`, `model_list`, `model_edit`, `model_indexes`, `search_list`, `create_time`, `update_time`, `model_status`, `model_engine`, `create_by`, `update_by`) VALUES (14, 1, 'gov_work_livelihood', '民生目标', 'matter_id', 'matter_id', '', 'title,type,content,sponsor,organizer', 'title,type,content,sponsor,organizer', 'matter_id', 'title', 1599721999, 1599721999, 1, 'InnoDB', 31, 0);
INSERT INTO `sys_model_info` (`model_id`, `model_category_id`, `model_name`, `model_title`, `model_pk`, `model_order`, `model_sort`, `model_list`, `model_edit`, `model_indexes`, `search_list`, `create_time`, `update_time`, `model_status`, `model_engine`, `create_by`, `update_by`) VALUES (15, 1, 'gov_work_meeting', '会议议定', 'matter_id', 'matter_id', '', 'title,content,sponsor,organizer', 'title,content,sponsor,organizer', 'matter_id', 'title', 1599722042, 1605512125, 1, 'InnoDB', 31, 1);
INSERT INTO `sys_model_info` (`model_id`, `model_category_id`, `model_name`, `model_title`, `model_pk`, `model_order`, `model_sort`, `model_list`, `model_edit`, `model_indexes`, `search_list`, `create_time`, `update_time`, `model_status`, `model_engine`, `create_by`, `update_by`) VALUES (16, 1, 'gov_work_assigned_leader', '领导交办', 'matter_id', 'matter_id', '', 'title,number,content,sponsor,organizer,instruction_time,instruction_leader', 'title,number,content,sponsor,organizer,instruction_time,instruction_leader', 'matter_id', 'title', 1599722097, 1599722097, 1, 'InnoDB', 31, 0);
INSERT INTO `sys_model_info` (`model_id`, `model_category_id`, `model_name`, `model_title`, `model_pk`, `model_order`, `model_sort`, `model_list`, `model_edit`, `model_indexes`, `search_list`, `create_time`, `update_time`, `model_status`, `model_engine`, `create_by`, `update_by`) VALUES (17, 1, 'gov_work_other', '其它任务', 'matter_id', 'matter_id', '', 'title,content,sponsor,organizer', 'title,content,sponsor,organizer', 'matter_id', 'title', 1599722127, 1599722127, 1, 'InnoDB', 31, 0);
INSERT INTO `sys_model_info` (`model_id`, `model_category_id`, `model_name`, `model_title`, `model_pk`, `model_order`, `model_sort`, `model_list`, `model_edit`, `model_indexes`, `search_list`, `create_time`, `update_time`, `model_status`, `model_engine`, `create_by`, `update_by`) VALUES (18, 1, 'gov_work_investment', '招商引资', 'matter_id', 'matter_id', '', 'project_type,title,company_name,investment_volume,paid_in_investment,content,address,project_progress,project_target,manage_leader,responsible_department,sponsor,organizer,remark', 'project_type,title,company_name,investment_volume,paid_in_investment,content,address,project_progress,project_target,manage_leader,responsible_department,sponsor,organizer,remark', '', 'title', 1611542517, 1611542540, 1, 'InnoDB', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '操作地点',
  `oper_param` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '请求参数',
  `json_result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  `created_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'ceo', '董事长', 1, '1', '', 0, 0, '2021-07-11 11:32:58', NULL, NULL);
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'se', '项目经理', 2, '1', '', 0, 0, '2021-07-12 11:01:26', NULL, NULL);
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'hr', '人力资源', 3, '1', '', 0, 0, '2021-07-12 11:01:30', NULL, NULL);
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'user', '普通员工', 4, '1', '', 0, 0, '2021-07-12 11:01:33', NULL, NULL);
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'it', 'IT部', 5, '1', '信息部', 31, 31, '2021-07-12 11:09:42', '2021-07-12 11:21:00', NULL);
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 'asd', 'aaa', 100, '0', '', 31, 0, '2021-07-12 11:21:12', '2021-07-12 11:21:12', '2021-07-12 11:24:49');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 'asda', 'ddd', 222, '0', 'asdas', 31, 31, '2021-07-12 11:21:18', '2021-07-12 11:21:27', '2021-07-12 11:24:49');
INSERT INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'dasd', 'dasd', 3444, '0', 'asdas', 31, 31, '2021-07-12 11:21:22', '2021-07-12 11:21:31', '2021-07-12 11:24:45');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `data_scope` tinyint unsigned NOT NULL DEFAULT '3' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` (`id`, `status`, `list_order`, `name`, `remark`, `data_scope`) VALUES (1, 1, 0, '超级管理员', '备注', 3);
INSERT INTO `sys_role` (`id`, `status`, `list_order`, `name`, `remark`, `data_scope`) VALUES (2, 1, 0, '普通管理员', '备注', 4);
INSERT INTO `sys_role` (`id`, `status`, `list_order`, `name`, `remark`, `data_scope`) VALUES (3, 1, 0, '站点管理员', '站点管理人员', 3);
INSERT INTO `sys_role` (`id`, `status`, `list_order`, `name`, `remark`, `data_scope`) VALUES (4, 1, 0, '初级管理员', '初级管理员', 3);
INSERT INTO `sys_role` (`id`, `status`, `list_order`, `name`, `remark`, `data_scope`) VALUES (5, 1, 0, '高级管理员', '高级管理员', 2);
INSERT INTO `sys_role` (`id`, `status`, `list_order`, `name`, `remark`, `data_scope`) VALUES (8, 1, 0, '区级管理员', '', 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (5, 103);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (5, 104);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (5, 105);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (8, 105);
INSERT INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES (8, 106);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `birthday` int NOT NULL DEFAULT '0' COMMENT '生日',
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_salt` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '加密盐',
  `user_status` tinyint unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `sex` tinyint NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户头像',
  `dept_id` bigint unsigned NOT NULL DEFAULT '0' COMMENT '部门id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `is_admin` tinyint NOT NULL DEFAULT '1' COMMENT '是否后台管理员 1 是  0   否',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '联系地址',
  `describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT ' 描述信息',
  `phone_num` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '联系电话',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `user_login` (`user_name`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  KEY `user_nickname` (`user_nickname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'admin', '13578342363', '超级管理员', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'yxh669@qq.com', 1, 'https://yxh-1301841944.cos.ap-chongqing.myqcloud.com/gfast/2021-07-19/ccwpeuqz1i2s769hua.jpeg', 101, '', 1, 'asdasfdsaf大发放打发士大夫发按时', '描述信息', '18611111111', '[::1]', '2021-07-19 14:28:38', '2021-06-22 17:58:00', '2021-07-12 22:07:44', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'yixiaohu', '13699885599', '奈斯', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'yxh@qq.com', 1, 'pub_upload/2020-11-02/c6sntzg7r96c7p9gqf.jpeg', 102, '备注', 1, '', '', '', '[::1]', '2021-03-29 21:12:43', '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'zs', '16399669855', '张三', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'zs@qq.com', 0, '', 101, '', 1, '', '', '', '[::1]', '2021-07-16 17:40:29', '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'qlgl', '13758596696', '测试c', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'qlgl@qq.com', 0, '', 102, '', 1, '', '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'test', '13845696696', '测试2', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '123@qq.com', 0, '', 101, '', 0, '', '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, '18999998889', '13755866654', '刘大大', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '1223@qq.com', 0, '', 103, '', 1, '', '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2021-07-12 22:01:23', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 'zmm', '13788566696', '张明明', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '11123@qq.com', 0, '', 104, '', 1, '', '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'lxx', '13756566696', '李小小', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '123333@qq.com', 0, '', 101, '', 1, '', '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 'xmm', '13588999969', '小秘密', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 101, '', 1, '', '', '', '', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 'cd_19', '123154564', '看金利科技', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 0, '', 1, '', '', '', '', NULL, '2021-06-22 17:58:00', '2021-07-19 16:45:59', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 'lmm', '13587754545', '刘敏敏', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'a@coc.com', 0, '', 201, '', 1, '', '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 'ldn', '13899658874', '李大牛', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'a@ll.con', 0, '', 103, '', 1, '', '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2022-03-03 12:02:57', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 'dbc', '13877555566', '大百词', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'kkj@qq.com', 0, '', 105, '', 1, '', '', '', '', NULL, '2021-06-22 17:58:00', '2022-03-03 12:03:09', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 'yxfmlbb', '15969423326', '大数据部门测试', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'yxh6691@qq.com', 0, 'pub_upload/2021-03-08/c9rmm1sewobsxrsot8.jpeg', 200, '', 1, '2222233', '1222', '13239874541', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 'wangming', '13699888855', '王明', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 0, '', 1, '', '', '', '', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 'zhk', '13699885591', '综合科', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 0, '', 1, '', '', '', '192.168.0.146', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 'demo3', '18699888855', '测试账号1', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '123132@qq.com', 0, '', 109, '', 1, '', '', '', '192.168.0.229', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 'demo', '15334455789', '测试账号', 0, '39978de67915a11e94bfe9c879b2d9a1', 'gqwLs4n95E', 1, '223@qq.com', 2, 'https://yxh-1301841944.cos.ap-chongqing.myqcloud.com/gfast/2021-07-14/ccsn83vgufh0oiyzji.jpeg', 101, '', 1, '云南省曲靖市22223', '12345', '15334455777', '[::1]', '2022-10-05 07:54:52', '2021-06-22 17:58:00', '2022-03-03 12:01:12', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 'demo100', '18699888859', '测试账号1', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 0, '', 1, '', '', '', '', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 'demo110', '18699888853', '测试账号1', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '', 0, '', 0, '', 1, '', '', '', '', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, 'yxfmlbb2', '15969423327', '研发部门测试', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '1111@qqq.com', 1, '', 103, '', 0, '', '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (35, 'wk666', '18888888888', 'wk', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '396861557@qq.com', 1, '', 100, '', 1, '', '', '', '127.0.0.1', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, 'zxd', '13699885565', '张晓东', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, 'zxk@qq.com', 1, '', 201, '666', 1, '', '', '', '', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, 'yxfmlbb3', '13513513511', '张三', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '111@qq.com', 0, '', 204, '', 0, '', '', '', '', NULL, '2021-06-22 17:58:00', '2021-06-22 17:58:00', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, 'test_user', '18888888880', 'test', 0, '542a6e44dbac171f260fc4a032cd5522', 'dlqVVBTADg', 1, '11@qq.com', 1, '', 200, '111', 0, '', '', '', '', NULL, '2021-06-22 17:58:00', '2021-07-12 22:05:29', NULL);
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (39, 'asan', '18687460555', '阿三', 0, '2354837137115700e2adf870ac113dcf', 'drdDvbtYZW', 1, '456654@qq.com', 1, '', 201, '666666', 1, '', '', '', '', NULL, '2021-07-12 17:21:43', '2021-07-12 21:13:31', '2021-07-12 22:00:44');
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (41, 'awu', '13578556546', '阿五', 0, '3b36a96afa0dfd66aa915e0816e0e9f6', '9gHRa9ho4U', 0, '132321@qq.com', 1, '', 201, 'asdasdasd', 1, '', '', '', '', NULL, '2021-07-12 17:54:31', '2021-07-12 21:46:34', '2021-07-12 21:59:56');
INSERT INTO `sys_user` (`id`, `user_name`, `mobile`, `user_nickname`, `birthday`, `user_password`, `user_salt`, `user_status`, `user_email`, `sex`, `avatar`, `dept_id`, `remark`, `is_admin`, `address`, `describe`, `phone_num`, `last_login_ip`, `last_login_time`, `created_at`, `updated_at`, `deleted_at`) VALUES (42, '', '', '微信用户', 0, '', '', 0, '', 0, '', 0, '', 0, '', '微信小程序用户', '', '', NULL, '2022-09-29 22:20:02', '2022-09-29 22:20:02', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_baby
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_baby`;
CREATE TABLE `sys_user_baby` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `baby_id` bigint NOT NULL COMMENT '宝宝ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='用户与宝宝关联表';

-- ----------------------------
-- Records of sys_user_baby
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user_bind
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_bind`;
CREATE TABLE `sys_user_bind` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL DEFAULT '0' COMMENT '第三方[0:小程序,1:公众号,2:QQ……]',
  `openid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '' COMMENT '第三方id',
  `user_id` int unsigned DEFAULT '0' COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '第三方名称',
  `avatarurl` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '第三方头像',
  `unionid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT 'QQ / 微信同一主体下 Unionid 相同',
  `created_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0' COMMENT '修改人',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted_at` datetime DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='用户第三方绑定表';

-- ----------------------------
-- Records of sys_user_bind
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` char(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT '用户标识',
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT '用户token',
  `create_time` datetime DEFAULT NULL COMMENT '登录时间',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `ip` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '登录ip',
  `explorer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '浏览器',
  `os` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作系统',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uni_token` (`token`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='用户在线状态表';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (1, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (1, 3);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (2, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (2, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (3, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (5, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (14, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (15, 4);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (16, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (22, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (22, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (31, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (34, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (35, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (35, 3);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (36, 1);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (37, 3);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (38, 2);
INSERT INTO `sys_user_post` (`user_id`, `post_id`) VALUES (38, 3);
COMMIT;

-- ----------------------------
-- Table structure for sys_web_set
-- ----------------------------
DROP TABLE IF EXISTS `sys_web_set`;
CREATE TABLE `sys_web_set` (
  `web_id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `web_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci COMMENT '站点信息',
  PRIMARY KEY (`web_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_web_set
-- ----------------------------
BEGIN;
INSERT INTO `sys_web_set` (`web_id`, `web_content`) VALUES (1, '{\"CopyrightInfo\":\"11122\",\"recordInfo\":\"111222\",\"statisticsCode\":\"11122\",\"webId\":1,\"webLogo\":\"https://yxh-1301841944.cos.ap-chongqing.myqcloud.com/gfast/2021-07-13/ccroz2q3sptczqwchk.jpg\",\"webName\":\"gfast\",\"webSite\":\"http://localhost/index#/webSet\"}');
COMMIT;

-- ----------------------------
-- Table structure for tools_gen_table
-- ----------------------------
DROP TABLE IF EXISTS `tools_gen_table`;
CREATE TABLE `tools_gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '备注',
  `overwrite` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否覆盖原有文件',
  `sort_column` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL COMMENT '排序字段名',
  `sort_type` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'asc' COMMENT '排序方式 (asc顺序 desc倒序)',
  `show_detail` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否有查看详情功能',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT COMMENT='代码生成业务表';

-- ----------------------------
-- Records of tools_gen_table
-- ----------------------------
BEGIN;
INSERT INTO `tools_gen_table` (`table_id`, `table_name`, `table_comment`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `options`, `create_time`, `update_time`, `remark`, `overwrite`, `sort_column`, `sort_type`, `show_detail`) VALUES (77, 'sys_user_bind', '三方绑定表', 'SysUserBind', 'crud', 'gfast/app/system', 'system', 'sys_user_bind', '三方绑定', 'gfast', '', '2022-09-29 10:42:33', '2022-09-29 10:45:21', '', b'0', 'id', 'asc', b'0');
INSERT INTO `tools_gen_table` (`table_id`, `table_name`, `table_comment`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `options`, `create_time`, `update_time`, `remark`, `overwrite`, `sort_column`, `sort_type`, `show_detail`) VALUES (80, 'sys_user', '用户表', 'SysUser', 'crud', 'gfast/app/system', 'system', 'sys_user', '用户', 'gfast', '', '2022-09-29 23:06:58', '2022-09-29 23:06:58', '', b'0', 'id', 'asc', b'0');
INSERT INTO `tools_gen_table` (`table_id`, `table_name`, `table_comment`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `options`, `create_time`, `update_time`, `remark`, `overwrite`, `sort_column`, `sort_type`, `show_detail`) VALUES (82, 'sys_user_baby', '用户与宝宝关联表', 'SysUserBaby', 'crud', 'gfast/app/system', 'system', 'sys_user_baby', '用户与宝宝关联', 'gfast', '', '2022-09-29 23:19:24', '2022-09-29 23:19:37', '', b'1', 'id', 'asc', b'0');
INSERT INTO `tools_gen_table` (`table_id`, `table_name`, `table_comment`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `options`, `create_time`, `update_time`, `remark`, `overwrite`, `sort_column`, `sort_type`, `show_detail`) VALUES (83, 'sys_baby', '宝宝基础信息表', 'SysBaby', 'crud', 'gfast/app/system', 'system', 'sys_baby', '宝宝基础信息', 'gfast', '', '2022-09-30 15:43:07', '2022-09-30 15:46:30', '', b'1', 'id', 'asc', b'0');
INSERT INTO `tools_gen_table` (`table_id`, `table_name`, `table_comment`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `options`, `create_time`, `update_time`, `remark`, `overwrite`, `sort_column`, `sort_type`, `show_detail`) VALUES (94, 'sys_baby_diaper', '宝宝换尿布表', 'SysBabyDiaper', 'crud', 'gfast/app/system', 'system', 'sys_baby_diaper', '宝宝换尿布', 'gfast', '', '2022-09-30 21:33:16', '2022-09-30 22:00:33', '', b'0', 'id', 'asc', b'0');
INSERT INTO `tools_gen_table` (`table_id`, `table_name`, `table_comment`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `options`, `create_time`, `update_time`, `remark`, `overwrite`, `sort_column`, `sort_type`, `show_detail`) VALUES (95, 'sys_baby_body', '宝宝身体表', 'SysBabyBody', 'crud', 'gfast/app/system', 'system', 'sys_baby_body', '宝宝身体', 'gfast', '', '2022-09-30 21:33:19', '2022-09-30 21:59:03', '', b'0', 'id', 'asc', b'0');
INSERT INTO `tools_gen_table` (`table_id`, `table_name`, `table_comment`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `options`, `create_time`, `update_time`, `remark`, `overwrite`, `sort_column`, `sort_type`, `show_detail`) VALUES (97, 'sys_baby_food_feeding_bottle', '宝宝奶瓶喂养表', 'SysBabyFoodFeedingBottle', 'crud', 'gfast/app/system', 'system', 'sys_baby_food_feeding_bottle', '宝宝奶瓶喂养', 'gfast', '', '2022-09-30 21:33:27', '2022-09-30 21:56:52', '', b'0', 'id', 'asc', b'0');
INSERT INTO `tools_gen_table` (`table_id`, `table_name`, `table_comment`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `options`, `create_time`, `update_time`, `remark`, `overwrite`, `sort_column`, `sort_type`, `show_detail`) VALUES (99, 'sys_baby_food_complementary', '宝宝辅食表', 'SysBabyFoodComplementary', 'crud', 'gfast/app/system', 'system', 'sys_baby_food_complementary', '宝宝辅食', 'gfast', '', '2022-09-30 21:44:50', '2022-09-30 21:52:26', '', b'1', 'id', 'asc', b'0');
INSERT INTO `tools_gen_table` (`table_id`, `table_name`, `table_comment`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `options`, `create_time`, `update_time`, `remark`, `overwrite`, `sort_column`, `sort_type`, `show_detail`) VALUES (102, 'sys_baby_food_breast_pump', '宝宝吸奶器表', 'SysBabyFoodBreastPump', 'crud', 'gfast/app/system', 'system', 'sys_baby_food_breast_pump', '宝宝吸奶器', 'gfast', '', '2022-10-03 10:41:52', '2022-10-03 10:42:39', '', b'1', 'id', 'asc', b'0');
INSERT INTO `tools_gen_table` (`table_id`, `table_name`, `table_comment`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `options`, `create_time`, `update_time`, `remark`, `overwrite`, `sort_column`, `sort_type`, `show_detail`) VALUES (103, 'sys_baby_food_feeding_mother', '宝宝母乳亲喂表', 'SysBabyFoodFeedingMother', 'crud', 'gfast/app/system', 'system', 'sys_baby_food_feeding_mother', '宝宝母乳亲喂', 'gfast', '', '2022-10-03 21:33:32', '2022-10-03 21:34:15', '', b'1', 'id', 'asc', b'0');
COMMIT;

-- ----------------------------
-- Table structure for tools_gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `tools_gen_table_column`;
CREATE TABLE `tools_gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列类型',
  `go_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Go类型',
  `go_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Go字段名',
  `html_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'html字段名',
  `is_pk` bit(1) DEFAULT b'0' COMMENT '是否主键（1是）',
  `is_increment` bit(1) DEFAULT b'0' COMMENT '是否自增（1是）',
  `is_required` bit(1) DEFAULT b'0' COMMENT '是否必填（1是）',
  `is_insert` bit(1) DEFAULT b'0' COMMENT '是否为插入字段（1是）',
  `is_edit` bit(1) DEFAULT b'0' COMMENT '是否编辑字段（1是）',
  `is_list` bit(1) DEFAULT b'1' COMMENT '是否列表字段（1是）',
  `is_detail` bit(1) DEFAULT b'1' COMMENT '是否详情字段',
  `is_query` bit(1) DEFAULT b'0' COMMENT '是否查询字段（1是）',
  `sort_order_edit` int DEFAULT '999' COMMENT '插入编辑显示顺序',
  `sort_order_list` int DEFAULT '999' COMMENT '列表显示顺序',
  `sort_order_detail` int DEFAULT '999' COMMENT '详情显示顺序',
  `sort_order_query` int DEFAULT '999' COMMENT '查询显示顺序',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `link_table_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联表名',
  `link_table_class` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联表类名',
  `link_table_module_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联表模块名',
  `link_table_business_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联表业务名',
  `link_table_package` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联表包名',
  `link_label_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联表键名',
  `link_label_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '关联表字段值',
  `col_span` int DEFAULT '12' COMMENT '详情页占列数',
  `row_span` int DEFAULT '1' COMMENT '详情页占行数',
  `is_row_start` bit(1) DEFAULT b'0' COMMENT '详情页为行首',
  `min_width` int DEFAULT '100' COMMENT '表格最小宽度',
  `is_fixed` bit(1) DEFAULT b'0' COMMENT '是否表格列左固定',
  `is_overflow_tooltip` bit(1) DEFAULT b'0' COMMENT '是否过长自动隐藏',
  `is_cascade` bit(1) DEFAULT b'0' COMMENT '是否级联查询',
  `parent_column_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '上级字段名',
  `cascade_column_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '级联查询字段',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of tools_gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (791, 77, 'id', 'ID', 'int unsigned', 'uint', 'Id', 'id', b'1', b'1', b'1', b'0', b'0', b'1', b'1', b'1', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (792, 77, 'type', '来源', 'int', 'int', 'Type', 'type', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'EQ', 'select', 'open_type', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (793, 77, 'openid', 'openid', 'varchar(255)', 'string', 'Openid', 'openid', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 3, 3, 3, 3, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (794, 77, 'user_id', '用户id', 'int unsigned', 'uint', 'UserId', 'userId', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 4, 4, 4, 4, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (795, 77, 'nickname', '昵称', 'varchar(50)', 'string', 'Nickname', 'nickname', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 5, 5, 5, 5, 'LIKE', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (796, 77, 'avatarurl', '头像', 'varchar(255)', 'string', 'Avatarurl', 'avatarurl', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'0', 6, 6, 6, 6, 'EQ', 'imagefile', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (797, 77, 'unionid', 'unionid', 'varchar(255)', 'string', 'Unionid', 'unionid', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 7, 7, 7, 7, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (798, 77, 'created_by', '创建人', 'bigint unsigned', 'uint64', 'CreatedBy', 'createdBy', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 8, 8, 8, 8, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (799, 77, 'updated_by', '修改人', 'bigint unsigned', 'uint64', 'UpdatedBy', 'updatedBy', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 9, 9, 9, 9, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (800, 77, 'created_at', '创建时间', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 10, 10, 10, 10, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (801, 77, 'updated_at', '修改时间', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 11, 11, 11, 11, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (802, 77, 'deleted_at', '删除时间', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 12, 12, 12, 12, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (815, 80, 'id', '', 'bigint unsigned', 'uint64', 'Id', 'id', b'1', b'1', b'1', b'0', b'0', b'1', b'1', b'1', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (816, 80, 'user_name', '用户名', 'varchar(60)', 'string', 'UserName', 'userName', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'LIKE', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (817, 80, 'mobile', '中国手机不带国家代码，国际手机号格式为：国家代码-手机号', 'varchar(20)', 'string', 'Mobile', 'mobile', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 3, 3, 3, 3, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (818, 80, 'user_nickname', '用户昵称', 'varchar(50)', 'string', 'UserNickname', 'userNickname', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 4, 4, 4, 4, 'LIKE', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (819, 80, 'birthday', '生日', 'int', 'int', 'Birthday', 'birthday', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 5, 5, 5, 5, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (820, 80, 'user_password', '登录密码;cmf_password加密', 'varchar(255)', 'string', 'UserPassword', 'userPassword', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 6, 6, 6, 6, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (821, 80, 'user_salt', '加密盐', 'char(10)', 'string', 'UserSalt', 'userSalt', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 7, 7, 7, 7, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (822, 80, 'user_status', '用户状态;0:禁用,1:正常,2:未验证', 'tinyint unsigned', 'uint', 'UserStatus', 'userStatus', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 8, 8, 8, 8, 'EQ', 'radio', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (823, 80, 'user_email', '用户登录邮箱', 'varchar(100)', 'string', 'UserEmail', 'userEmail', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 9, 9, 9, 9, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (824, 80, 'sex', '性别;0:保密,1:男,2:女', 'tinyint', 'int', 'Sex', 'sex', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 10, 10, 10, 10, 'EQ', 'select', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (825, 80, 'avatar', '用户头像', 'varchar(255)', 'string', 'Avatar', 'avatar', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 11, 11, 11, 11, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (826, 80, 'dept_id', '部门id', 'bigint unsigned', 'uint64', 'DeptId', 'deptId', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 12, 12, 12, 12, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (827, 80, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'0', 13, 13, 13, 13, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (828, 80, 'is_admin', '是否后台管理员 1 是  0   否', 'tinyint', 'int', 'IsAdmin', 'isAdmin', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 14, 14, 14, 14, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (829, 80, 'address', '联系地址', 'varchar(255)', 'string', 'Address', 'address', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 15, 15, 15, 15, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (830, 80, 'describe', ' 描述信息', 'varchar(255)', 'string', 'Describe', 'describe', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 16, 16, 16, 16, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (831, 80, 'phone_num', '联系电话', 'varchar(20)', 'string', 'PhoneNum', 'phoneNum', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 17, 17, 17, 17, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (832, 80, 'last_login_ip', '最后登录ip', 'varchar(15)', 'string', 'LastLoginIp', 'lastLoginIp', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 18, 18, 18, 18, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (833, 80, 'last_login_time', '最后登录时间', 'datetime', 'Time', 'LastLoginTime', 'lastLoginTime', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 19, 19, 19, 19, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (834, 80, 'created_at', '创建时间', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 20, 20, 20, 20, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (835, 80, 'updated_at', '更新时间', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 21, 21, 21, 21, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (836, 80, 'deleted_at', '删除时间', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 22, 22, 22, 22, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (840, 82, 'id', 'ID', 'bigint unsigned', 'uint64', 'Id', 'id', b'1', b'1', b'1', b'0', b'0', b'1', b'1', b'1', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (841, 82, 'user_id', '用户ID', 'bigint', 'int64', 'UserId', 'userId', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (842, 82, 'baby_id', '宝宝ID', 'bigint', 'int64', 'BabyId', 'babyId', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 3, 3, 3, 3, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (843, 83, 'id', 'ID', 'int unsigned', 'uint', 'Id', 'id', b'1', b'1', b'1', b'0', b'0', b'1', b'1', b'1', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (844, 83, 'nickname', '姓名', 'varchar(50)', 'string', 'Nickname', 'nickname', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'LIKE', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (845, 83, 'sex', '性别', 'tinyint', 'int', 'Sex', 'sex', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 3, 3, 3, 3, 'EQ', 'select', 'sys_user_sex', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (846, 83, 'avatar', '头像', 'varchar(255)', 'string', 'Avatar', 'avatar', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'0', 4, 4, 4, 4, 'EQ', 'imagefile', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (847, 83, 'birthday', '生日', 'datetime', 'Time', 'Birthday', 'birthday', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 5, 5, 5, 5, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (848, 83, 'created_by', '创建人', 'bigint unsigned', 'uint64', 'CreatedBy', 'createdBy', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 6, 6, 6, 6, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (849, 83, 'updated_by', '修改人', 'bigint unsigned', 'uint64', 'UpdatedBy', 'updatedBy', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 7, 7, 7, 7, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (850, 83, 'created_at', '创建时间', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 8, 8, 8, 8, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (851, 83, 'updated_at', '修改时间', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 9, 9, 9, 9, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (852, 83, 'deleted_at', '删除时间', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 10, 10, 10, 10, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (981, 94, 'id', 'ID', 'int unsigned', 'uint', 'Id', 'id', b'1', b'1', b'1', b'0', b'0', b'1', b'1', b'1', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (982, 94, 'baby_id', '宝宝', 'bigint', 'int64', 'BabyId', 'babyId', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'EQ', 'input', '', 'sys_baby', 'SysBaby', 'system', 'sys_baby', 'gfast/app/system', 'id', 'nickname', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (983, 94, 'start_at', '更换时间', 'datetime', 'Time', 'StartAt', 'startAt', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 3, 3, 3, 3, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (984, 94, 'type', '类型', 'tinyint', 'int', 'Type', 'type', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 4, 4, 4, 4, 'EQ', 'select', 'diaper_type', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (985, 94, 'weight', '尿布重量', 'tinyint', 'int', 'Weight', 'weight', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 5, 5, 5, 5, 'EQ', 'select', 'diaper_weight', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (986, 94, 'status', '便便状态', 'tinyint', 'int', 'Status', 'status', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 6, 6, 6, 6, 'EQ', 'select', 'excrement_status', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (987, 94, 'colour', '便便颜色', 'tinyint', 'int', 'Colour', 'colour', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 7, 7, 7, 7, 'EQ', 'select', 'excrement_colour', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (988, 94, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'0', 8, 8, 8, 8, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (989, 94, 'created_by', '创建人', 'bigint unsigned', 'uint64', 'CreatedBy', 'createdBy', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 9, 9, 9, 9, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (990, 94, 'updated_by', '修改人', 'bigint unsigned', 'uint64', 'UpdatedBy', 'updatedBy', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 10, 10, 10, 10, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (991, 94, 'created_at', '创建时间', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 11, 11, 11, 11, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (992, 94, 'updated_at', '修改时间', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 12, 12, 12, 12, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (993, 94, 'deleted_at', '删除时间', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 13, 13, 13, 13, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (994, 95, 'id', 'ID', 'int unsigned', 'uint', 'Id', 'id', b'1', b'1', b'1', b'0', b'0', b'1', b'1', b'1', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (995, 95, 'baby_id', '宝宝', 'bigint', 'int64', 'BabyId', 'babyId', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'EQ', 'input', '', 'sys_baby', 'SysBaby', 'system', 'sys_baby', 'gfast/app/system', 'id', 'nickname', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (996, 95, 'height', '身高', 'int', 'int', 'Height', 'height', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 3, 3, 3, 3, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (997, 95, 'weight', '体重', 'int', 'int', 'Weight', 'weight', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 4, 4, 4, 4, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (998, 95, 'hc', '头围', 'int', 'int', 'Hc', 'hc', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 5, 5, 5, 5, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (999, 95, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'0', 6, 6, 6, 6, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1000, 95, 'created_by', '创建人', 'bigint unsigned', 'uint64', 'CreatedBy', 'createdBy', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 7, 7, 7, 7, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1001, 95, 'updated_by', '修改人', 'bigint unsigned', 'uint64', 'UpdatedBy', 'updatedBy', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 8, 8, 8, 8, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1002, 95, 'created_at', '创建时间', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 9, 9, 9, 9, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1003, 95, 'updated_at', '修改时间', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 10, 10, 10, 10, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1004, 95, 'deleted_at', '删除时间', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 11, 11, 11, 11, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1017, 97, 'id', 'ID', 'int', 'int', 'Id', 'id', b'1', b'1', b'1', b'0', b'0', b'1', b'1', b'1', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1018, 97, 'baby_id', '宝宝', 'bigint', 'int64', 'BabyId', 'babyId', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'EQ', 'input', '', 'sys_baby', 'SysBaby', 'system', 'sys_baby', 'gfast/app/system', 'id', 'nickname', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1019, 97, 'start_at', '开始时间', 'datetime', 'Time', 'StartAt', 'startAt', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 3, 3, 3, 3, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1020, 97, 'appetite', '总量', 'tinyint', 'int', 'Appetite', 'appetite', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 4, 4, 4, 4, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1021, 97, 'type', '类型', 'tinyint', 'int', 'Type', 'type', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 5, 5, 5, 5, 'EQ', 'select', 'feeding_bottle_type', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1022, 97, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'0', 6, 6, 6, 6, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1023, 97, 'created_by', '创建人', 'bigint unsigned', 'uint64', 'CreatedBy', 'createdBy', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 7, 7, 7, 7, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1024, 97, 'updated_by', '修改人', 'bigint unsigned', 'uint64', 'UpdatedBy', 'updatedBy', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 8, 8, 8, 8, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1025, 97, 'created_at', '创建时间', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 9, 9, 9, 9, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1026, 97, 'updated_at', '修改时间', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 10, 10, 10, 10, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1027, 97, 'deleted_at', '删除时间', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 11, 11, 11, 11, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1036, 99, 'id', 'ID', 'int unsigned', 'uint', 'Id', 'id', b'1', b'1', b'1', b'0', b'0', b'1', b'1', b'1', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1037, 99, 'baby_id', '宝宝', 'bigint', 'int64', 'BabyId', 'babyId', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'EQ', 'input', '', 'sys_baby', 'SysBaby', 'system', 'sys_baby', 'gfast/app/system', 'id', 'nickname', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1038, 99, 'start_at', '开始时间', 'datetime', 'Time', 'StartAt', 'startAt', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 3, 3, 3, 3, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1039, 99, 'type', '辅食类型', 'bigint', 'int64', 'Type', 'type', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 4, 4, 4, 4, 'EQ', 'select', 'food_complementary_type', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1040, 99, 'character', '性状', 'tinyint', 'int', 'Character', 'character', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 5, 5, 5, 5, 'EQ', 'select', 'food_complementary_character', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1041, 99, 'appetite', '食量', 'tinyint', 'int', 'Appetite', 'appetite', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 6, 6, 6, 6, 'EQ', 'select', 'food_complementary_appetite', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1042, 99, 'duration', '持续时间', 'tinyint', 'int', 'Duration', 'duration', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 7, 7, 7, 7, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1043, 99, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'0', 8, 8, 8, 8, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1044, 99, 'created_by', '创建人', 'bigint unsigned', 'uint64', 'CreatedBy', 'createdBy', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 9, 9, 9, 9, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1045, 99, 'updated_by', '修改人', 'bigint unsigned', 'uint64', 'UpdatedBy', 'updatedBy', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 10, 10, 10, 10, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1046, 99, 'created_at', '创建时间', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 11, 11, 11, 11, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1047, 99, 'updated_at', '修改时间', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 12, 12, 12, 12, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1048, 99, 'deleted_at', '删除时间', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 13, 13, 13, 13, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1077, 102, 'id', 'ID', 'int unsigned', 'uint', 'Id', 'id', b'1', b'1', b'1', b'0', b'0', b'1', b'1', b'1', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1078, 102, 'baby_id', '宝宝', 'bigint', 'int64', 'BabyId', 'babyId', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'EQ', 'input', '', 'sys_baby', 'SysBaby', 'system', 'sys_baby', 'gfast/app/system', 'id', 'nickname', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1079, 102, 'start_at', '开始时间', 'datetime', 'Time', 'StartAt', 'startAt', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 3, 3, 3, 3, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1080, 102, 'appetite_left', '左侧量', 'tinyint', 'int', 'AppetiteLeft', 'appetiteLeft', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 4, 4, 4, 4, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1081, 102, 'appetite_right', '右侧量', 'tinyint', 'int', 'AppetiteRight', 'appetiteRight', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 5, 5, 5, 5, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1082, 102, 'duration_left', '左侧时长', 'tinyint', 'int', 'DurationLeft', 'durationLeft', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 6, 6, 6, 6, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1083, 102, 'duration_right', '右侧时长', 'tinyint', 'int', 'DurationRight', 'durationRight', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 7, 7, 7, 7, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1084, 102, 'duration_type', '吸奶方式', 'tinyint(1)', 'int', 'DurationType', 'durationType', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 8, 8, 8, 8, 'EQ', 'select', 'suckle_type', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1085, 102, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'0', 9, 9, 9, 9, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1086, 102, 'created_by', '创建人', 'bigint unsigned', 'uint64', 'CreatedBy', 'createdBy', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 10, 10, 10, 10, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1087, 102, 'updated_by', '修改人', 'bigint unsigned', 'uint64', 'UpdatedBy', 'updatedBy', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 11, 11, 11, 11, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1088, 102, 'created_at', '创建时间', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 12, 12, 12, 12, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1089, 102, 'updated_at', '修改时间', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 13, 13, 13, 13, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1090, 102, 'deleted_at', '删除时间', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 14, 14, 14, 14, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1091, 103, 'id', 'ID', 'int unsigned', 'uint', 'Id', 'id', b'1', b'1', b'1', b'0', b'0', b'1', b'1', b'1', 1, 1, 1, 1, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1092, 103, 'baby_id', '宝宝', 'bigint', 'int64', 'BabyId', 'babyId', b'0', b'0', b'1', b'1', b'1', b'1', b'1', b'1', 2, 2, 2, 2, 'EQ', 'input', '', 'sys_baby', 'SysBaby', 'system', 'sys_baby', 'gfast/app/system', 'id', 'nickname', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1093, 103, 'start_at', '开始时间', 'datetime', 'Time', 'StartAt', 'startAt', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 3, 3, 3, 3, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1094, 103, 'duration_left', '左侧时长', 'tinyint', 'int', 'DurationLeft', 'durationLeft', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 4, 4, 4, 4, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1095, 103, 'duration_right', '右侧时长', 'tinyint', 'int', 'DurationRight', 'durationRight', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'1', 5, 5, 5, 5, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1096, 103, 'remark', '备注', 'varchar(255)', 'string', 'Remark', 'remark', b'0', b'0', b'0', b'1', b'1', b'1', b'1', b'0', 6, 6, 6, 6, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1097, 103, 'created_by', '创建人', 'bigint unsigned', 'uint64', 'CreatedBy', 'createdBy', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 7, 7, 7, 7, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1098, 103, 'updated_by', '修改人', 'bigint unsigned', 'uint64', 'UpdatedBy', 'updatedBy', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 8, 8, 8, 8, 'EQ', 'input', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1099, 103, 'created_at', '创建时间', 'datetime', 'Time', 'CreatedAt', 'createdAt', b'0', b'0', b'0', b'0', b'0', b'1', b'1', b'1', 9, 9, 9, 9, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1100, 103, 'updated_at', '修改时间', 'datetime', 'Time', 'UpdatedAt', 'updatedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 10, 10, 10, 10, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
INSERT INTO `tools_gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `go_type`, `go_field`, `html_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_detail`, `is_query`, `sort_order_edit`, `sort_order_list`, `sort_order_detail`, `sort_order_query`, `query_type`, `html_type`, `dict_type`, `link_table_name`, `link_table_class`, `link_table_module_name`, `link_table_business_name`, `link_table_package`, `link_label_id`, `link_label_name`, `col_span`, `row_span`, `is_row_start`, `min_width`, `is_fixed`, `is_overflow_tooltip`, `is_cascade`, `parent_column_name`, `cascade_column_name`) VALUES (1101, 103, 'deleted_at', '删除时间', 'datetime', 'Time', 'DeletedAt', 'deletedAt', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', 11, 11, 11, 11, 'EQ', 'datetime', '', '', '', '', '', '', '', '', 12, 1, b'0', 100, b'0', b'0', b'0', '', '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
