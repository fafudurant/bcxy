/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : glkt_wechat

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 17/09/2022 08:54:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint(0) NULL DEFAULT NULL COMMENT '上级id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网页 链接，用户点击菜单可打开链接',
  `meun_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单KEY值，用于消息接口推送',
  `sort` tinyint(0) NULL DEFAULT NULL COMMENT '排序',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单明细 订单明细' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 0, '直播', NULL, NULL, NULL, 1, '2022-09-08 08:41:53', '2022-09-07 12:17:00', 0);
INSERT INTO `menu` VALUES (2, 0, '课程', NULL, NULL, NULL, 2, '2022-09-08 08:41:57', '2022-09-07 12:17:06', 0);
INSERT INTO `menu` VALUES (3, 0, '个人', NULL, NULL, NULL, 3, '2022-09-08 08:42:00', '2022-09-07 12:17:11', 0);
INSERT INTO `menu` VALUES (4, 3, '关于我们', 'click', NULL, 'aboutUs', 10, '2022-09-08 08:42:05', '2022-09-07 12:17:17', 0);
INSERT INTO `menu` VALUES (5, 1, '微服务架构演进', 'view', '/liveInfo/3', '', 2, '2022-09-08 10:29:12', '2022-09-07 12:17:19', 0);
INSERT INTO `menu` VALUES (6, 1, '大数据Spark全面分析', 'view', '/liveInfo/2', '', 4, '2022-09-08 10:29:24', '2022-09-07 12:17:33', 0);
INSERT INTO `menu` VALUES (7, 2, '后端开发', 'view', '/course/1', '', 1, '2022-09-08 10:31:48', '2022-09-07 12:17:36', 0);
INSERT INTO `menu` VALUES (8, 2, '大数据', 'view', '/course/14', '', 2, '2022-09-08 10:31:59', '2022-09-07 12:17:39', 0);
INSERT INTO `menu` VALUES (9, 3, '我的订单', 'view', '/order', '', 1, '2022-09-09 01:19:25', '2022-09-07 12:17:50', 0);
INSERT INTO `menu` VALUES (10, 3, '我的课程', 'view', '/myCourse', '', 2, '2022-09-09 01:26:51', '2022-09-07 12:17:53', 0);
INSERT INTO `menu` VALUES (11, 1, '全部列表', 'view', '/live', '', 6, '2022-09-09 01:41:47', '2022-09-07 12:17:56', 0);
INSERT INTO `menu` VALUES (12, 3, '我的优惠券', 'view', '/coupon', NULL, 3, '2022-09-09 08:52:27', '2022-09-07 12:17:59', 0);
INSERT INTO `menu` VALUES (13, 1, '直播测试', 'view', '/liveInfo/9', '', 1, '2022-09-05 09:21:39', '2022-09-07 12:18:06', 0);

SET FOREIGN_KEY_CHECKS = 1;
