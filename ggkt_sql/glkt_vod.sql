/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : glkt_vod

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 17/09/2022 08:54:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '章节名称',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '显示排序',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES (1, 18, '第七章：I/O流', 7, '2022-09-05 03:05:51', '2022-09-07 12:18:43', 0);
INSERT INTO `chapter` VALUES (2, 2, '第一章节', 0, '2022-09-05 03:05:51', '2022-09-07 12:18:48', 0);
INSERT INTO `chapter` VALUES (3, 3, '第一章', 0, '2022-09-05 03:05:51', '2022-09-07 12:18:51', 0);
INSERT INTO `chapter` VALUES (4, 4, '第一章', 0, '2022-09-05 03:05:51', '2022-09-07 12:18:53', 0);
INSERT INTO `chapter` VALUES (5, 14, '第一章：HTML', 0, '2022-09-05 03:05:51', '2022-09-07 12:18:55', 0);
INSERT INTO `chapter` VALUES (6, 14, '第二章：CSS', 0, '2022-09-05 03:05:51', '2022-09-07 12:18:57', 0);
INSERT INTO `chapter` VALUES (7, 5, '第一章', 0, '2022-09-05 03:05:51', '2022-09-07 12:18:59', 0);
INSERT INTO `chapter` VALUES (8, 15, '第一章', 0, '2022-09-05 03:05:51', '2022-09-07 12:19:01', 0);
INSERT INTO `chapter` VALUES (9, 6, '数据仓库基础', 0, '2022-09-05 03:05:51', '2022-09-07 12:19:04', 0);
INSERT INTO `chapter` VALUES (10, 7, '课程基础', 0, '2022-09-05 03:05:51', '2022-09-07 12:19:07', 0);
INSERT INTO `chapter` VALUES (11, 8, '介绍及原理', 0, '2022-09-05 03:05:51', '2022-09-07 12:19:09', 0);
INSERT INTO `chapter` VALUES (12, 1, 'spark介绍', 0, '2022-09-05 03:05:51', '2022-09-07 12:19:12', 0);
INSERT INTO `chapter` VALUES (15, 18, '第一章：Java入门', 1, '2022-09-05 03:05:51', '2022-09-07 12:19:14', 0);
INSERT INTO `chapter` VALUES (16, 18, '第二章：控制台输入和输出', 2, '2022-09-05 03:05:51', '2022-09-07 12:19:16', 0);
INSERT INTO `chapter` VALUES (17, 18, '第三章：控制流', 3, '2022-09-05 03:05:51', '2022-09-07 12:19:18', 0);
INSERT INTO `chapter` VALUES (18, 18, '第四章：类的定义', 4, '2022-09-05 03:05:51', '2022-09-07 12:19:22', 0);
INSERT INTO `chapter` VALUES (19, 18, '第五章：数组', 5, '2022-09-05 03:05:51', '2022-09-07 12:19:25', 0);
INSERT INTO `chapter` VALUES (20, 18, '第六章：继承', 6, '2022-09-05 03:05:51', '2022-09-07 12:19:28', 0);
INSERT INTO `chapter` VALUES (65, 19, '入门及安装配置', 0, '2022-09-07 11:10:56', '2022-09-07 12:19:45', 0);
INSERT INTO `chapter` VALUES (66, 19, 'mysql原理', 1, '2022-09-07 11:11:17', '2022-09-07 12:19:48', 0);
INSERT INTO `chapter` VALUES (71, 27, '第一章 1', 0, '2022-08-28 22:41:08', '2022-08-28 22:43:20', 1);
INSERT INTO `chapter` VALUES (72, 27, '第二章 2', 1, '2022-08-28 22:41:44', '2022-08-28 22:43:16', 1);
INSERT INTO `chapter` VALUES (73, 27, '第一章 1', 0, '2022-08-28 22:42:16', '2022-08-30 23:18:32', 1);
INSERT INTO `chapter` VALUES (74, 27, '第二章 2', 0, '2022-08-28 22:43:00', '2022-08-30 23:18:32', 1);
INSERT INTO `chapter` VALUES (75, 28, '第一章 入门', 0, '2022-08-29 21:06:56', '2022-08-29 21:06:56', 0);
INSERT INTO `chapter` VALUES (76, 28, '第二章 编码', 0, '2022-08-29 21:08:11', '2022-08-29 21:08:11', 0);
INSERT INTO `chapter` VALUES (77, 29, '第一章 html1', 0, '2022-08-30 21:41:54', '2022-08-30 21:41:54', 0);
INSERT INTO `chapter` VALUES (78, 21, '第一章 测试1', 0, '2022-09-01 14:25:45', '2022-09-01 14:25:45', 0);
INSERT INTO `chapter` VALUES (79, 21, '第四节 4', 0, '2022-09-01 16:21:24', '2022-09-01 16:21:28', 1);
INSERT INTO `chapter` VALUES (80, 20, 'mysql', 0, '2022-09-03 23:09:03', '2022-09-03 23:09:03', 0);
INSERT INTO `chapter` VALUES (81, 22, 'mysql', 0, '2022-09-03 23:18:56', '2022-09-03 23:18:56', 0);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程id',
  `teacher_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '讲师id',
  `user_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '会员id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '会员头像',
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论内容',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE,
  INDEX `idx_teacher_id`(`teacher_id`) USING BTREE,
  INDEX `idx_member_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '评论' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `teacher_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程讲师ID',
  `subject_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程专业ID',
  `subject_parent_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程专业父级ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程标题',
  `price` decimal(10, 2) UNSIGNED NOT NULL COMMENT '课程销售价格，设置为0则可免费观看',
  `lesson_num` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '总课时',
  `duration_sum` int(0) NOT NULL DEFAULT 0 COMMENT '视频总时长（秒）',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程封面图片路径',
  `buy_count` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '销售数量',
  `view_count` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '浏览数量',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '课程状态 0未发布 1已发布',
  `publish_time` datetime(0) NULL DEFAULT NULL COMMENT '课程发布时间',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_title`(`title`) USING BTREE,
  INDEX `idx_subject_id`(`subject_id`) USING BTREE,
  INDEX `idx_teacher_id`(`teacher_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 1, 16, 14, 'Spark', 21800.00, 0, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/10/39e51c23-e2fa-4a8a-9239-3c0d5268f34d.jpg', 1679, 34634, 1, '2022-09-01 11:30:14', '2022-08-28 03:05:16', '2022-09-07 12:21:05', 0);
