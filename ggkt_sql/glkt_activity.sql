/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : glkt_activity

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 17/09/2022 08:53:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for coupon_info
-- ----------------------------
DROP TABLE IF EXISTS `coupon_info`;
CREATE TABLE `coupon_info`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `coupon_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '购物券类型 1 注册卷 2：推荐赠送卷',
  `coupon_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠卷名字',
  `amount` decimal(10, 2) NOT NULL COMMENT '金额',
  `condition_amount` decimal(10, 2) NOT NULL COMMENT '使用门槛 0->没门槛',
  `start_time` date NULL DEFAULT NULL COMMENT '可以领取的开始日期',
  `end_time` date NULL DEFAULT NULL COMMENT '可以领取的结束日期',
  `range_type` tinyint(0) NOT NULL DEFAULT 1 COMMENT '使用范围[1->全场通用]',
  `rule_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规则描述',
  `publish_count` int(0) NOT NULL DEFAULT 1 COMMENT '发行数量',
  `per_limit` int(0) NOT NULL DEFAULT 1 COMMENT '每人限领张数',
  `use_count` int(0) NOT NULL DEFAULT 0 COMMENT '已使用数量',
  `receive_count` int(0) NOT NULL DEFAULT 0 COMMENT '领取数量',
  `expire_time` datetime(0) NULL DEFAULT NULL COMMENT '过期时间',
  `publish_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '发布状态[0-未发布，1-已发布]',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:不可用 1:可用）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_info
-- ----------------------------
INSERT INTO `coupon_info` VALUES (1, 1, '双十一新用户注册赠送100元卷', 100.00, 0.00, '2022-09-07', '2022-10-01', 2, '双十一新用户注册赠送100元卷，全程通用，没有限制', 100, 1, 0, 3, '2022-09-07 00:00:00', 1, '2021-06-06 18:29:14', '2022-09-07 11:05:36', 0);
INSERT INTO `coupon_info` VALUES (2, 1, '双十一推荐课程并购买600福利卷', 600.00, 0.00, '2022-09-07', '2022-10-06', 2, '双十一推荐课程，新用户购买并支付，赠送推荐人600福利卷，全程通用，没有限制', 100, 1, 0, 4, '2022-09-07 00:00:00', 1, '2021-08-17 11:35:56', '2022-09-07 11:05:40', 0);
INSERT INTO `coupon_info` VALUES (3, 2, '国庆新用户注册赠送100元卷', 100.00, 0.00, '2022-09-07', '2022-10-06', 1, '国庆新用户注册赠送100元卷，全程通用，没有限制', 100, 1, 0, 4, '2022-09-07 00:00:00', 1, '2021-09-28 06:14:38', '2022-09-07 11:05:48', 0);
INSERT INTO `coupon_info` VALUES (4, 1, '国庆推荐课程并购买500福利卷', 500.00, 0.00, '2022-09-07', '2022-09-23', 1, '双十一推荐课程，新用户购买并支付，赠送推荐人500福利卷，全程通用，没有限制', 100, 1, 0, 25, '2022-09-30 00:00:00', 1, '2021-09-28 06:50:17', '2022-09-07 11:05:02', 0);
INSERT INTO `coupon_info` VALUES (5, 1, 'test1', 0.00, 0.00, '2022-09-01', '2022-09-02', 1, '2222', 10, 1, 0, 0, '2022-09-07 00:00:00', 0, '2022-09-02 11:12:01', '2022-09-02 11:12:49', 1);

-- ----------------------------
-- Table structure for coupon_use
-- ----------------------------
DROP TABLE IF EXISTS `coupon_use`;
CREATE TABLE `coupon_use`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `coupon_id` bigint(0) NULL DEFAULT NULL COMMENT '购物券ID',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户ID',
  `order_id` bigint(0) NULL DEFAULT NULL COMMENT '订单ID',
  `coupon_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购物券状态（1：未使用 2：已使用）',
  `get_time` datetime(0) NULL DEFAULT NULL COMMENT '获取时间',
  `using_time` datetime(0) NULL DEFAULT NULL COMMENT '使用时间',
  `used_time` datetime(0) NULL DEFAULT NULL COMMENT '支付时间',
  `expire_time` datetime(0) NULL DEFAULT NULL COMMENT '过期时间',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券领用表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_use
-- ----------------------------
INSERT INTO `coupon_use` VALUES (1, 1, 1, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-08 12:09:03', 0);
INSERT INTO `coupon_use` VALUES (2, 1, 1, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-08 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (5, 4, 1, 4, '1', '2022-09-07 09:02:23', '2022-09-09 18:57:27', NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-08 14:09:03', 0);
INSERT INTO `coupon_use` VALUES (9, 4, 1, 1, '1', '2022-09-07 09:02:23', '2022-09-08 21:38:48', '2022-09-08 21:39:12', '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-07 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (27, 4, 24, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-07 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (28, 4, 25, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-07 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (29, 4, 26, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-07 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (30, 4, 27, 5, '1', '2022-09-07 09:02:23', '2022-09-11 18:57:52', NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-07 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (31, 4, 28, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-07 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (32, 4, 29, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-07 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (33, 4, 29, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-07 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (34, 4, 30, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-07 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (35, 4, 31, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-07 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (36, 4, 32, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-09 11:09:03', 0);
INSERT INTO `coupon_use` VALUES (37, 4, 33, NULL, '0', '2022-09-07 09:02:23', NULL, NULL, '2022-09-30 00:00:00', '2022-09-07 14:35:15', '2022-09-09 11:08:43', 0);

SET FOREIGN_KEY_CHECKS = 1;
