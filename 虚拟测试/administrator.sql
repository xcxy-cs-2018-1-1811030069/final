/*
 Navicat MySQL Data Transfer

 Source Server         : aa
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : cc

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 27/04/2021 16:46:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES (0, 'LVN', '******');
INSERT INTO `administrator` VALUES (1, '大一', '******');
INSERT INTO `administrator` VALUES (2, '大二', '******');
INSERT INTO `administrator` VALUES (3, 'FHZ', '******');
INSERT INTO `administrator` VALUES (4, 'CGJ', '******');
INSERT INTO `administrator` VALUES (5, 'GJY', '******');
INSERT INTO `administrator` VALUES (6, 'IHF', '******');
INSERT INTO `administrator` VALUES (7, 'BRC', '******');
INSERT INTO `administrator` VALUES (8, 'UWL', '******');
INSERT INTO `administrator` VALUES (9, 'GVS', '******');
INSERT INTO `administrator` VALUES (10, 'JGC', '******');
INSERT INTO `administrator` VALUES (11, 'QUN', '******');
INSERT INTO `administrator` VALUES (12, 'MKX', '******');
INSERT INTO `administrator` VALUES (13, 'WVJ', '******');
INSERT INTO `administrator` VALUES (14, 'XPJ', '******');
INSERT INTO `administrator` VALUES (15, 'JUZ', '******');
INSERT INTO `administrator` VALUES (16, 'HSC', '******');
INSERT INTO `administrator` VALUES (17, 'YDQ', '******');
INSERT INTO `administrator` VALUES (18, 'RCD', '******');
INSERT INTO `administrator` VALUES (19, 'MLX', '******');
INSERT INTO `administrator` VALUES (20, 'TLR', '******');
INSERT INTO `administrator` VALUES (21, 'RCL', '******');
INSERT INTO `administrator` VALUES (22, 'FQP', '******');
INSERT INTO `administrator` VALUES (23, 'DIX', '******');
INSERT INTO `administrator` VALUES (24, 'LYI', '******');
INSERT INTO `administrator` VALUES (25, 'GGA', '******');
INSERT INTO `administrator` VALUES (26, 'TDU', '******');
INSERT INTO `administrator` VALUES (27, 'TAF', '******');
INSERT INTO `administrator` VALUES (28, 'GEB', '******');
INSERT INTO `administrator` VALUES (29, 'XVQ', '******');
INSERT INTO `administrator` VALUES (30, 'HOW', '******');
INSERT INTO `administrator` VALUES (31, 'WGU', '******');
INSERT INTO `administrator` VALUES (32, 'THD', '******');
INSERT INTO `administrator` VALUES (33, 'QVW', '******');
INSERT INTO `administrator` VALUES (34, 'SIG', '******');
INSERT INTO `administrator` VALUES (35, 'VUO', '******');
INSERT INTO `administrator` VALUES (36, 'QVY', '******');
INSERT INTO `administrator` VALUES (37, 'BHC', '******');
INSERT INTO `administrator` VALUES (38, 'KHK', '******');
INSERT INTO `administrator` VALUES (39, 'IQH', '******');
INSERT INTO `administrator` VALUES (40, 'GKN', '******');
INSERT INTO `administrator` VALUES (41, 'ZTY', '******');
INSERT INTO `administrator` VALUES (42, 'KHJ', '******');
INSERT INTO `administrator` VALUES (43, 'PVI', '******');
INSERT INTO `administrator` VALUES (44, 'SCF', '******');
INSERT INTO `administrator` VALUES (45, 'VZU', '******');
INSERT INTO `administrator` VALUES (46, 'KNE', '******');
INSERT INTO `administrator` VALUES (47, 'JGM', '******');
INSERT INTO `administrator` VALUES (48, 'NQY', '******');
INSERT INTO `administrator` VALUES (49, 'PZI', '******');
INSERT INTO `administrator` VALUES (50, 'WAX', '******');
INSERT INTO `administrator` VALUES (51, 'FPB', '******');
INSERT INTO `administrator` VALUES (52, 'XOQ', '******');
INSERT INTO `administrator` VALUES (53, 'LMY', '******');
INSERT INTO `administrator` VALUES (54, 'HTJ', '******');
INSERT INTO `administrator` VALUES (55, 'LKE', '******');
INSERT INTO `administrator` VALUES (56, 'IVV', '******');
INSERT INTO `administrator` VALUES (57, 'LSX', '******');
INSERT INTO `administrator` VALUES (58, 'FIN', '******');
INSERT INTO `administrator` VALUES (59, 'YPT', '******');
INSERT INTO `administrator` VALUES (60, 'WLR', '******');
INSERT INTO `administrator` VALUES (61, 'OUY', '******');
INSERT INTO `administrator` VALUES (62, 'VNZ', '******');
INSERT INTO `administrator` VALUES (63, 'ZIF', '******');
INSERT INTO `administrator` VALUES (64, 'VOX', '******');
INSERT INTO `administrator` VALUES (65, 'IOH', '******');
INSERT INTO `administrator` VALUES (66, 'SCG', '******');
INSERT INTO `administrator` VALUES (67, 'JSO', '******');
INSERT INTO `administrator` VALUES (68, 'SCB', '******');
INSERT INTO `administrator` VALUES (69, 'FHK', '******');
INSERT INTO `administrator` VALUES (70, 'EDM', '******');
INSERT INTO `administrator` VALUES (71, 'QWX', '******');
INSERT INTO `administrator` VALUES (72, 'HIU', '******');
INSERT INTO `administrator` VALUES (73, 'CEE', '******');
INSERT INTO `administrator` VALUES (74, 'EFA', '******');
INSERT INTO `administrator` VALUES (75, 'TYB', '******');
INSERT INTO `administrator` VALUES (76, 'LAS', '******');
INSERT INTO `administrator` VALUES (77, 'KRJ', '******');
INSERT INTO `administrator` VALUES (78, 'HLK', '******');
INSERT INTO `administrator` VALUES (79, 'MHL', '******');
INSERT INTO `administrator` VALUES (80, 'WST', '******');
INSERT INTO `administrator` VALUES (81, 'QWB', '******');
INSERT INTO `administrator` VALUES (82, 'JQH', '******');
INSERT INTO `administrator` VALUES (83, 'OPL', '******');
INSERT INTO `administrator` VALUES (84, 'WMT', '******');
INSERT INTO `administrator` VALUES (85, 'IPX', '******');
INSERT INTO `administrator` VALUES (86, 'UFJ', '******');
INSERT INTO `administrator` VALUES (87, 'KXE', '******');
INSERT INTO `administrator` VALUES (88, 'YGK', '******');
INSERT INTO `administrator` VALUES (89, 'SYK', '******');
INSERT INTO `administrator` VALUES (90, 'QVR', '******');
INSERT INTO `administrator` VALUES (91, 'GIF', '******');
INSERT INTO `administrator` VALUES (92, 'MFU', '******');
INSERT INTO `administrator` VALUES (93, 'KCG', '******');
INSERT INTO `administrator` VALUES (94, 'XOL', '******');
INSERT INTO `administrator` VALUES (95, 'RGN', '******');
INSERT INTO `administrator` VALUES (96, 'KKF', '******');
INSERT INTO `administrator` VALUES (97, 'CKR', '******');
INSERT INTO `administrator` VALUES (98, 'SWR', '******');
INSERT INTO `administrator` VALUES (99, 'WVH', '******');
INSERT INTO `administrator` VALUES (100, 'JHG', '******');

SET FOREIGN_KEY_CHECKS = 1;
