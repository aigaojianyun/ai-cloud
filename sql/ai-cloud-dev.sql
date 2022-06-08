/*
 Navicat Premium Data Transfer

 Source Server         : ai-cloud
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : 127.0.0.1:3306
 Source Schema         : ai-cloud-dev

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 05/06/2022 17:13:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户id',
  `user_name` bigint(11) NOT NULL COMMENT '用户账号',
  `password` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户密码',
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备唯一标识',
  `device_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户设备id',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户绑定手机号',
  `head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `nick_name` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别 1.男 2.女',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `birthday` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '出生年月',
  `sign` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '签名',
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '国家',
  `capital` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '城市',
  `counties` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '县区',
  `bind_qq_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'QQ绑定的id',
  `bind_wechat_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绑定微信id',
  `bind_sina_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绑定微博id',
  `bind_alipay_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绑定支付宝id',
  `activate` int(11) NULL DEFAULT 1 COMMENT '是否激活; 用户注册后未登录过，即为此用户未激活 1：未激活 2：已激活',
  `activate_time` datetime NULL DEFAULT NULL COMMENT '激活时间',
  `fans` int(11) NULL DEFAULT 0 COMMENT '粉丝数',
  `attention` int(11) NULL DEFAULT 0 COMMENT '用户关注数',
  `opus` int(11) NULL DEFAULT 0 COMMENT '用户作品数量',
  `likes` int(11) NULL DEFAULT 0 COMMENT '点赞数',
  `kbs` decimal(13, 4) NULL DEFAULT 0.0000 COMMENT '获取的总KB值',
  `invitation_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户邀请码',
  `invitation_qrcode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邀请者二维码',
  `invitation_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邀请者id',
  `invitation_url_and` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '推广安卓URL',
  `invitation_url_ios` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '推广IOSURL',
  `invitation_url_weixin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '推广微信小程序URL',
  `invitation_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '推广链',
  `vip_type` int(11) NOT NULL DEFAULT 1 COMMENT '会员类型; 1：普通会员 2：VIP会员 3：SVIP会员',
  `vip_start_time` datetime NULL DEFAULT NULL COMMENT '会员开始时间',
  `vip_end_time` datetime NULL DEFAULT NULL COMMENT '会员结束时间',
  `realname_auth` int(11) NOT NULL DEFAULT 1 COMMENT '是否实名认证；1：未验证，2：已验证',
  `user_type` int(11) NOT NULL DEFAULT 1 COMMENT '用户类型；1：普通用户 2：VIP用户 3：SVIP用户',
  `weixin_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信用户头像',
  `weixin_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信登录openid',
  `session_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '微信登录会话KEY',
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `status_flag` int(11) NOT NULL DEFAULT 0 COMMENT '状态：0：启用，2：停用',
  `delete_flag` int(11) NOT NULL DEFAULT 0 COMMENT '删除：0：未删除，2：已删除',
  `create_by` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_name`(`user_name` ASC) USING BTREE,
  UNIQUE INDEX `device_id`(`device_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('078bbc10b9d7429f97748dd61d3cec79', 13888888888, '$2a$10$4nGbpncdrrTbyicRAYZ2j.YEdo1Pnb6L5Y5hLLsDmrS3suO26E08C', 'e1e4c24876514fc999d043ae0f496752', 'e1e4c24876514fc999d043ae0f496752', '13888888888', 'http://192.168.2.11/group1/M00/00/00/wKgCC2KSXreAaYveAANzTDXoVDw494.png', '小可爱', 0, 19, NULL, '这个世界本就是平衡的，想要得到什么就要付出什么', '中国', '云南', '昆明', NULL, NULL, NULL, NULL, NULL, 1, '2021-08-08 08:08:08', 0, 0, 0, 0, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '2019-12-01 09:31:27', NULL, '2021-07-22 16:16:54');

-- ----------------------------
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账户id',
  `number` int(11) NOT NULL AUTO_INCREMENT COMMENT '账户号',
  `password` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账户支付密码',
  `user_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户id',
  `uuid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备唯一标识',
  `type` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账户类型；1：余额账户 2：kb账户',
  `user_type` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户类型；1：个人  2：商家',
  `grade` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账户等级；1：普通账户 2：金卡账户 3：铂金账户',
  `deal_commission_ratio` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '交易手续费比例(账户等级不同，交易手续费比例不同)',
  `withdrawal_commission_ratio` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '提现手续费比例(账户等级不同，交易手续费比例不同)',
  `daily_trading_limit` decimal(32, 4) NULL DEFAULT NULL COMMENT '日交易限额',
  `month_trading_limit` decimal(32, 4) NULL DEFAULT NULL COMMENT '月交易限额',
  `daily_withdrawal_limit` decimal(32, 4) NULL DEFAULT NULL COMMENT '日提现限额',
  `month_withdrawal_limit` decimal(32, 4) NULL DEFAULT NULL COMMENT '月提现限额',
  `available_balance` decimal(32, 4) NOT NULL DEFAULT 0.0000 COMMENT '账户可用余额',
  `frozen_amount` decimal(32, 4) NOT NULL DEFAULT 0.0000 COMMENT '账户冻结金额',
  `status_flag` int(11) NOT NULL DEFAULT 0 COMMENT '状态：0：启用，2：停用',
  `delete_flag` int(11) NOT NULL DEFAULT 0 COMMENT '删除：0：未删除，2：已删除',
  `create_by` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `number`(`number` ASC) USING BTREE,
  INDEX `user_id`(`number` ASC, `user_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111281 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户账户信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_account
-- ----------------------------

-- ----------------------------
-- Table structure for user_config
-- ----------------------------
DROP TABLE IF EXISTS `user_config`;
CREATE TABLE `user_config`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '参数id',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_config
-- ----------------------------
INSERT INTO `user_config` VALUES ('00986a7829af4d16a7d1cb543f8790f0', '是否开启用户注册功能', 'user.account.registerUser', 'true', 'Y', 'admin', '2022-04-07 22:34:54', '', NULL);

-- ----------------------------
-- Table structure for user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `user_login_log`;
CREATE TABLE `user_login_log`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录记录id',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `uuid` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录设备唯一标识',
  `device_id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备记录id',
  `type` int(11) NULL DEFAULT NULL COMMENT '登录方式；1：手机快捷登录 2：账号密码登录',
  `status` int(11) NULL DEFAULT NULL COMMENT '登录状态：0：成功 1：失败',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `device_id`(`device_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户登录记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_login_log
-- ----------------------------
INSERT INTO `user_login_log` VALUES ('29099ddbfc394cc89ac9717eab0e415d', '13888888888', '127.0.0.1', NULL, NULL, NULL, 0, '登录成功', '', '2022-06-05 16:33:41');
INSERT INTO `user_login_log` VALUES ('5aeb86ff50334764b0c17e1aa0b85171', '13888888888', '127.0.0.1', NULL, NULL, NULL, 0, '登录成功', '', '2022-06-05 16:58:08');

-- ----------------------------
-- Table structure for user_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `user_oper_log`;
CREATE TABLE `user_oper_log`  (
  `id` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1查询 2新增 3修改 4删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1小程序用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_oper_log
-- ----------------------------
INSERT INTO `user_oper_log` VALUES ('3b01954974874d7aae1698b807955685', '查询用户信息', 1, 'com.cloud.user.controller.UserApi.userInfo()', 'POST', 2, '13888888888', '', '/user/userInfo', '127.0.0.1', '', '', '{\"code\":200,\"data\":{\"age\":\"19\",\"attention\":0,\"fans\":0,\"headImg\":\"http://192.168.2.11/group1/M00/00/00/wKgCC2KSXreAaYveAANzTDXoVDw494.png\",\"likes\":0,\"nickName\":\"小可爱\",\"phone\":\"13888888888\",\"sex\":\"0\",\"sign\":\"这个世界本就是平衡的，想要得到什么就要付出什么\",\"userName\":\"13888888888\",\"userType\":3,\"vipType\":1},\"msg\":\"查询成功\"}', 0, '', '2022-06-05 16:59:02');
INSERT INTO `user_oper_log` VALUES ('d9058f9e7c444645b50135045316cee5', '查询用户信息', 1, 'com.cloud.user.controller.UserApi.userInfo()', 'POST', 2, '13888888888', '', '/user/userInfo', '127.0.0.1', '', '', '{\"code\":200,\"data\":{\"age\":\"19\",\"attention\":0,\"fans\":0,\"headImg\":\"http://192.168.2.11/group1/M00/00/00/wKgCC2KSXreAaYveAANzTDXoVDw494.png\",\"likes\":0,\"nickName\":\"小可爱\",\"phone\":\"13888888888\",\"sex\":\"0\",\"sign\":\"这个世界本就是平衡的，想要得到什么就要付出什么\",\"userName\":\"13888888888\",\"userType\":3,\"vipType\":1},\"msg\":\"查询成功\"}', 0, '', '2022-06-05 16:58:16');

SET FOREIGN_KEY_CHECKS = 1;