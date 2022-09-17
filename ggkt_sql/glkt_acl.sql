/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : glkt_acl

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 17/09/2022 08:53:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机',
  `ware_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '仓库id（默认为：0为平台用户）',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uname`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '96e79218965eb72c92a549dd5a330112', 'admin', NULL, 0, '2022-09-07 18:08:43', '2022-09-07 18:08:56', 0);
INSERT INTO `admin` VALUES (2, 'shangguigu', '96e79218965eb72c92a549dd5a330112', 'shangguigu', NULL, 0, '2022-09-01 08:46:22', '2022-09-01 06:20:29', 0);
INSERT INTO `admin` VALUES (3, 'chengdu', '96e79218965eb72c92a549dd5a330112', 'chengdu', NULL, 1, '2022-09-02 17:18:29', '2021-06-02 17:20:08', 0);
INSERT INTO `admin` VALUES (4, 'atguigu', 'e10adc3949ba59abbe56e057f20f883e', '游客', NULL, 0, '2022-09-08 09:37:39', '2022-09-08 09:39:14', 0);

-- ----------------------------
-- Table structure for admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_login_log`;
CREATE TABLE `admin_login_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(0) NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_agent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器登录类型',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '角色id',
  `admin_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '用户id',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_user_id`(`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (1, 1, 1, '2022-09-07 18:09:02', '2022-09-07 18:09:02', 0);
INSERT INTO `admin_role` VALUES (2, 2, 2, '2022-09-07 08:53:12', '2022-09-07 06:21:40', 1);
INSERT INTO `admin_role` VALUES (3, 3, 3, '2022-09-08 17:18:37', '2022-09-08 17:18:37', 0);
INSERT INTO `admin_role` VALUES (4, 4, 4, '2022-09-08 09:37:45', '2022-09-07 10:48:32', 0);
INSERT INTO `admin_role` VALUES (5, 4, 2, '2022-09-09 06:21:40', '2022-09-07 10:50:17', 0);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` bigint(0) NOT NULL DEFAULT 0 COMMENT '所属上级',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称code',
  `to_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '跳转页面code',
  `type` tinyint(0) NOT NULL DEFAULT 0 COMMENT '类型(1:菜单,2:按钮)',
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, 0, '全部数据', NULL, NULL, 1, NULL, '2022-09-07 18:05:37', '2022-09-07 13:37:59', 0);
INSERT INTO `permission` VALUES (2, 1, '权限管理', 'Acl', NULL, 1, NULL, '2022-09-07 18:05:37', '2022-09-07 19:36:53', 0);
INSERT INTO `permission` VALUES (3, 2, '用户管理', 'User', NULL, 1, NULL, '2022-09-07 18:05:37', '2022-09-07 19:36:58', 0);
INSERT INTO `permission` VALUES (4, 2, '角色管理', 'Role', NULL, 1, NULL, '2022-09-07 18:05:37', '2022-09-07 19:37:02', 0);
INSERT INTO `permission` VALUES (5, 2, '菜单管理', 'Permission', NULL, 1, NULL, '2022-09-07 18:05:37', '2022-09-07 19:37:05', 0);
INSERT INTO `permission` VALUES (6, 3, '分配角色', 'btn.User.assgin', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-07 08:35:35', 0);
INSERT INTO `permission` VALUES (7, 3, '添加', 'btn.User.add', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-07 08:34:29', 0);
INSERT INTO `permission` VALUES (8, 3, '修改', 'btn.User.update', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-07 08:34:45', 0);
INSERT INTO `permission` VALUES (9, 3, '删除', 'btn.User.remove', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-07 08:34:38', 0);
INSERT INTO `permission` VALUES (10, 4, '修改', 'btn.Role.update', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-07 08:36:20', 0);
INSERT INTO `permission` VALUES (11, 4, '分配权限', 'btn.Role.assgin', 'RoleAuth', 2, NULL, '2022-09-07 18:05:37', '2022-09-07 08:36:56', 0);
INSERT INTO `permission` VALUES (12, 4, '添加', 'btn.Role.add', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-07 08:36:08', 0);
INSERT INTO `permission` VALUES (13, 4, '删除', 'btn.Role.remove', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-07 08:36:32', 0);
INSERT INTO `permission` VALUES (14, 4, '角色权限', 'role.acl', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-07 08:37:22', 1);
INSERT INTO `permission` VALUES (15, 5, '查看', 'btn.permission.list', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-07 19:32:52', 0);
INSERT INTO `permission` VALUES (16, 5, '添加', 'btn.Permission.add', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-08 08:37:39', 0);
INSERT INTO `permission` VALUES (17, 5, '修改', 'btn.Permission.update', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-08 08:37:47', 0);
INSERT INTO `permission` VALUES (18, 5, '删除', 'btn.Permission.remove', NULL, 2, NULL, '2022-09-07 18:05:37', '2022-09-08 08:37:54', 0);
INSERT INTO `permission` VALUES (19, 1, '订单管理', 'Order', NULL, 1, NULL, '2022-09-08 16:38:51', '2022-09-08 16:48:22', 0);
INSERT INTO `permission` VALUES (20, 19, '订单列表', 'OrderInfo', '', 1, NULL, '2022-09-08 16:39:21', '2022-09-08 16:42:36', 0);
INSERT INTO `permission` VALUES (23, 1, '点播管理', 'Vod', NULL, 1, NULL, '2022-09-08 16:45:55', '2022-09-09 11:39:47', 0);
INSERT INTO `permission` VALUES (24, 23, '课程分类管理', 'Subject', NULL, 1, NULL, '2022-09-07 16:46:44', '2022-09-10 11:40:12', 0);
INSERT INTO `permission` VALUES (25, 23, '讲师列表', 'TeacherList', '', 1, NULL, '2022-09-08 16:48:01', '2022-09-10 06:06:50', 0);
INSERT INTO `permission` VALUES (26, 23, '课程列表', 'CourseList', '', 1, NULL, '2022-09-09 16:50:11', '2022-09-10 10:54:20', 0);
INSERT INTO `permission` VALUES (27, 25, '添加讲师', '', 'TeacherCreate', 2, NULL, '2022-09-07 16:52:12', '2022-09-07 06:11:18', 0);
INSERT INTO `permission` VALUES (28, 25, '编辑讲师', '', 'TeacherEdit', 2, NULL, '2022-09-08 16:53:04', '2022-09-10 06:09:34', 0);
INSERT INTO `permission` VALUES (29, 26, '发布课程', '', 'CourseInfo', 2, NULL, '2022-09-07 16:53:22', '2022-09-08 06:10:13', 0);
INSERT INTO `permission` VALUES (30, 27, '编辑课程', '', 'CourseInfoEdit', 2, NULL, '2022-09-07 16:54:34', '2022-09-08 06:10:35', 0);
INSERT INTO `permission` VALUES (31, 27, '编辑大纲', NULL, 'CourseChapterEdit', 2, NULL, '2022-09-07 16:56:42', '2022-09-09 06:10:50', 0);
INSERT INTO `permission` VALUES (32, 27, '课程统计', NULL, 'CourseChart', 2, NULL, '2022-09-08 16:56:57', '2022-09-09 06:11:01', 0);
INSERT INTO `permission` VALUES (36, 1, '营销活动管理', 'Activity', NULL, 1, NULL, '2022-09-02 17:04:15', '2022-09-07 17:04:15', 0);
INSERT INTO `permission` VALUES (40, 36, '优惠券列表', 'CouponInfo', NULL, 1, NULL, '2022-09-09 17:06:41', '2022-09-10 17:07:18', 0);
INSERT INTO `permission` VALUES (41, 40, '添加', NULL, 'CouponInfoAdd', 2, NULL, '2022-09-07 17:06:57', '2022-09-08 17:07:22', 0);
INSERT INTO `permission` VALUES (42, 40, '修改', NULL, 'CouponInfoEdit', 2, NULL, '2022-09-07 17:07:11', '2022-09-07 17:07:25', 0);
INSERT INTO `permission` VALUES (43, 40, '详情', NULL, 'CouponInfoShow', 2, NULL, '2022-09-07 17:07:49', '2022-09-08 06:12:31', 0);
INSERT INTO `permission` VALUES (45, 1, '直播管理', 'Live', NULL, 1, NULL, '2022-09-07 17:08:44', '2022-09-07 10:56:42', 0);
INSERT INTO `permission` VALUES (46, 45, '直播列表', 'liveCourseList', '', 1, NULL, '2022-09-07 17:09:23', '2022-09-07 10:56:47', 0);
INSERT INTO `permission` VALUES (47, 45, '直播配置', NULL, 'liveCourseConfig', 2, NULL, '2022-09-07 17:09:28', '2022-09-07 10:56:51', 0);
INSERT INTO `permission` VALUES (48, 45, '观看记录', NULL, 'liveVisitor', 2, NULL, '2022-09-07 17:09:43', '2022-09-07 10:56:54', 0);
INSERT INTO `permission` VALUES (49, 1, '菜单管理', 'Wechat', NULL, 1, NULL, '2022-09-07 17:15:44', '2022-09-07 10:56:59', 0);
INSERT INTO `permission` VALUES (50, 49, '菜单列表', 'Menu', '', 1, NULL, '2022-09-07 17:16:02', '2022-09-07 10:57:02', 0);
INSERT INTO `permission` VALUES (100, 1, '全部', 'btn.all', NULL, 2, NULL, '2022-09-07 13:35:24', '2022-09-07 13:40:09', 0);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `role_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '系统管理员', 'SYSTEM', NULL, '2022-09-07 18:09:18', '2022-09-07 18:09:18', 0);
INSERT INTO `role` VALUES (2, '平台管理员', NULL, NULL, '2022-09-07 08:38:40', '2022-09-07 17:13:17', 0);
INSERT INTO `role` VALUES (3, '运营管理员', NULL, NULL, '2022-09-07 17:12:21', '2022-09-08 06:21:14', 0);
INSERT INTO `role` VALUES (4, '游客', NULL, NULL, '2022-09-08 09:37:13', '2022-09-08 09:37:13', 0);

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(0) NOT NULL DEFAULT 0,
  `permission_id` bigint(0) NOT NULL DEFAULT 0,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_permission_id`(`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (3, 4, 1, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (4, 4, 2, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (5, 4, 3, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (6, 4, 6, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (7, 4, 7, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (8, 4, 8, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (9, 4, 9, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (10, 4, 4, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (11, 4, 10, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (12, 4, 11, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (13, 4, 12, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (14, 4, 13, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (15, 4, 5, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (16, 4, 15, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (17, 4, 16, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (18, 4, 17, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (19, 4, 18, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (20, 4, 19, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (21, 4, 20, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (22, 4, 23, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (23, 4, 24, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (24, 4, 25, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (25, 4, 27, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (26, 4, 30, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (27, 4, 31, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (28, 4, 32, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (29, 4, 28, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (30, 4, 26, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (31, 4, 29, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (32, 4, 36, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (33, 4, 40, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (34, 4, 41, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (35, 4, 42, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (36, 4, 43, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (37, 4, 45, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (38, 4, 46, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (39, 4, 47, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (40, 4, 48, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (41, 4, 49, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);
INSERT INTO `role_permission` VALUES (42, 4, 50, '2022-09-07 06:25:28', '2022-09-07 06:25:28', 0);

SET FOREIGN_KEY_CHECKS = 1;
