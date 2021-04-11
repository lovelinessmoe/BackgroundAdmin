/*
 Navicat Premium Data Transfer

 Source Server         : Meow
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : study

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 11/04/2021 15:02:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for People
-- ----------------------------
DROP TABLE IF EXISTS `People`;
CREATE TABLE `People` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT ' 用户名',
  `sex` char(2) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '性别',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '城市',
  `sign` tinytext CHARACTER SET utf8 COLLATE utf8_bin COMMENT '签名',
  `logins` int DEFAULT NULL COMMENT '登陆次数',
  `experience` int DEFAULT NULL COMMENT '积分',
  `score` int DEFAULT NULL COMMENT '评分',
  `classify` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '职业',
  `wealth` int DEFAULT NULL COMMENT '财富',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of People
-- ----------------------------
BEGIN;
INSERT INTO `People` VALUES (1, 'user1', '女', '1', '哈哈哈哈哈', 10, 2323, 29, '作家', 45);
INSERT INTO `People` VALUES (2, 'klhnl', 'ql', '1', '132132', 1, 23, 3131, 'll', 54);
INSERT INTO `People` VALUES (3, '4163514', '43', '1', '231', 31, 32, 3, '31', 45);
INSERT INTO `People` VALUES (32, '1313', '21', '31', '31', 32, 2323, 13, '123', 5);
INSERT INTO `People` VALUES (33, '13', '13', '13', '1', 321, 56, 123, '3', 54);
INSERT INTO `People` VALUES (34, '2', '2', '45', '5', 468, 2344, 6, '4', 65);
INSERT INTO `People` VALUES (35, '4145', '54', '6', '46', 46, 4, NULL, '4', 56);
INSERT INTO `People` VALUES (37, '12', NULL, '121231', NULL, 2, 1212, 21, '121', 12);
INSERT INTO `People` VALUES (38, '2v c x', '32', '23日 v', '23r', 23, 325, 84, '美女们放过', 55);
INSERT INTO `People` VALUES (39, '豆腐花', '电话', '3回家呢', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (40, '生吞活剥说', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (42, '圆满', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (43, '虽然他很热', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (44, '当然是体会人生 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (45, '过分的话就认识 ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (46, '身体好', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (47, '54我', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (48, '5万 还有', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (49, '涩味5个好友', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (50, '体会', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (51, '同时融合', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `People` VALUES (52, 's t h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for study_account
-- ----------------------------
DROP TABLE IF EXISTS `study_account`;
CREATE TABLE `study_account` (
  `u_id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `u_weixin_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户微信名称',
  `u_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '用户名',
  `u_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `u_sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '未知' COMMENT '性别',
  `u_avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '0' COMMENT '头像地址',
  `u_auth_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '授权码',
  `u_qbc_id` int DEFAULT '1' COMMENT '用户等级',
  `stu_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学号',
  `stu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '学生唯一ID 时间戳',
  `u_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系电话',
  `u_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工作单位',
  `u_school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学校',
  `u_education` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学历 ',
  `u_wxopenid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信唯一标识',
  `u_create_time` int DEFAULT NULL COMMENT '生成日期 时间戳',
  `u_update_time` int DEFAULT NULL COMMENT '更新日期 时间戳',
  `u_status` tinyint DEFAULT '1' COMMENT '用户状态: 0-禁用 1-启用',
  PRIMARY KEY (`u_id`) USING BTREE,
  UNIQUE KEY `stu_no` (`stu_no`) USING BTREE COMMENT '学号不唯一',
  UNIQUE KEY `stu_id` (`stu_id`) USING BTREE COMMENT '唯一ID',
  UNIQUE KEY `mobile` (`u_phone`) USING BTREE COMMENT '手机号唯一'
) ENGINE=MyISAM AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of study_account
-- ----------------------------
BEGIN;
INSERT INTO `study_account` VALUES (177, '123456', '111', '2', '未知', '0', NULL, 1, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO `study_account` VALUES (178, NULL, 'cw', NULL, '男', '/Photo/-65d71dc8a7b74986.jpg', NULL, 1, NULL, '115643', '123', NULL, '111', NULL, NULL, NULL, NULL, 1);
INSERT INTO `study_account` VALUES (179, NULL, '狗蛋', NULL, '男', '/Photo/18087435-bf2a996ef50a21b0.jpg', NULL, 1, NULL, '132', '1234', NULL, '11', NULL, NULL, NULL, NULL, 1);
INSERT INTO `study_account` VALUES (181, NULL, 'ewasdcfwaw', NULL, '女', '/Photo/sprites-hash-c9975078.png', NULL, 1, NULL, 'arwsGrewS', '123134', NULL, 'dfszbgvfraszg', NULL, NULL, NULL, NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for study_admin
-- ----------------------------
DROP TABLE IF EXISTS `study_admin`;
CREATE TABLE `study_admin` (
  `a_id` int NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `a_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '管理员名',
  `a_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '密码',
  `a_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `a_loginnum` int DEFAULT '0' COMMENT '登陆次数',
  `a_last_login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '最后登录IP',
  `a_last_login_time` int DEFAULT NULL COMMENT '最后登录时间 时间戳',
  `a_real_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '真实姓名',
  `a_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号',
  `a_status` int DEFAULT NULL COMMENT '状态  0: 禁用 1：开启  ',
  `a_groupid` int DEFAULT '1' COMMENT '用户角色id',
  `a_create_time` int DEFAULT NULL COMMENT '创建时间 时间戳',
  `a_update_time` int DEFAULT NULL COMMENT '修改时间 时间戳',
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC COMMENT='后台管理员表';

-- ----------------------------
-- Records of study_admin
-- ----------------------------
BEGIN;
INSERT INTO `study_admin` VALUES (22, 'qzzr', '123456', 'default', 0, '0.0.0.0', 1606475308, 'qz', '123456789', 1, 2, 1617866597, 1617866597);
INSERT INTO `study_admin` VALUES (27, '123456', '123456', 'default', 0, '0.0.0.0', 0, '123456', '1111', 1, 1, 1618046037, 1618046037);
INSERT INTO `study_admin` VALUES (23, 'qq', '123456', 'default', 0, '0.0.0.0', 0, 'qq', '211111111', 1, 1, 1617866781, 1617866781);
INSERT INTO `study_admin` VALUES (24, 'ww', '123456', 'default', 0, '0.0.0.0', 0, 'ww', '1606475308', 1, 1, 1617866792, 1617866792);
INSERT INTO `study_admin` VALUES (25, 'qqw', '123456', 'default', 0, '0.0.0.0', 0, 'qq', '1606475308', 1, 2, 1617866890, 1617866890);
INSERT INTO `study_admin` VALUES (26, 'q', '123456', 'default', 0, '0.0.0.0', 0, 'w', '222', 1, 2, 1617867282, 1617867282);
COMMIT;

-- ----------------------------
-- Table structure for study_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `study_auth_group`;
CREATE TABLE `study_auth_group` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `title` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `status` tinyint(1) NOT NULL COMMENT '角色状态 1：开启   2：禁用',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限   SUPERAUTH：超级权限',
  `describe` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '角色描述',
  `create_time` int DEFAULT NULL COMMENT '生成时间',
  `update_time` int DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户组数据表';

-- ----------------------------
-- Records of study_auth_group
-- ----------------------------
BEGIN;
INSERT INTO `study_auth_group` VALUES (1, '超级管理员', 1, '1,2,3,4', '所有权限', 1446535750, 1446535750);
INSERT INTO `study_auth_group` VALUES (2, '试卷管理员', 1, '3,4', '试卷管理，题库管理', 1446535750, 1446535750);
INSERT INTO `study_auth_group` VALUES (3, '用户管理员', 2, '2', '用户管理', 1446535750, 1446535750);
COMMIT;

-- ----------------------------
-- Table structure for study_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `study_auth_group_access`;
CREATE TABLE `study_auth_group_access` (
  `uid` mediumint unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint unsigned NOT NULL COMMENT '角色权限id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `group_id` (`group_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='用户-用户组关系表';

-- ----------------------------
-- Records of study_auth_group_access
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for study_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `study_auth_rule`;
CREATE TABLE `study_auth_rule` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模块/控制器/方法',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限规则名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1：菜单  2：按钮',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态  1：开启  2：禁用',
  `css` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图标样式',
  `condition` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `pid` int NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int DEFAULT NULL COMMENT '修改',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限规则表';

-- ----------------------------
-- Records of study_auth_rule
-- ----------------------------
BEGIN;
INSERT INTO `study_auth_rule` VALUES (1, '#', '系统管理', 1, 1, 'fa fa-cog', '', 0, 1, 1446535750, 1541121645);
INSERT INTO `study_auth_rule` VALUES (2, '#', '用户管理', 1, 1, 'fa fa-ban', '', 0, 1, 0, 1);
INSERT INTO `study_auth_rule` VALUES (3, '#', '课程管理', 1, 1, '*', '', 0, 1, 0, 0);
INSERT INTO `study_auth_rule` VALUES (4, '#', '题库管理', 1, 1, '*', '', 0, 1, 1, 1);
INSERT INTO `study_auth_rule` VALUES (42, 'userManager', '管理员管理', 1, 1, 'fa fa-user-o', '', 1, 10, 1446535750, 1589004620);
INSERT INTO `study_auth_rule` VALUES (43, 'roleManager', '角色管理', 1, 1, 'fa fa-drivers-license-o', '', 1, 20, 1446535750, 1574218686);
INSERT INTO `study_auth_rule` VALUES (44, 'admin/course/courseManager', '课程目录', 1, 1, '*', '', 3, 2, 1, 1);
INSERT INTO `study_auth_rule` VALUES (45, 'admin/course/chapterManager', '章节管理', 1, 1, '*', '', 3, 2, 1, 1);
INSERT INTO `study_auth_rule` VALUES (46, 'admin/user/wechat_user', '微信用户管理', 1, 1, 'f', '', 2, 10, 0, NULL);
INSERT INTO `study_auth_rule` VALUES (47, 'admin/quest/questManager', '题库管理', 1, 1, '*', '', 4, 2, 1, 1);
INSERT INTO `study_auth_rule` VALUES (48, 'menuManager', '菜单管理', 1, 1, '*', '', 1, 0, 0, 0);
INSERT INTO `study_auth_rule` VALUES (102, 'admin/user/batchdeluser', '批量删除', 1, 1, 'fa fa-ban', '', -1, 50, 1524645295, 1540434827);
INSERT INTO `study_auth_rule` VALUES (103, 'admin/role/batchdelrole', '批量删除', 1, 1, 'fa fa-ban', '', -1, 50, 1524648181, 1540434911);
INSERT INTO `study_auth_rule` VALUES (104, 'admin/menu/batchdelmenu', '批量删除', 1, 1, 'fa fa-ban', '', -1, 50, 1524653771, 1540434997);
INSERT INTO `study_auth_rule` VALUES (126, 'admin/menu/editfield', '快捷编辑', 1, 1, 'fa fa-ban', '', -1, 50, 1529631518, 1540519615);
INSERT INTO `study_auth_rule` VALUES (127, 'admin/user/forbiddenadmin', '批量禁用', 1, 1, 'fa fa-ban', '', -1, 50, 1530238799, 1540434840);
INSERT INTO `study_auth_rule` VALUES (128, 'admin/user/usingadmin', '批量启用', 1, 1, 'fa fa-ban', '', -1, 50, 1530238799, 1540434847);
INSERT INTO `study_auth_rule` VALUES (130, 'admin/role/forbiddenrole', '批量禁用', 1, 1, 'fa fa-ban', '', -1, 50, 1530248275, 1540434928);
INSERT INTO `study_auth_rule` VALUES (131, 'admin/role/usingrole', '批量启用', 1, 1, 'fa fa-ban', '', -1, 50, 1530248275, 1540434940);
INSERT INTO `study_auth_rule` VALUES (150, 'admin/role/roleAdd', '添加角色', 1, 1, 'fa fa-ban', '', -1, 50, 1477640011, 1540434875);
INSERT INTO `study_auth_rule` VALUES (151, 'admin/user/userdel', '删除管理员', 1, 1, 'fa fa-ban', '', -1, 50, 1477312169, 1540434818);
INSERT INTO `study_auth_rule` VALUES (152, 'admin/user/user_state', '管理员状态', 1, 1, 'fa fa-ban', '', -1, 50, 1477312169, 1574164889);
INSERT INTO `study_auth_rule` VALUES (153, 'admin/user/useradd', '添加管理员', 1, 1, 'fa fa-ban', '', -1, 50, 1477312169, 1574157294);
INSERT INTO `study_auth_rule` VALUES (154, 'admin/user/useredit', '编辑管理员', 1, 1, 'fa fa-ban', '', -1, 50, 1477312169, 1540434808);
INSERT INTO `study_auth_rule` VALUES (161, 'admin/role/roleEdit', '编辑角色', 1, 1, 'fa fa-ban', '', -1, 50, 1477640011, 1540434889);
INSERT INTO `study_auth_rule` VALUES (162, 'admin/role/roleDel', '删除角色', 1, 1, 'fa fa-ban', '', -1, 50, 1477640011, 1540434901);
INSERT INTO `study_auth_rule` VALUES (163, 'admin/role/role_state', '角色状态', 1, 1, 'fa fa-ban', '', -1, 50, 1477640011, 1540434918);
INSERT INTO `study_auth_rule` VALUES (165, 'admin/menu/add_rule', '添加菜单', 1, 1, 'fa fa-ban', '', -1, 50, 1477640011, 1540434966);
INSERT INTO `study_auth_rule` VALUES (166, 'admin/menu/edit_rule', '编辑菜单', 1, 1, 'fa fa-ban', '', -1, 50, 1477640011, 1540434982);
INSERT INTO `study_auth_rule` VALUES (167, 'admin/menu/del_rule', '删除菜单', 1, 1, 'fa fa-ban', '', -1, 50, 1477640011, 1540434991);
INSERT INTO `study_auth_rule` VALUES (168, 'admin/menu/rule_state', '菜单状态', 1, 1, 'fa fa-ban', '', -1, 50, 1477640011, 1540435007);
INSERT INTO `study_auth_rule` VALUES (169, 'admin/menu/ruleorder', '菜单排序', 1, 1, 'fa fa-ban', '', -1, 50, 1477640011, 1540435014);
COMMIT;

-- ----------------------------
-- Table structure for study_course
-- ----------------------------
DROP TABLE IF EXISTS `study_course`;
CREATE TABLE `study_course` (
  `c_id` int NOT NULL AUTO_INCREMENT COMMENT '课程主键ID',
  `c_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `c_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程显示缩略图',
  `c_create_time` int DEFAULT NULL COMMENT '生成日期 时间戳',
  `c_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '课程介绍',
  `c_update_time` int DEFAULT NULL COMMENT '更新日期 时间戳',
  `c_status` tinyint(1) DEFAULT '1' COMMENT '课程状态: 0-禁用 1-启用',
  `c_delete_status` tinyint(1) DEFAULT '0' COMMENT '删除状态: 0-未删除 1-删除',
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='课程信息表';

-- ----------------------------
-- Records of study_course
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for study_my_question
-- ----------------------------
DROP TABLE IF EXISTS `study_my_question`;
CREATE TABLE `study_my_question` (
  `mq_id` int NOT NULL AUTO_INCREMENT,
  `qb_id` int NOT NULL COMMENT '试题ID',
  `c_id` int NOT NULL COMMENT '课程ID',
  `cc_id` int NOT NULL COMMENT '课程章节ID',
  `is_true` tinyint(1) NOT NULL COMMENT '答题状态 -1错 0未答 1正确',
  `u_id` int NOT NULL COMMENT '用户ID',
  `ep_id` int NOT NULL COMMENT '试卷ID',
  `source` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '错题来源 专项错题 模拟错题',
  `is_answer` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '答案详情',
  `create_time` int DEFAULT NULL COMMENT '答题时间',
  `update_time` int DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`mq_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=113331 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='用户试题表';

-- ----------------------------
-- Records of study_my_question
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for study_my_question_history
-- ----------------------------
DROP TABLE IF EXISTS `study_my_question_history`;
CREATE TABLE `study_my_question_history` (
  `mq_id` int NOT NULL AUTO_INCREMENT,
  `qb_id` int NOT NULL COMMENT '试题ID',
  `c_id` int NOT NULL COMMENT '课程ID',
  `cc_id` int NOT NULL COMMENT '课程章节ID',
  `is_true` tinyint(1) NOT NULL COMMENT '答题状态 -1错 0未答 1正确',
  `u_id` int NOT NULL COMMENT '用户ID',
  `ep_id` int NOT NULL COMMENT '试卷ID',
  `source` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '错题来源 专项错题 模拟错题',
  `is_answer` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '答案详情',
  `create_time` int DEFAULT NULL COMMENT '答题时间',
  `update_time` int DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`mq_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=113331 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='用户试题表';

-- ----------------------------
-- Records of study_my_question_history
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for study_question_bank
-- ----------------------------
DROP TABLE IF EXISTS `study_question_bank`;
CREATE TABLE `study_question_bank` (
  `qb_id` int NOT NULL AUTO_INCREMENT COMMENT '试题id',
  `qb_name` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '试题题目',
  `qb_type` tinyint(1) DEFAULT NULL COMMENT '试题题型。 1-单选题，2-多选题，3-判断题 , 4-简答题',
  `qb_score` tinyint DEFAULT '0' COMMENT '试题分数 积分',
  `qb_option` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '选项',
  `qb_answer` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '答案',
  `cc_pid` int DEFAULT NULL COMMENT '章ID',
  `pid` int DEFAULT '0' COMMENT '论述题上级ID',
  `tag` int DEFAULT '0' COMMENT '标签 1-语文 2-数学 3-英语 4-物理',
  `owner` tinyint(1) DEFAULT '1' COMMENT '所属类型 1-练习题 2-真题',
  `cate` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '试题类型 A1-A4',
  `c_id` int DEFAULT NULL COMMENT '课程id',
  `cc_id` int DEFAULT NULL COMMENT '课程章节id',
  `qb_img` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '试题配图',
  `qb_level` tinyint(1) DEFAULT '0' COMMENT '试题难度',
  `qb_text_desc` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '试题文字解析',
  `qb_live_url` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '试题视频解析地址',
  `qb_live_img` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '试题视频解析缩略图',
  `status` tinyint(1) DEFAULT '1' COMMENT '试题状态  0-禁用 1-正常 ',
  `create_time` int DEFAULT NULL COMMENT '生成日期',
  `update_time` int DEFAULT NULL COMMENT '更新日期',
  `delete_status` tinyint(1) DEFAULT '0' COMMENT '删除状态 0-已删除 1-未删除',
  PRIMARY KEY (`qb_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=95149 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='试题题库表';

-- ----------------------------
-- Records of study_question_bank
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for study_tag
-- ----------------------------
DROP TABLE IF EXISTS `study_tag`;
CREATE TABLE `study_tag` (
  `tag_id` int NOT NULL AUTO_INCREMENT COMMENT '标签序号',
  `tag_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名',
  PRIMARY KEY (`tag_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of study_tag
-- ----------------------------
BEGIN;
INSERT INTO `study_tag` VALUES (1, '未分类');
COMMIT;

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of User
-- ----------------------------
BEGIN;
INSERT INTO `User` VALUES (1, '1', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