INSERT INTO `course` VALUES (2, 1, 2, 1, 'java基础课程', 19800.00, 2, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/09/bd89ae0b-e660-47fd-9ed7-ad8733a46c65.jpg', 5999, 10076, 0, NULL, '2022-08-28 03:05:16', '2022-09-07 12:21:07', 0);
INSERT INTO `course` VALUES (3, 1, 15, 14, '尚硅谷大数据技术之Flume（2019新版）', 20800.00, 0, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/09/806572e0-6d85-485e-8784-d2cb4716a881.jpg', 4234, 23780, 0, NULL, '2022-08-28 03:05:16', '2022-09-07 12:21:11', 0);
INSERT INTO `course` VALUES (4, 2, 15, 14, '尚硅谷大数据技术之HBase（2019新版）', 19800.00, 0, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/09/a16c5694-3037-4330-b1c5-438052081fcb.jpg', 6675, 90383, 0, NULL, '2022-08-28 03:05:16', '2022-09-07 12:21:18', 0);
INSERT INTO `course` VALUES (5, 1, 1, 2, '尚硅谷大数据技术之Kafka（2019新版）', 22800.00, 0, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/09/f5ada6ba-8d12-4c00-8ad9-6a521f71b0da.jpg', 2349, 13546, 0, NULL, '2022-08-28 03:05:16', '2022-09-07 12:21:20', 0);
INSERT INTO `course` VALUES (6, 2, 15, 14, '尚硅谷大数据项目之电商数仓', 21800.00, 0, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/10/dd2da284-b37f-4818-ba9a-c55667837f5a.jpg', 898, 8977, 0, NULL, '2022-08-28 03:05:16', '2022-09-07 12:21:22', 0);
INSERT INTO `course` VALUES (7, 2, 15, 14, '尚硅谷大数据技术之Sqoop', 23800.00, 0, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/10/9452b057-6ad6-4600-891e-b168083fee4d.jpg', 1286, 45695, 0, NULL, '2022-08-28 03:05:16', '2022-09-07 12:21:24', 0);
INSERT INTO `course` VALUES (8, 1, 16, 14, '大数据Scala入门到精通（新版）', 0.00, 0, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/10/f2cd321f-6378-4e92-8515-0b8f42f2770b.jpg', 900, 15496, 0, NULL, '2022-08-28 03:05:16', '2022-09-07 12:21:30', 0);
INSERT INTO `course` VALUES (14, 1, 4, 3, 'XHTML CSS2 JS整站制作教程课程学习', 21800.00, 3, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/09/2829c8d1-f16f-44a4-96cd-d13b451a8d56.jpg', 3452, 21010, 0, NULL, '2022-08-28 03:05:16', '2022-09-07 12:21:33', 0);
INSERT INTO `course` VALUES (15, 2, 2, 1, '  14417人 分享 收藏 SpringMVC', 22800.00, 23, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/09/273ddd90-5ef7-40e5-9ffd-86e8175fc229.jpg', 892, 9108, 0, NULL, '2022-08-28 03:05:16', '2022-09-07 12:21:36', 0);
INSERT INTO `course` VALUES (18, 2, 2, 1, 'Java精品课程', 22800.00, 20, 100000, 'https://online-teach-file.oss-cn-beijing.aliyuncs.com/cover/2021/08/09/e4ee03d7-52bd-41ca-99f9-04dc23250a71.jpg', 6784, 67629, 1, '2022-09-01 14:16:19', '2022-08-28 03:05:16', '2022-09-07 12:21:38', 0);
INSERT INTO `course` VALUES (19, 1, 2, 1, 'JAVA之Mysql基础', 1000.00, 10, 100201, 'https://ggkt-byk-1313520900.cos.ap-beijing.myqcloud.com/2022/08/27/4a9b124ee0d634e503e075b3f02b98b6.jpeg', 0, 160, 1, '2022-09-01 09:57:42', '2022-08-28 11:09:22', '2022-09-07 12:21:42', 0);
INSERT INTO `course` VALUES (20, 7, 4, 3, '测试课程1', 100.00, 10, 0, 'https://ggkt-byk-1313520900.cos.ap-beijing.myqcloud.com/2022/08/28/157f41f569034b7a9363cf85a436fb861.jpg', 0, 0, 1, '2022-09-03 23:13:11', '2022-08-28 19:04:56', '2022-08-28 19:04:56', 0);
INSERT INTO `course` VALUES (21, 8, 2, 1, '测试课程2', 100.00, 10, 0, 'https://ggkt-byk-1313520900.cos.ap-beijing.myqcloud.com/2022/08/28/ecca769709404deb8bbf4b62833988781.jpg', 0, 25, 0, NULL, '2022-08-28 20:36:00', '2022-08-28 20:36:00', 0);
INSERT INTO `course` VALUES (22, 9, 2, 1, '测试课程3fafu', 666.00, 90, 0, 'https://ggkt-byk-1313520900.cos.ap-beijing.myqcloud.com/2022/08/30/2ab4c068132e47d0aba09666f766c81fjava.jpeg', 0, 34, 1, '2022-09-03 23:47:23', '2022-08-28 20:42:14', '2022-08-30 22:20:13', 0);
INSERT INTO `course` VALUES (27, 5, 12, 11, 'java基础', 99.00, 10, 0, 'https://ggkt-byk-1313520900.cos.ap-beijing.myqcloud.com/2022/08/30/8560a600ba664c54a7df6f1a8fe6c9dajava.jpeg', 0, 0, 0, NULL, '2022-08-28 22:37:38', '2022-08-30 23:18:32', 1);
INSERT INTO `course` VALUES (28, 8, 4, 3, 'vue高级开发', 99.00, 10, 0, 'https://ggkt-byk-1313520900.cos.ap-beijing.myqcloud.com/2022/08/29/0d25073cc8c0404daaccc137467659bcvue.jpeg', 0, 0, 0, NULL, '2022-08-29 21:06:12', '2022-08-29 21:06:12', 0);
INSERT INTO `course` VALUES (29, 2, 4, 3, 'html入门技术', 10.00, 10, 0, 'https://ggkt-byk-1313520900.cos.ap-beijing.myqcloud.com/2022/08/30/4724c5fbc42f4382b1eb76d3dba8cebdhtml.jpeg', 0, 0, 1, '2022-08-30 22:12:37', '2022-08-30 21:41:33', '2022-08-30 21:41:33', 0);

-- ----------------------------
-- Table structure for course_collect
-- ----------------------------
DROP TABLE IF EXISTS `course_collect`;
CREATE TABLE `course_collect`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程讲师ID',
  `user_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '会员ID',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程收藏' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of course_collect
-- ----------------------------

-- ----------------------------
-- Table structure for course_description
-- ----------------------------
DROP TABLE IF EXISTS `course_description`;
CREATE TABLE `course_description`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_id` bigint(0) NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '课程简介',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程简介' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_description
-- ----------------------------
INSERT INTO `course_description` VALUES (1, 1, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>', '2022-08-28 03:29:33', '2022-09-07 12:22:03', 0);
INSERT INTO `course_description` VALUES (2, 2, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>', '2022-08-28 03:30:07', '2022-09-07 12:22:06', 0);
INSERT INTO `course_description` VALUES (3, 3, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>', '2022-08-28 03:30:47', '2022-09-07 12:22:07', 0);
INSERT INTO `course_description` VALUES (4, 4, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>\n<p>------------------------------------</p>\n<p>视频特点：</p>\n<p>通过学习本Java视频教程，大家能够真正将Java基础知识学以致用、活学活用，构架Java编程思想，牢牢掌握\"源码级\"的Javase核心技术，并为后续JavaWeb等技术的学习奠定扎实基础。<br /><br />1.通俗易懂，细致入微：每个知识点高屋建瓴，深入浅出，简洁明了的说明问题<br />2.具实战性：全程真正代码实战，涵盖上百个企业应用案例及练习<br />3.深入：源码分析，更有 Java 反射、动态代理的实际应用等<br />4.登录尚硅谷官网，技术讲师免费在线答疑</p>\n', '2022-08-28 03:33:18', '2022-09-07 12:22:10', 0);
INSERT INTO `course_description` VALUES (5, 5, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>', '2022-08-28 03:33:18', '2022-09-07 12:22:55', 0);
INSERT INTO `course_description` VALUES (6, 6, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>', '2022-08-28 03:33:18', '2022-09-07 12:22:59', 0);
INSERT INTO `course_description` VALUES (7, 7, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>', '2022-08-28 03:33:18', '2022-09-07 12:23:01', 0);
INSERT INTO `course_description` VALUES (8, 8, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>\n<p>------------------------------------</p>\n<p>视频特点：</p>\n<p>通过学习本Java视频教程，大家能够真正将Java基础知识学以致用、活学活用，构架Java编程思想，牢牢掌握\"源码级\"的Javase核心技术，并为后续JavaWeb等技术的学习奠定扎实基础。<br /><br />1.通俗易懂，细致入微：每个知识点高屋建瓴，深入浅出，简洁明了的说明问题<br />2.具实战性：全程真正代码实战，涵盖上百个企业应用案例及练习<br />3.深入：源码分析，更有 Java 反射、动态代理的实际应用等<br />4.登录尚硅谷官网，技术讲师免费在线答疑</p>', '2022-08-28 03:33:18', '2022-09-07 12:23:05', 0);
INSERT INTO `course_description` VALUES (9, 14, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>', '2022-08-28 03:33:18', '2022-09-07 12:23:08', 0);
INSERT INTO `course_description` VALUES (10, 15, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>', '2022-08-28 03:33:18', '2022-09-07 12:23:11', 0);
INSERT INTO `course_description` VALUES (11, 18, '<p>本套Java视频完全针对零基础学员，课堂实录，自发布以来，好评如潮！Java视频中注重与学生互动，讲授幽默诙谐、细致入微，覆盖Java基础所有核心知识点，同类Java视频中也是代码量大、案例多、实战性强的。同时，本Java视频教程注重技术原理剖析，深入JDK源码，辅以代码实战贯穿始终，用实践驱动理论，并辅以必要的代码练习。</p>', '2022-08-28 03:33:18', '2022-09-07 12:23:14', 0);
INSERT INTO `course_description` VALUES (12, 19, ' 数据库就像一棵常青的技能树，无论是初级程序员还是CTO、首席架构师都能从中汲取足够的技术养料。菜鸟往往积累单点技术，如 DML、DDL、存储过程和函数、约束、索引的数据结构，老鸟则需要吃透底层原理，数据库事务ACID如何实现？锁机制与MVCC又是怎么回事？分布式场景下数据库怎么优化保持高性能？\n      知道怎么用是一方面，知道为什么则是更为稀缺的能力。程序员核心能力中至关重要的一点：精通数据库。精通意味着：第一，形成知识网，更灵活地应对突发问题；第二，懂底层原理，更自由地应对复杂多变的业务场景。', '2022-08-28 11:09:22', '2022-09-07 12:23:35', 0);
INSERT INTO `course_description` VALUES (20, NULL, '测试简介', '2022-08-28 19:04:56', '2022-08-28 19:04:56', 0);
INSERT INTO `course_description` VALUES (21, NULL, '测试简介2', '2022-08-28 20:36:00', '2022-08-28 20:36:00', 0);
INSERT INTO `course_description` VALUES (22, NULL, '简介fafu', '2022-08-28 20:42:14', '2022-08-28 20:42:14', 0);
INSERT INTO `course_description` VALUES (28, NULL, 'vue高级', '2022-08-29 21:06:12', '2022-08-29 21:06:12', 0);
INSERT INTO `course_description` VALUES (29, NULL, '简介', '2022-08-30 21:41:33', '2022-08-30 21:41:33', 0);

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `id` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '主键',
  `title` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类别名称',
  `parent_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '父ID',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序字段',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程科目' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (1, '后端开发', 0, 1, '2022-08-29 15:47:25', '2022-09-07 12:23:58', 0);
INSERT INTO `subject` VALUES (2, 'Java', 1, 1, '2022-08-29 15:47:25', '2022-09-07 12:24:34', 0);
INSERT INTO `subject` VALUES (3, '前端开发', 0, 3, '2022-08-29 15:47:25', '2022-09-07 12:24:38', 0);
INSERT INTO `subject` VALUES (4, 'JavaScript', 3, 4, '2022-08-29 15:47:25', '2022-09-07 12:24:41', 0);
INSERT INTO `subject` VALUES (5, '云计算', 0, 5, '2019-09-29 15:47:25', '2022-08-28 12:25:58', 0);
INSERT INTO `subject` VALUES (6, 'Docker', 5, 5, '2022-08-29 15:47:25', '2022-09-07 12:25:25', 0);
INSERT INTO `subject` VALUES (7, 'Linux', 5, 6, '2019-09-29 15:47:25', '2019-09-29 15:47:25', 0);
INSERT INTO `subject` VALUES (8, '系统/运维', 0, 7, '2022-08-29 15:47:25', '2022-09-07 12:25:35', 0);
INSERT INTO `subject` VALUES (9, 'Linux', 8, 7, '2022-08-29 15:47:25', '2022-09-07 12:25:38', 0);
INSERT INTO `subject` VALUES (10, 'Windows', 8, 8, '2022-08-29 15:47:25', '2022-09-07 12:25:41', 0);
INSERT INTO `subject` VALUES (11, '数据库', 0, 9, '2022-08-29 15:47:25', '2022-09-07 12:25:44', 0);
INSERT INTO `subject` VALUES (12, 'MySQL', 11, 9, '2022-08-29 15:47:25', '2022-09-07 12:25:48', 0);
INSERT INTO `subject` VALUES (13, 'MongoDB', 11, 10, '2022-08-29 15:47:25', '2022-09-07 12:25:51', 0);
INSERT INTO `subject` VALUES (14, '大数据', 0, 11, '2022-08-29 15:47:25', '2022-09-07 12:25:53', 0);
INSERT INTO `subject` VALUES (15, 'Hadoop', 14, 11, '2022-08-29 15:47:25', '2022-09-07 12:25:56', 0);
INSERT INTO `subject` VALUES (16, 'Spark', 14, 12, '2022-08-29 15:47:25', '2022-09-07 12:26:01', 0);
INSERT INTO `subject` VALUES (17, '人工智能', 0, 13, '2022-08-29 15:47:25', '2022-09-07 12:26:04', 0);
INSERT INTO `subject` VALUES (18, 'Python', 17, 13, '2022-08-29 15:47:25', '2022-09-07 12:26:07', 0);
INSERT INTO `subject` VALUES (19, '编程语言', 0, 14, '2022-08-29 15:47:25', '2022-09-07 12:26:09', 0);
INSERT INTO `subject` VALUES (20, 'Java', 19, 14, '2022-08-29 15:47:25', '2022-09-07 12:26:31', 0);
INSERT INTO `subject` VALUES (21, 'Python', 19, 2, '2022-08-30 16:19:22', '2022-09-07 12:26:39', 0);
INSERT INTO `subject` VALUES (22, 'HTML/CSS', 19, 3, '2022-08-30 16:19:22', '2022-09-07 12:26:43', 0);
INSERT INTO `subject` VALUES (111, '一级分类', 0, 100, '2022-08-28 16:26:38', '2022-08-28 16:26:38', 0);
INSERT INTO `subject` VALUES (222, '二级分类', 111, 101, '2022-08-28 16:26:38', '2022-08-28 16:26:38', 0);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '讲师姓名',
  `intro` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '讲师简介',
  `career` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '讲师资历,一句话说明讲师',
  `level` int(0) UNSIGNED NOT NULL COMMENT '头衔 1高级讲师 2首席讲师',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '讲师头像',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
  `join_date` date NULL DEFAULT NULL COMMENT '入驻时间',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '讲师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '上官老师', 'string', 'string', 0, 'string', 0, '2022-08-26', '2022-08-25 03:18:36', '2022-09-07 12:27:08', 0);
INSERT INTO `teacher` VALUES (2, '李老师尚硅谷', '高级讲师尚硅谷', '高级讲师', 1, 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIB1WtJibSTqXvnJccFhOR1cSpVpdQ3BP5eTPCUO9CyI1feDefMoUFyA4E2C1oe2j8VMLrtAyBricvA/132', 0, '2021-11-02', '2022-08-25 03:18:51', '2022-09-07 12:27:10', 0);
INSERT INTO `teacher` VALUES (4, '钟老师', '高级讲师', '高级讲师', 1, 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIB1WtJibSTqXvnJccFhOR1cSpVpdQ3BP5eTPCUO9CyI1feDefMoUFyA4E2C1oe2j8VMLrtAyBricvA/132', 0, '2021-11-02', '2022-08-25 05:51:21', '2022-09-07 12:27:13', 0);
INSERT INTO `teacher` VALUES (5, '钱老师', '钱老师', '钱老师', 1, 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eo8uwBUP6f5JtibWlkmpPAVjsSsibMaFupwFRyo2Vr5Gkc33uctiasfOFgZADd5X1NYP82bKYjMDbFnA/132', 3, '2021-11-01', '2022-08-25 13:26:58', '2022-09-07 12:27:15', 0);
INSERT INTO `teacher` VALUES (6, '宋老师', '宋老师', '宋老师', 1, 'https://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eo8uwBUP6f5JtibWlkmpPAVjsSsibMaFupwFRyo2Vr5Gkc33uctiasfOFgZADd5X1NYP82bKYjMDbFnA/132', 4, '2021-11-02', '2022-08-25 10:25:58', '2022-09-07 12:27:19', 0);
INSERT INTO `teacher` VALUES (7, '欧阳老师', 'string', 'string', 0, 'string', 0, '2022-08-26', '2022-08-26 22:19:38', '2022-08-26 22:19:38', 0);
INSERT INTO `teacher` VALUES (8, '东方讲师', '666', '高级特技', 1, NULL, 0, '2022-08-01', '2022-08-27 17:09:27', '2022-08-27 17:09:27', 0);
INSERT INTO `teacher` VALUES (9, '西门讲师', '333', '333', 1, NULL, 0, '2022-08-03', '2022-08-27 17:47:39', '2022-08-27 17:47:39', 0);
INSERT INTO `teacher` VALUES (10, '张无忌', '张无忌', '张无忌', 1, 'https://ggkt-byk-1313520900.cos.ap-beijing.myqcloud.com/2022/08/27/2b27f7e842c54eefa6744cc926901b3b1.jpg', 0, '2022-08-04', '2022-08-27 23:13:12', '2022-08-27 23:13:12', 0);

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '课程ID',
  `chapter_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '章节ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '节点名称',
  `video_source_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '云端视频资源',
  `video_original_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '原始文件名称',
  `sort` int(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序字段',
  `play_count` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '播放次数',
  `is_free` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否可以试听：0收费 1免费',
  `duration` float NOT NULL DEFAULT 0 COMMENT '视频时长（秒）',
  `size` bigint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '视频源文件大小（字节）',
  `version` bigint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '乐观锁',
  `status` tinyint(0) NOT NULL DEFAULT 0 COMMENT '状态',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_course_id`(`course_id`) USING BTREE,
  INDEX `idx_chapter_id`(`chapter_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '课程视频' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 18, 16, '第一节', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:38:02', 0);
INSERT INTO `video` VALUES (2, 14, 5, 'html基础', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:39:06', 0);
INSERT INTO `video` VALUES (4, 18, 26, 'IO高级', '3b71d85d93554e7dbb59becdf823f63d', '视频', 1, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:39:10', 0);
INSERT INTO `video` VALUES (5, 18, 16, 'IO流基础', '3b71d85d93554e7dbb59becdf823f63d', '视频.mp4', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:39:15', 0);
INSERT INTO `video` VALUES (6, 2, 2, '第一课时', '3b71d85d93554e7dbb59becdf823f63d', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:39:25', 0);
INSERT INTO `video` VALUES (7, 2, 2, '第二课时', '3b71d85d93554e7dbb59becdf823f63d', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:39:28', 0);
INSERT INTO `video` VALUES (8, 2, 2, '第三课时', '3b71d85d93554e7dbb59becdf823f63d', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:39:30', 0);
INSERT INTO `video` VALUES (9, 2, 2, '第四课时', '3b71d85d93554e7dbb59becdf823f63d', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:39:33', 0);
INSERT INTO `video` VALUES (10, 2, 2, '第五课时', '3b71d85d93554e7dbb59becdf823f63d', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 5, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:39:36', 0);
INSERT INTO `video` VALUES (11, 3, 3, '01-尚硅谷-Flume（课程介绍）', '3b71d85d93554e7dbb59becdf823f63d', '01-尚硅谷-Flume（课程介绍）.avi', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:40:45', 0);
INSERT INTO `video` VALUES (12, 3, 3, '02-尚硅谷-Flume（概念）', '3b71d85d93554e7dbb59becdf823f63d', '02-尚硅谷-Flume（概念）.avi', 1, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:40:47', 0);
INSERT INTO `video` VALUES (13, 3, 3, '03-尚硅谷-Flume（概念）', '3b71d85d93554e7dbb59becdf823f63d', '03-尚硅谷-Flume（架构）.avi', 2, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:40:49', 0);
INSERT INTO `video` VALUES (14, 4, 4, '01_尚硅谷_HBase_课程介绍', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:40:52', 0);
INSERT INTO `video` VALUES (15, 4, 4, '02_尚硅谷_HBase_介绍', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:40:54', 0);
INSERT INTO `video` VALUES (16, 4, 4, '03_尚硅谷_HBase_特点', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:40:56', 0);
INSERT INTO `video` VALUES (17, 5, 7, '01_尚硅谷_Kafka_课程介绍', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:40:59', 0);
INSERT INTO `video` VALUES (18, 5, 7, '02_尚硅谷_Kafka_消息队列介绍', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:41:03', 0);
INSERT INTO `video` VALUES (19, 5, 7, '03_尚硅谷_Kafka_概念', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:41:05', 0);
INSERT INTO `video` VALUES (20, 14, 6, 'CSS基础', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:41:08', 0);
INSERT INTO `video` VALUES (21, 15, 8, 'spring mvc基础', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:15', 0);
INSERT INTO `video` VALUES (22, 15, 8, 'spring mvc集成', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:18', 0);
INSERT INTO `video` VALUES (23, 6, 9, '01_数仓项目_课程介绍', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:21', 0);
INSERT INTO `video` VALUES (24, 6, 9, '02_数仓项目_采集课程介绍', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:23', 0);
INSERT INTO `video` VALUES (25, 6, 9, '03_数仓项目_数仓概念_业务数据', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:25', 0);
INSERT INTO `video` VALUES (26, 7, 10, '01_尚硅谷_Sqoop_课程介绍', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:28', 0);
INSERT INTO `video` VALUES (27, 7, 10, '02_尚硅谷_Sqoop_安装', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:32', 0);
INSERT INTO `video` VALUES (28, 7, 10, '03_尚硅谷_Sqoop_原理', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:34', 0);
INSERT INTO `video` VALUES (29, 8, 11, '01 - Scala - 语言介绍', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:37', 0);
INSERT INTO `video` VALUES (30, 8, 11, '02 - Scala - map集合', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:41', 0);
INSERT INTO `video` VALUES (31, 1, 12, '01_Spark之课程体系介绍', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:43', 0);
INSERT INTO `video` VALUES (32, 1, 12, '02_Spark之课程原理', '3b71d85d93554e7dbb59becdf823f63d', '', 0, 0, 0, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:46', 0);
INSERT INTO `video` VALUES (33, 18, 15, '第一节：Java简介', '3b71d85d93554e7dbb59becdf823f63d', '1', 1, 1000, 1, 100, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:48', 0);
INSERT INTO `video` VALUES (34, 18, 15, '第二节：表达式和赋值语句', '3b71d85d93554e7dbb59becdf823f63d', '7 - How Do I Find Time for My ', 2, 999, 1, 100, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:50', 0);
INSERT INTO `video` VALUES (35, 18, 15, '第三节：String类', '3b71d85d93554e7dbb59becdf823f63d', 'eae2b847ef8503b81f5d5593d769dde2.mp4', 3, 888, 0, 100, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:52', 0);
INSERT INTO `video` VALUES (36, 18, 15, '第四节：程序风格', '3b71d85d93554e7dbb59becdf823f63d', '00-day10总结.avi', 4, 666, 0, 100, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:55', 0);
INSERT INTO `video` VALUES (37, 19, 65, 'mysql安装', '3b71d85d93554e7dbb59becdf823f63d', NULL, 0, 0, 1, 0, 0, 1, 0, '2022-09-05 03:06:04', '2022-09-07 12:42:57', 0);
INSERT INTO `video` VALUES (38, 19, 65, 'mysql配置', '3b71d85d93554e7dbb59becdf823f63d', '3.msyql配置.avi', 1, 0, 1, 0, 0, 1, 0, '2022-09-06 11:15:52', '2022-09-07 12:40:12', 0);
INSERT INTO `video` VALUES (39, 19, 66, 'mysql内部结构', '3b71d85d93554e7dbb59becdf823f63d', '4.mysql的内部结构.avi', 0, 0, 1, 0, 0, 1, 0, '2022-09-07 11:17:34', '2022-09-07 12:40:05', 0);
INSERT INTO `video` VALUES (40, 19, 66, '认识索引', '3b71d85d93554e7dbb59becdf823f63d', '8.认识索引.avi', 1, 0, 0, 0, 0, 1, 0, '2022-09-07 11:18:45', '2022-09-07 12:40:01', 0);
INSERT INTO `video` VALUES (41, 19, 66, '导入测试数据', 'a4b66c13cfaf4071bdb7ce988e7d7444', '13.导入50w条记录.avi', 0, 0, 0, 201.2, 0, 1, 0, '2022-09-07 16:15:59', '2022-09-07 12:39:57', 0);
INSERT INTO `video` VALUES (42, 27, 73, '12345', 'd825f8653a74c6a9a7ce07da104f310', '01-今天内容的介绍mp4', 0, 0, 0, 0, 0, 1, 0, '2022-08-28 22:44:54', '2022-08-30 23:18:32', 1);
INSERT INTO `video` VALUES (43, 28, 75, '第一节 入门1', NULL, NULL, 0, 0, 1, 0, 0, 1, 0, '2022-08-29 21:07:29', '2022-08-29 21:07:29', 0);
INSERT INTO `video` VALUES (44, 28, 75, '第二节 入门2', NULL, NULL, 0, 0, 1, 0, 0, 1, 0, '2022-08-29 21:07:53', '2022-08-29 21:07:53', 0);
INSERT INTO `video` VALUES (45, 29, 77, '第一节 html11', NULL, NULL, 0, 0, 0, 0, 0, 1, 0, '2022-08-30 21:42:13', '2022-08-30 21:42:13', 0);
INSERT INTO `video` VALUES (46, 21, 78, '第一节 1', NULL, NULL, 0, 0, 0, 0, 0, 1, 0, '2022-09-01 14:26:36', '2022-09-01 14:26:36', 0);
INSERT INTO `video` VALUES (47, 21, 78, '第二节 2', '387702305141564537', '尚硅谷-01-MySQL教程简介.mp4', 0, 0, 1, 0, 0, 1, 0, '2022-09-01 15:52:24', '2022-09-01 15:52:24', 0);
INSERT INTO `video` VALUES (48, 21, 78, '第三节 3', '387702305350453109', '尚硅谷-02-为什么使用数据库及数据库常用概念.mp4', 0, 0, 1, 0, 0, 1, 0, '2022-09-01 15:56:02', '2022-09-01 19:05:11', 1);
INSERT INTO `video` VALUES (49, 21, 78, '第四节', NULL, NULL, 0, 0, 1, 0, 0, 1, 0, '2022-09-01 16:21:45', '2022-09-01 16:21:54', 1);
INSERT INTO `video` VALUES (50, 21, 78, '第四节', '387702305351191400', '尚硅谷-03-常见的DBMS的对比.mp4', 0, 0, 1, 0, 0, 1, 0, '2022-09-01 16:22:51', '2022-09-01 19:05:14', 1);
INSERT INTO `video` VALUES (51, 21, 78, '第三节 3', '387702305355372635', '尚硅谷-01-MySQL教程简介.mp4', 0, 0, 1, 0, 0, 1, 0, '2022-09-01 19:06:03', '2022-09-01 19:06:45', 1);
INSERT INTO `video` VALUES (52, 20, 80, 'mysql 1', NULL, NULL, 0, 0, 1, 0, 0, 1, 0, '2022-09-03 23:12:55', '2022-09-03 23:12:55', 0);
INSERT INTO `video` VALUES (53, 22, 81, 'mysql', '387702305502742221', '尚硅谷-01-MySQL教程简介.mp4', 0, 0, 1, 0, 0, 1, 0, '2022-09-03 23:19:36', '2022-09-03 23:39:38', 0);

-- ----------------------------
-- Table structure for video_visitor
-- ----------------------------
DROP TABLE IF EXISTS `video_visitor`;
CREATE TABLE `video_visitor`  (
  `id` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `course_id` bigint(0) NULL DEFAULT NULL COMMENT '课程id',
  `video_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '视频id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '来访者用户id',
  `nick_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `join_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '进入时间',
  `leave_time` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '离开的时间',
  `duration` bigint(0) NULL DEFAULT NULL COMMENT '用户停留的时间(单位：秒)',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '视频来访者记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_visitor
-- ----------------------------
INSERT INTO `video_visitor` VALUES (1, 19, 37, '1', '晴天', '2022-08-26 21:39:27.089', NULL, 4, '2022-08-26 13:39:27', '2022-09-07 12:28:44', 0);
INSERT INTO `video_visitor` VALUES (2, 19, 38, '1', '晴天', '2022-08-26 21:39:32.071', '2022-08-26  21:44:24.026', 696, '2022-08-26 13:39:32', '2022-09-07 12:29:16', 0);
INSERT INTO `video_visitor` VALUES (3, 7, 26, '1', '晴天', '2022-08-27 18:09:46.899', '2022-08-27 18:10:13.004', 5, '2022-08-27 10:09:47', '2022-09-07 12:31:35', 0);
INSERT INTO `video_visitor` VALUES (4, 19, 38, '24', '简', '2022-08-27 18:14:53.542', NULL, 2, '2022-08-27 10:14:53', '2022-09-07 12:33:50', 0);
INSERT INTO `video_visitor` VALUES (5, 19, 37, '27', '******', '2022-08-27 18:54:29.848', '2022-08-2718:10:13.004', 3, '2022-08-27 10:09:47', '2022-09-07 12:33:07', 0);
INSERT INTO `video_visitor` VALUES (6, 19, 37, '1', '晴天', '2022-08-27 18:55:12.082', '2022-08-27 18:56:16.536', 33, '2022-08-27 10:55:12', '2022-09-07 12:33:52', 0);
INSERT INTO `video_visitor` VALUES (7, 19, 38, '1', '晴天', '2022-08-27 18:55:13.395', '2022-08-27 18:56:45.709', 706, '2022-08-27 10:55:13', '2022-09-07 12:33:55', 0);
INSERT INTO `video_visitor` VALUES (8, 19, 37, '1', '晴天', '2022-08-27 18:56:13.368', '2022-08-27 18:58:18.665', 13, '2022-08-27 10:56:13', '2022-09-07 12:34:31', 0);
INSERT INTO `video_visitor` VALUES (9, 19, 39, '1', '晴天', '2022-08-27 18:56:21.513', '2022-08-27 18:56:43.032', 313, '2022-08-27 10:56:21', '2022-09-07 12:34:29', 0);
INSERT INTO `video_visitor` VALUES (10, 19, 40, '1', '晴天', '2022-08-27 18:56:32.061', '2022-08-27 18:56:37.113', 202, '2022-08-27 10:56:32', '2022-09-07 12:34:34', 0);
INSERT INTO `video_visitor` VALUES (11, 19, 40, '1', '晴天', '2022-08-27 18:58:23.67', '2022-08-27 19:38:19.261', 114, '2022-08-27 10:58:23', '2022-09-07 12:34:37', 0);
INSERT INTO `video_visitor` VALUES (12, 19, 40, '1', '晴天', '2022-08-28 10:11:44.531', '2022-08-28 10:11:44.531', 115, '2022-08-28 02:11:58', '2022-09-07 12:35:08', 0);
INSERT INTO `video_visitor` VALUES (13, 19, 38, '1', '晴天', '2022-08-29 09:11:55.905', '2022-08-29 21:05:35.152', 943, '2022-08-29 01:12:12', '2022-09-07 12:35:24', 0);
INSERT INTO `video_visitor` VALUES (14, 4, 15, '1', '晴天', '2022-08-29 17:07:25.349', '2022-08-29 17:07:45.149', 304, '2022-08-29 09:07:25', '2022-09-07 12:35:40', 0);
INSERT INTO `video_visitor` VALUES (15, 8, 30, '1', '晴天', '2022-08-29 17:14:35.189', NULL, 2, '2022-08-29 09:14:35', '2022-09-07 12:35:47', 0);
INSERT INTO `video_visitor` VALUES (16, 19, 37, '29', NULL, '2022-08-29 18:38:39.719 ', NULL, 3, '2022-08-29 10:38:39', '2022-09-07 12:35:51', 0);
INSERT INTO `video_visitor` VALUES (17, 19, 38, '1', '晴天', '2022-08-30 08:02:41.382', NULL, 944, '2022-08-30 00:02:41', '2022-09-07 12:36:12', 0);
INSERT INTO `video_visitor` VALUES (18, 18, 33, '1', '晴天', '2022-09-01 13:49:37.599', NULL, 11, '2022-09-01 13:49:38', '2022-09-07 12:37:19', 0);
INSERT INTO `video_visitor` VALUES (19, 18, 33, '1', '晴天', '2022-09-01 13:49:32.6', NULL, 6, '2022-09-01 05:49:36', '2022-09-07 12:37:00', 0);
INSERT INTO `video_visitor` VALUES (20, 18, 33, '1', '晴天', '2022-09-01 13:49:27.665', NULL, 1, '2022-09-01 05:49:37', '2022-09-07 12:36:56', 0);
INSERT INTO `video_visitor` VALUES (21, 18, 34, '1', '晴天', '2022-09-01 13:52:02.601', '2022-09-01 13:52:14.295', 13, '2022-09-01 05:52:02', '2022-09-07 12:36:53', 0);
INSERT INTO `video_visitor` VALUES (22, 19, 38, '1', '晴天', '2022-09-01 09:26:31.258', NULL, 1, '2022-09-01 09:26:31', '2022-09-07 12:36:49', 0);
INSERT INTO `video_visitor` VALUES (23, 19, 37, '27', '我是', '2022-09-01 11:42:31.06', NULL, 95, '2022-09-01 11:42:31', '2022-09-07 12:36:47', 0);

-- ----------------------------
-- View structure for video_visitor_max_view
-- ----------------------------
DROP VIEW IF EXISTS `video_visitor_max_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `video_visitor_max_view` AS select max(`video_visitor`.`id`) AS `max_id`,`video_visitor`.`course_id` AS `course_id`,`video_visitor`.`video_id` AS `video_id`,`video_visitor`.`user_id` AS `user_id` from `video_visitor` group by `video_visitor`.`course_id`,`video_visitor`.`video_id`,`video_visitor`.`user_id`;

SET FOREIGN_KEY_CHECKS = 1;
