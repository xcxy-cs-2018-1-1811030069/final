/*
 Navicat MySQL Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : exam

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 27/04/2021 17:37:18
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
INSERT INTO `administrator` VALUES (1, '大一', '******');
INSERT INTO `administrator` VALUES (2, '大二', '******');

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` int(11) NOT NULL,
  `examid` int(11) NULL DEFAULT NULL,
  `1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `kaoshiid`(`examid`) USING BTREE,
  CONSTRAINT `kaoshiid` FOREIGN KEY (`examid`) REFERENCES `exam` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (1, 1, 'A', 'D', 'C');
INSERT INTO `answer` VALUES (2, 2, 'C', 'A', 'A');
INSERT INTO `answer` VALUES (3, 3, 'B', 'B', 'C');

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `id` int(11) NOT NULL,
  `classname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of class
-- ----------------------------
INSERT INTO `class` VALUES (1, '数学');
INSERT INTO `class` VALUES (2, '英语');
INSERT INTO `class` VALUES (3, '语文');

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam`  (
  `id` int(11) NOT NULL,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stucid` int(11) NULL DEFAULT NULL,
  `questionid` int(11) NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `stucid`(`stucid`) USING BTREE,
  INDEX `taotiid`(`questionid`) USING BTREE,
  CONSTRAINT `stucid` FOREIGN KEY (`stucid`) REFERENCES `stuclass` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `taotiid` FOREIGN KEY (`questionid`) REFERENCES `problemset` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES (1, '语文测试', 1, 2, '2021-04-27 08:45:06');
INSERT INTO `exam` VALUES (2, '英语测试', 2, 2, '2021-04-27 08:45:11');
INSERT INTO `exam` VALUES (3, '数学测试', 3, 1, '2021-04-27 08:45:37');

-- ----------------------------
-- Table structure for problemset
-- ----------------------------
DROP TABLE IF EXISTS `problemset`;
CREATE TABLE `problemset`  (
  `id` int(11) NOT NULL,
  `1qid` int(11) NULL DEFAULT NULL,
  `2qid` int(11) NULL DEFAULT NULL,
  `3qid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `1id`(`1qid`) USING BTREE,
  INDEX `2id`(`2qid`) USING BTREE,
  INDEX `3id`(`3qid`) USING BTREE,
  CONSTRAINT `1id` FOREIGN KEY (`1qid`) REFERENCES `questionbank` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `2id` FOREIGN KEY (`2qid`) REFERENCES `questionbank` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `3id` FOREIGN KEY (`3qid`) REFERENCES `questionbank` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of problemset
-- ----------------------------
INSERT INTO `problemset` VALUES (1, 1, 3, 5);
INSERT INTO `problemset` VALUES (2, 3, 4, 2);
INSERT INTO `problemset` VALUES (3, 4, 5, 1);

-- ----------------------------
-- Table structure for questionbank
-- ----------------------------
DROP TABLE IF EXISTS `questionbank`;
CREATE TABLE `questionbank`  (
  `id` int(11) NOT NULL,
  `题目` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `选项` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `答案` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of questionbank
-- ----------------------------
INSERT INTO `questionbank` VALUES (1, 'XXX', 'XXX', 'A');
INSERT INTO `questionbank` VALUES (2, 'XXX', 'XXX', ' B');
INSERT INTO `questionbank` VALUES (3, 'XXX', 'XXX', 'C');
INSERT INTO `questionbank` VALUES (4, 'XXX', 'XXX', 'A');
INSERT INTO `questionbank` VALUES (5, 'XXX', 'XXX', 'D');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '老师');
INSERT INTO `role` VALUES (2, '学生');
INSERT INTO `role` VALUES (3, '管理员');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answerid` int(11) NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `answerid`(`answerid`) USING BTREE,
  CONSTRAINT `answerid` FOREIGN KEY (`answerid`) REFERENCES `answer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES (1, 'XXX', 1, '60');
INSERT INTO `score` VALUES (2, 'XXX', 2, '69');
INSERT INTO `score` VALUES (3, 'XXX', 3, '88');

-- ----------------------------
-- Table structure for stuclass
-- ----------------------------
DROP TABLE IF EXISTS `stuclass`;
CREATE TABLE `stuclass`  (
  `id` int(11) NOT NULL,
  `studentid` int(11) NULL DEFAULT NULL,
  `teacid` int(11) NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teacid`(`teacid`) USING BTREE,
  INDEX `studentid`(`studentid`) USING BTREE,
  CONSTRAINT `studentid` FOREIGN KEY (`studentid`) REFERENCES `student` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `teacid` FOREIGN KEY (`teacid`) REFERENCES `teaclass` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of stuclass
-- ----------------------------
INSERT INTO `stuclass` VALUES (1, 1, 1, '2021-04-27 08:39:40');
INSERT INTO `stuclass` VALUES (2, 2, 1, '2021-04-27 08:38:34');
INSERT INTO `stuclass` VALUES (3, 3, 2, '2021-04-27 08:40:00');
INSERT INTO `stuclass` VALUES (4, 4, 3, '2021-04-27 08:40:13');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardNo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '一一', '女', 18, '******', 11);
INSERT INTO `student` VALUES (2, '二二', '女', 19, '******', 22);
INSERT INTO `student` VALUES (3, '三三', '男', 18, '******', 33);
INSERT INTO `student` VALUES (4, '四四', '男', 17, '******', 44);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '小一', '女', '******', 34, '11');
INSERT INTO `teacher` VALUES (2, '小二', '男', '******', 36, '22');
INSERT INTO `teacher` VALUES (3, '小三', '女', '******', 55, '33');
INSERT INTO `teacher` VALUES (4, '小四', '男', '******', 45, '44');

-- ----------------------------
-- Table structure for teaclass
-- ----------------------------
DROP TABLE IF EXISTS `teaclass`;
CREATE TABLE `teaclass`  (
  `id` int(11) NOT NULL,
  `teaid` int(11) NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `classid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teaid`(`teaid`) USING BTREE,
  INDEX `classid`(`classid`) USING BTREE,
  CONSTRAINT `classid` FOREIGN KEY (`classid`) REFERENCES `class` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `teaid` FOREIGN KEY (`teaid`) REFERENCES `teacher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teaclass
-- ----------------------------
INSERT INTO `teaclass` VALUES (1, 1, '2021-04-27 08:36:08', 2);
INSERT INTO `teaclass` VALUES (2, 1, '2021-04-28 08:36:30', 1);
INSERT INTO `teaclass` VALUES (3, 3, '2021-04-29 08:36:54', 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roleid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleid`(`roleid`) USING BTREE,
  CONSTRAINT `roleid` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '一一', '******', 2);
INSERT INTO `user` VALUES (2, '小一', '******', 1);
INSERT INTO `user` VALUES (3, '小二', '******', 1);
INSERT INTO `user` VALUES (4, '大一', '******', 3);
INSERT INTO `user` VALUES (5, '二二', '******', 2);

-- ----------------------------
-- View structure for _stuchoice
-- ----------------------------
DROP VIEW IF EXISTS `_stuchoice`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `_stuchoice` AS select `student`.`sname` AS `sname`,`teacher`.`tname` AS `tname`,`class`.`classname` AS `classname` from ((((`stuclass` join `student`) join `teaclass`) join `teacher`) join `class`) where ((`stuclass`.`studentid` = `student`.`id`) and (`stuclass`.`teacid` = `teaclass`.`id`) and (`teaclass`.`id` = `teacher`.`id`) and (`teaclass`.`classid` = `class`.`id`));

-- ----------------------------
-- View structure for _stuscore
-- ----------------------------
DROP VIEW IF EXISTS `_stuscore`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `_stuscore` AS select `student`.`sname` AS `sname`,`exam`.`tname` AS `tname`,`student`.`sex` AS `sex`,`score`.`score` AS `score` from ((((`score` join `answer`) join `exam`) join `stuclass`) join `student`) where ((`score`.`answerid` = `answer`.`id`) and (`answer`.`examid` = `exam`.`id`) and (`exam`.`stucid` = `stuclass`.`id`) and (`stuclass`.`studentid` = `student`.`id`));

-- ----------------------------
-- View structure for _teaclass
-- ----------------------------
DROP VIEW IF EXISTS `_teaclass`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `_teaclass` AS select `teacher`.`tname` AS `tname`,`class`.`classname` AS `classname`,`teaclass`.`time` AS `time` from ((`teaclass` join `teacher`) join `class`) where ((`teaclass`.`id` = `teacher`.`id`) and (`teaclass`.`classid` = `class`.`id`));

-- ----------------------------
-- Procedure structure for cehngji
-- ----------------------------
DROP PROCEDURE IF EXISTS `cehngji`;
delimiter ;;
CREATE PROCEDURE `cehngji`()
BEGIN
	#Routine body goes here...
select * from chengji,answer,kaoshi ,stuclass,student where answerid=answer.id and kaoshiid=kaoshi.id and stucid=stuclass.id and studentid=student.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for choice
-- ----------------------------
DROP PROCEDURE IF EXISTS `choice`;
delimiter ;;
CREATE PROCEDURE `choice`()
BEGIN
	#Routine body goes here...
	select * from stuclass,student,teaclass,teacher,class where studentid=student.id and teacid=teaclass.id and teaclass.id=teacher.id and classid=class.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for class
-- ----------------------------
DROP PROCEDURE IF EXISTS `class`;
delimiter ;;
CREATE PROCEDURE `class`()
BEGIN
	#Routine body goes here...
select * from teaclass,teacher,class where teaclass.id=teacher.id and classid=class.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `insert`;
delimiter ;;
CREATE PROCEDURE `insert`()
BEGIN
	#Routine body goes here...
insert into user (id,name,password,roleid)
VALUES (5,'二二',22,2);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for s-inquire
-- ----------------------------
DROP PROCEDURE IF EXISTS `s-inquire`;
delimiter ;;
CREATE PROCEDURE `s-inquire`(a varchar(20))
BEGIN
	#Routine body goes here...
select * from _stuchoice where sname=a;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for t-inquire
-- ----------------------------
DROP PROCEDURE IF EXISTS `t-inquire`;
delimiter ;;
CREATE PROCEDURE `t-inquire`(a varchar(20))
BEGIN
	#Routine body goes here...
select * from _teaclass where tname=a;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
