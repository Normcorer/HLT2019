/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50527
Source Host           : 127.0.0.1:3306
Source Database       : huanletao

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-10-28 21:10:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for erji_catelog
-- ----------------------------
DROP TABLE IF EXISTS `erji_catelog`;
CREATE TABLE `erji_catelog` (
  `er_id` double DEFAULT NULL,
  `er_name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of erji_catelog
-- ----------------------------
INSERT INTO `erji_catelog` VALUES ('0', '大家电');
INSERT INTO `erji_catelog` VALUES ('1', '生活电器');
INSERT INTO `erji_catelog` VALUES ('2', '智能设备');
INSERT INTO `erji_catelog` VALUES ('3', '数码配件');
INSERT INTO `erji_catelog` VALUES ('4', '服务产品');
INSERT INTO `erji_catelog` VALUES ('5', '电脑整机');

-- ----------------------------
-- Table structure for sanji_catelog
-- ----------------------------
DROP TABLE IF EXISTS `sanji_catelog`;
CREATE TABLE `sanji_catelog` (
  `san_id` double DEFAULT NULL,
  `san_name` varchar(300) DEFAULT NULL,
  `parent_id` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sanji_catelog
-- ----------------------------
INSERT INTO `sanji_catelog` VALUES ('0', '平板电视', '0');
INSERT INTO `sanji_catelog` VALUES ('1', '空调', '0');
INSERT INTO `sanji_catelog` VALUES ('2', '冰箱', '0');
INSERT INTO `sanji_catelog` VALUES ('3', '洗衣机', '0');
INSERT INTO `sanji_catelog` VALUES ('4', '家庭影院', '0');
INSERT INTO `sanji_catelog` VALUES ('5', 'DVD', '0');
INSERT INTO `sanji_catelog` VALUES ('100', '电风扇', '1');
INSERT INTO `sanji_catelog` VALUES ('101', '冷风扇', '1');
INSERT INTO `sanji_catelog` VALUES ('200', '智能手环', '2');
INSERT INTO `sanji_catelog` VALUES ('201', '智能手表', '2');
INSERT INTO `sanji_catelog` VALUES ('300', '存储卡', '3');
INSERT INTO `sanji_catelog` VALUES ('301', '读卡器', '3');

-- ----------------------------
-- Table structure for t_cart
-- ----------------------------
DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart` (
  `id` double DEFAULT NULL,
  `user_id` varchar(300) DEFAULT NULL,
  `product_id` varchar(300) DEFAULT NULL,
  `product_image` varchar(1500) DEFAULT NULL,
  `product_name` varchar(300) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `num` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cart
-- ----------------------------

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `order_id` char(36) NOT NULL DEFAULT '',
  `order_money` double DEFAULT '0',
  `order_receiverinfo` varchar(255) DEFAULT '',
  `order_paystate` int(11) DEFAULT '0',
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('09f1aca5-fc8c-43d6-a221-54071754195d', '3000', '31221321', '1', '2019-10-21 14:44:07', 'dea2b30b-7307-48ab-a7f9-ee2408c5f94c');
INSERT INTO `t_order` VALUES ('0ba8d722-6954-4458-b67a-64f4dc1b62d3', '59911', 'a', '1', '2019-10-21 09:58:25', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('1132bc7a-ebaa-4a61-a398-1bc990c89202', '7622', '阿斯顿v', '1', '2019-10-20 16:09:45', 'b9c731ce-308c-466e-8837-3c6ce51eda71');
INSERT INTO `t_order` VALUES ('15fed3a7-f832-4f61-886f-4e2d07324532', '57788', 'aaa', '1', '2019-10-20 21:58:00', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('2436cd08-a123-4ac1-8e47-bbdd3d8219a6', '35648', '', '1', '2019-10-20 02:22:54', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('350d4fc3-039d-4b88-9e14-5322476a9126', '57419', '', '1', '2019-10-20 02:41:23', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('35722132-d727-40df-a4e3-eb98dc4bdd07', '35648', '', '1', '2019-10-20 02:23:54', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('427e41c4-c42d-414f-80ef-a768aeee95ce', '35648', '', '1', '2019-10-20 02:01:59', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('44937b4c-f3f0-40ea-8fc7-7f7c828cb8be', '5900', 'zhejiangsheng', '1', '2019-10-21 15:07:56', '0f39f5f0-5cdd-4819-a974-d881a5ce4511');
INSERT INTO `t_order` VALUES ('4b8dc9d1-0468-4a28-a2c5-baeb6071d535', '57788', '', '1', '2019-10-21 09:44:42', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('560e400c-a318-4086-8e9e-4429fe0683ae', '57788', 'aa', '1', '2019-10-20 22:06:03', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('59f21a74-82ce-48a0-86ca-b0dc15f926dc', '4123', 's', '1', '2019-10-21 10:18:32', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('6699a6bb-0cf7-42c4-9a23-84ce60791b8c', '123', '杭州', '0', '2019-10-21 13:41:39', '001d7124-dd43-4a54-830c-3bf4b428414d');
INSERT INTO `t_order` VALUES ('71899741-3085-4767-a37c-e8c8cd3cad1c', '59788', 'aaa', '1', '2019-10-21 09:53:22', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('749683dd-4d93-40a8-956f-7b6dfa1a7eec', '3000', '76575', '1', '2019-10-21 14:45:09', 'dea2b30b-7307-48ab-a7f9-ee2408c5f94c');
INSERT INTO `t_order` VALUES ('79fa7a79-ca61-4037-be27-24e099abdb94', '3123', '', '1', '2019-10-21 13:54:15', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('8c536d09-57a1-4336-aea8-fa1be784f979', '57788', 'aaa', '1', '2019-10-20 22:02:23', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('91cad7e7-1d92-49ea-b312-e4d9bbd0291f', '57788', 'aa', '1', '2019-10-20 21:55:59', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('95b3ff47-1eae-4ee7-b1fe-c2202d3ffeb8', '14822', '', '1', '2019-10-20 16:27:44', 'b9c731ce-308c-466e-8837-3c6ce51eda71');
INSERT INTO `t_order` VALUES ('96521da4-279a-48d6-9d68-d3a01e162b8f', '35648', '', '1', '2019-10-20 02:07:49', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('9de9580b-cc23-472a-9232-64153f11edb6', '7011', 'sss', '1', '2019-10-21 10:50:17', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('baa0c6c9-325a-4378-a852-0916378cb226', '123', '黄拿走', '1', '2019-10-21 10:14:35', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('d64084b4-7bf5-4b7c-82e6-f00e9e846bbb', '57788', 'aaa', '1', '2019-10-20 21:45:22', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('e6a12a9a-85d1-4551-b739-193d9d7a5786', '57788', 'ww', '1', '2019-10-21 09:44:49', '38ca23eb-0ca4-4207-a952-b6954f6070bf');
INSERT INTO `t_order` VALUES ('eb355fda-ad93-4567-80ed-f7412d009686', '35648', '', '1', '2019-10-20 02:12:25', '38ca23eb-0ca4-4207-a952-b6954f6070bf');

-- ----------------------------
-- Table structure for t_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` char(100) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `num` int(11) DEFAULT '0',
  `product_image` varchar(500) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_item
-- ----------------------------
INSERT INTO `t_order_item` VALUES ('181', '427e41c4-c42d-414f-80ef-a768aeee95ce', '94c692b1-4de9-4951-891c-7f85ce0206a4', '176', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('182', '427e41c4-c42d-414f-80ef-a768aeee95ce', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('183', '96521da4-279a-48d6-9d68-d3a01e162b8f', '94c692b1-4de9-4951-891c-7f85ce0206a4', '176', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('184', '96521da4-279a-48d6-9d68-d3a01e162b8f', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('185', 'eb355fda-ad93-4567-80ed-f7412d009686', '94c692b1-4de9-4951-891c-7f85ce0206a4', '176', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('186', 'eb355fda-ad93-4567-80ed-f7412d009686', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('187', '2436cd08-a123-4ac1-8e47-bbdd3d8219a6', '94c692b1-4de9-4951-891c-7f85ce0206a4', '176', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('188', '2436cd08-a123-4ac1-8e47-bbdd3d8219a6', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('189', '35722132-d727-40df-a4e3-eb98dc4bdd07', '94c692b1-4de9-4951-891c-7f85ce0206a4', '176', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('190', '35722132-d727-40df-a4e3-eb98dc4bdd07', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('191', '350d4fc3-039d-4b88-9e14-5322476a9126', '94c692b1-4de9-4951-891c-7f85ce0206a4', '353', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('192', '350d4fc3-039d-4b88-9e14-5322476a9126', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('193', '1132bc7a-ebaa-4a61-a398-1bc990c89202', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '14', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('194', '1132bc7a-ebaa-4a61-a398-1bc990c89202', 'a618e8f5-a7cf-4392-8301-5297d20ac81c', '1', 'http://image.jt.com/upload/c/f/0/4/5/3/7/7/21d9959f-9fc8-46d1-9f14-4cb1901e015d.jpg', '乐视（Letv）超级电视 超5 X55 55英寸 2GB+16GB大存储 全面屏4K超高清超薄网络液晶平板电视机（标配挂架）', '3500');
INSERT INTO `t_order_item` VALUES ('195', '1132bc7a-ebaa-4a61-a398-1bc990c89202', 'cea484a7-7056-4bdc-b917-b35df704efd6', '1', 'http://image.jt.com/upload/c/f/2/e/9/9/f/a/2eebb75e-7e61-48a6-a183-f76f5829e0c1.jpg', '索尼（SONY）KD-75X8000G 75英寸 4K超高清 HDR 智能网络 液晶平板电视 智能语音 ', '2400');
INSERT INTO `t_order_item` VALUES ('196', '95b3ff47-1eae-4ee7-b1fe-c2202d3ffeb8', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '14', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('197', '95b3ff47-1eae-4ee7-b1fe-c2202d3ffeb8', 'a618e8f5-a7cf-4392-8301-5297d20ac81c', '1', 'http://image.jt.com/upload/c/f/0/4/5/3/7/7/21d9959f-9fc8-46d1-9f14-4cb1901e015d.jpg', '乐视（Letv）超级电视 超5 X55 55英寸 2GB+16GB大存储 全面屏4K超高清超薄网络液晶平板电视机（标配挂架）', '3500');
INSERT INTO `t_order_item` VALUES ('198', '95b3ff47-1eae-4ee7-b1fe-c2202d3ffeb8', 'cea484a7-7056-4bdc-b917-b35df704efd6', '4', 'http://image.jt.com/upload/c/f/2/e/9/9/f/a/2eebb75e-7e61-48a6-a183-f76f5829e0c1.jpg', '索尼（SONY）KD-75X8000G 75英寸 4K超高清 HDR 智能网络 液晶平板电视 智能语音 ', '2400');
INSERT INTO `t_order_item` VALUES ('199', 'd64084b4-7bf5-4b7c-82e6-f00e9e846bbb', '94c692b1-4de9-4951-891c-7f85ce0206a4', '353', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('200', 'd64084b4-7bf5-4b7c-82e6-f00e9e846bbb', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('201', 'd64084b4-7bf5-4b7c-82e6-f00e9e846bbb', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '3', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('202', '91cad7e7-1d92-49ea-b312-e4d9bbd0291f', '94c692b1-4de9-4951-891c-7f85ce0206a4', '353', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('203', '91cad7e7-1d92-49ea-b312-e4d9bbd0291f', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('204', '91cad7e7-1d92-49ea-b312-e4d9bbd0291f', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '3', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('205', '15fed3a7-f832-4f61-886f-4e2d07324532', '94c692b1-4de9-4951-891c-7f85ce0206a4', '353', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('206', '15fed3a7-f832-4f61-886f-4e2d07324532', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('207', '15fed3a7-f832-4f61-886f-4e2d07324532', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '3', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('208', '8c536d09-57a1-4336-aea8-fa1be784f979', '94c692b1-4de9-4951-891c-7f85ce0206a4', '353', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('209', '8c536d09-57a1-4336-aea8-fa1be784f979', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('210', '8c536d09-57a1-4336-aea8-fa1be784f979', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '3', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('211', '560e400c-a318-4086-8e9e-4429fe0683ae', '94c692b1-4de9-4951-891c-7f85ce0206a4', '353', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('212', '560e400c-a318-4086-8e9e-4429fe0683ae', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('213', '560e400c-a318-4086-8e9e-4429fe0683ae', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '3', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('214', '4b8dc9d1-0468-4a28-a2c5-baeb6071d535', '94c692b1-4de9-4951-891c-7f85ce0206a4', '353', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('215', '4b8dc9d1-0468-4a28-a2c5-baeb6071d535', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('216', '4b8dc9d1-0468-4a28-a2c5-baeb6071d535', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '3', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('217', 'e6a12a9a-85d1-4551-b739-193d9d7a5786', '94c692b1-4de9-4951-891c-7f85ce0206a4', '353', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('218', 'e6a12a9a-85d1-4551-b739-193d9d7a5786', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('219', 'e6a12a9a-85d1-4551-b739-193d9d7a5786', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '3', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('220', '71899741-3085-4767-a37c-e8c8cd3cad1c', '94c692b1-4de9-4951-891c-7f85ce0206a4', '353', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('221', '71899741-3085-4767-a37c-e8c8cd3cad1c', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('222', '71899741-3085-4767-a37c-e8c8cd3cad1c', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '3', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('223', '71899741-3085-4767-a37c-e8c8cd3cad1c', '0a7299fa-b3a5-4b0a-aa61-80cc59078a02', '1', 'http://image.jt.com/upload/b/0/8/1/9/a/9/0/7c28bf18-5622-453c-aa3e-adcd083b162e.jpg', '康佳（KONKA）LED24E330C 24英寸 卧室电视 高清窄边平板液晶机 支持显示器', '2000');
INSERT INTO `t_order_item` VALUES ('224', '0ba8d722-6954-4458-b67a-64f4dc1b62d3', '94c692b1-4de9-4951-891c-7f85ce0206a4', '353', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/0aae9b5f-07f0-4ced-b385-457b75266b6a.png', '手机', '123');
INSERT INTO `t_order_item` VALUES ('225', '0ba8d722-6954-4458-b67a-64f4dc1b62d3', '1b466c0f-5f51-4d5b-9ce7-5ffe43561c0c', '14', 'http://image.jt.com/upload/8/1/0/1/a/1/6/1/b9603f38-bfd0-4e74-aa19-c87923d5f0fb.png', '平板电视', '1000');
INSERT INTO `t_order_item` VALUES ('226', '0ba8d722-6954-4458-b67a-64f4dc1b62d3', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '4', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('227', '0ba8d722-6954-4458-b67a-64f4dc1b62d3', '0a7299fa-b3a5-4b0a-aa61-80cc59078a02', '1', 'http://image.jt.com/upload/b/0/8/1/9/a/9/0/7c28bf18-5622-453c-aa3e-adcd083b162e.jpg', '康佳（KONKA）LED24E330C 24英寸 卧室电视 高清窄边平板液晶机 支持显示器', '2000');
INSERT INTO `t_order_item` VALUES ('228', 'baa0c6c9-325a-4378-a852-0916378cb226', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '1', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('229', '59f21a74-82ce-48a0-86ca-b0dc15f926dc', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '1', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('230', '59f21a74-82ce-48a0-86ca-b0dc15f926dc', '0a7299fa-b3a5-4b0a-aa61-80cc59078a02', '1', 'http://image.jt.com/upload/b/0/8/1/9/a/9/0/7c28bf18-5622-453c-aa3e-adcd083b162e.jpg', '康佳（KONKA）LED24E330C 24英寸 卧室电视 高清窄边平板液晶机 支持显示器', '2000');
INSERT INTO `t_order_item` VALUES ('231', '59f21a74-82ce-48a0-86ca-b0dc15f926dc', '0db52670-0ec2-4d59-8660-cfcd27c44c06', '1', 'http://image.jt.com/upload/c/e/c/b/f/5/7/3/ff53d185-32cb-4884-ba71-0f2c03117bda.jpg', '夏普（SHARP）LCD-60SU575A 60英寸 4K超高清 广色域 杜比音效 宽音域 双线WIFI ', '2000');
INSERT INTO `t_order_item` VALUES ('232', '9de9580b-cc23-472a-9232-64153f11edb6', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '57', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('233', '6699a6bb-0cf7-42c4-9a23-84ce60791b8c', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '1', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('234', '79fa7a79-ca61-4037-be27-24e099abdb94', '0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '1', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123');
INSERT INTO `t_order_item` VALUES ('235', '79fa7a79-ca61-4037-be27-24e099abdb94', '1f3e0642-5363-4bf9-bd20-47ccb33f6a24', '1', 'http://image.jt.com/upload/9/7/d/8/7/8/d/0/8a24c219-782b-4594-acec-b13c9393f700.jpg', '康佳（KONKA）55A10 55英寸 4K超高清 超薄金属机身 3GB+64GB大内存 全景AI', '3000');
INSERT INTO `t_order_item` VALUES ('239', '09f1aca5-fc8c-43d6-a221-54071754195d', '1f3e0642-5363-4bf9-bd20-47ccb33f6a24', '1', 'http://image.jt.com/upload/9/7/d/8/7/8/d/0/8a24c219-782b-4594-acec-b13c9393f700.jpg', '康佳（KONKA）55A10 55英寸 4K超高清 超薄金属机身 3GB+64GB大内存 全景AI', '3000');
INSERT INTO `t_order_item` VALUES ('240', '749683dd-4d93-40a8-956f-7b6dfa1a7eec', 'f10c60bf-e796-426c-9f1a-c2c3d9cea39f', '1', 'http://image.jt.com/upload/e/5/0/4/0/8/5/c/a26ff37d-8895-43f4-bd99-42ecc31e37c2.jpg', '美的（Midea）1.5匹 变频 智弧 冷暖 智能壁挂式卧室空调挂机 KFR-35GW/WDAA3', '3000');
INSERT INTO `t_order_item` VALUES ('241', '44937b4c-f3f0-40ea-8fc7-7f7c828cb8be', '1f56b02a-f2de-4904-a3f2-bd70bb68829c', '1', 'http://image.jt.com/upload/a/f/a/0/2/2/8/0/f0148f50-d4f4-4a2d-acd9-1fbc2b60b11c.jpg', '三星（SAMSUNG）UA65NUC30SJXXZ 65英寸 曲面4K超高清 HDR 智能控光 IMAX', '2500');
INSERT INTO `t_order_item` VALUES ('242', '44937b4c-f3f0-40ea-8fc7-7f7c828cb8be', '225fe5e8-1786-4fd6-a984-514624004903', '1', 'http://image.jt.com/upload/9/2/8/f/a/8/7/0/9655bd0b-d12a-4fe1-b537-85436fc10e7c.jpg', '小米电视4X 55英寸 4K超高清 HDR 蓝牙语音遥控 2GB+8GB 人工智能语音网络', '3400');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `product_id` varchar(100) NOT NULL DEFAULT '',
  `product_name` varchar(100) DEFAULT NULL,
  `product_price` double DEFAULT '0',
  `sales` int(11) DEFAULT '0',
  `product_imgurl` varchar(500) DEFAULT '',
  `product_num` int(11) DEFAULT '0',
  `product_description` varchar(255) DEFAULT '',
  `f_catelog` int(11) DEFAULT NULL,
  `s_catelog` int(11) DEFAULT NULL,
  `t_catelog` int(11) DEFAULT NULL,
  `product_rprice` double DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `UN_product_name` (`product_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('0a5d74b8-2e5b-4629-a5d3-f7f97fef6a6b', '东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 ', '123', '116', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/0bce314c-fec5-47b7-9ded-8c5b0284afc0.jpg', '2198', ' 东芝（TOSHIBA）55U3800C 55英寸 4K超高清 智能语音 火箭炮音效 16GB大内存 纤薄液晶电视机 自营', '0', '0', '0', '2205', '1', '2019-10-20 03:02:02', null);
INSERT INTO `t_product` VALUES ('0a7299fa-b3a5-4b0a-aa61-80cc59078a02', '康佳（KONKA）LED24E330C 24英寸 卧室电视 高清窄边平板液晶机 支持显示器', '2000', '3', 'http://image.jt.com/upload/b/0/8/1/9/a/9/0/7c28bf18-5622-453c-aa3e-adcd083b162e.jpg', '539', ' 康佳（KONKA）LED24E330C 24英寸 卧室电视 高清窄边平板液晶机 支持显示器', '0', '0', '0', '2500', '1', '2019-10-20 02:59:53', null);
INSERT INTO `t_product` VALUES ('0d6d2e86-79cb-439e-97b0-8c5ab630a927', 'TCL空调 大1匹 定频冷暖 60秒速热 壁挂式空调 卧室 家用家电 空调挂机', '1000', '0', 'http://image.jt.com/upload/e/5/1/2/1/f/d/d/dfc10faa-0d58-472e-9901-f921fcdc6fbd.jpg', '1230', ' hello', '0', '0', '1', '1200', '1', '2019-10-20 20:56:13', null);
INSERT INTO `t_product` VALUES ('0db52670-0ec2-4d59-8660-cfcd27c44c06', '夏普（SHARP）LCD-60SU575A 60英寸 4K超高清 广色域 杜比音效 宽音域 双线WIFI ', '2000', '1', 'http://image.jt.com/upload/c/e/c/b/f/5/7/3/ff53d185-32cb-4884-ba71-0f2c03117bda.jpg', '233', ' 夏普（SHARP）LCD-60SU575A 60英寸 4K超高清 广色域 杜比音效 宽音域 双线WIFI 智能网络液晶电视机', '0', '0', '0', '2205', '1', '2019-10-20 02:47:34', null);
INSERT INTO `t_product` VALUES ('15bcddf5-8fa7-44bd-bc8c-549c997cc59a', '123', '123', '0', 'http://image.jt.com/upload/6/e/b/7/7/7/1/3/cc2ee3d7-f449-4ce3-a80d-8be6d8c128fa.jpg', '123', ' 123', '1', '2', '200', '1234', '1', '2019-10-21 15:10:57', null);
INSERT INTO `t_product` VALUES ('1f3e0642-5363-4bf9-bd20-47ccb33f6a24', '康佳（KONKA）55A10 55英寸 4K超高清 超薄金属机身 3GB+64GB大内存 全景AI', '3000', '2', 'http://image.jt.com/upload/9/7/d/8/7/8/d/0/8a24c219-782b-4594-acec-b13c9393f700.jpg', '121', ' 康佳（KONKA）55A10 55英寸 4K超高清 超薄金属机身 3GB+64GB大内存 全景AI智慧屏 全面屏 智能电视', '0', '0', '0', '3100', '1', '2019-10-20 02:56:01', null);
INSERT INTO `t_product` VALUES ('1f56b02a-f2de-4904-a3f2-bd70bb68829c', '三星（SAMSUNG）UA65NUC30SJXXZ 65英寸 曲面4K超高清 HDR 智能控光 IMAX', '2500', '1', 'http://image.jt.com/upload/a/f/a/0/2/2/8/0/f0148f50-d4f4-4a2d-acd9-1fbc2b60b11c.jpg', '1233233', ' 三星（SAMSUNG）UA65NUC30SJXXZ 65英寸 曲面4K超高清 HDR 智能控光 IMAX影院级体验 网络智能液晶电视机', '0', '0', '0', '2700', '1', '2019-10-20 02:59:21', null);
INSERT INTO `t_product` VALUES ('225fe5e8-1786-4fd6-a984-514624004903', '小米电视4X 55英寸 4K超高清 HDR 蓝牙语音遥控 2GB+8GB 人工智能语音网络', '3400', '1', 'http://image.jt.com/upload/9/2/8/f/a/8/7/0/9655bd0b-d12a-4fe1-b537-85436fc10e7c.jpg', '122', ' 小米电视4X 55英寸 4K超高清 HDR 蓝牙语音遥控 2GB+8GB 人工智能语音网络液晶平板电视L55M5-AD', '0', '0', '0', '3500', '1', '2019-10-20 02:53:21', null);
INSERT INTO `t_product` VALUES ('3a28d7d4-4821-45e2-93e2-b97d345c5264', '海信（Hisense）HZ75E5A 75英寸 超高清4K HDR 全金属机身 MEMC运动补偿 AI', '2300', '0', 'http://image.jt.com/upload/a/b/3/8/c/a/3/0/889c703c-6459-478c-9077-2c207ae0d855.jpg', '100', ' 海信（Hisense）HZ75E5A 75英寸 超高清4K HDR 全金属机身 MEMC运动补偿 AI人工智能液晶电视机', '0', '0', '0', '2500', '1', '2019-10-20 02:56:27', null);
INSERT INTO `t_product` VALUES ('442c4311-41e5-4d57-aaf6-71f2bd5c34dd', '小米电视4C 43英寸 全高清 四核处理器 1GB+8GB 人工智能网络液晶平板电视L43M5-AX', '1231', '0', 'http://image.jt.com/upload/9/5/3/4/1/0/a/0/66c728d4-cc6f-468f-aaa0-269808c97108.jpg', '4000', ' 小米电视4C 43英寸 全高清 四核处理器 1GB+8GB 人工智能网络液晶平板电视L43M5-AX', '0', '0', '0', '1569', '1', '2019-10-20 03:01:29', null);
INSERT INTO `t_product` VALUES ('45414ff6-adea-4b37-9482-72e4247eee46', '小米电视4X 43英寸 全高清 蓝牙语音遥控 1GB+8GB 人工智能语音网络液晶平板电视', '2000', '0', 'http://image.jt.com/upload/9/3/7/1/2/0/8/0/2383676f-d225-4474-b831-fea5de399617.jpg', '123', ' 小米电视4X 43英寸 全高清 蓝牙语音遥控 1GB+8GB 人工智能语音网络液晶平板电视L43M5-4X', '0', '0', '0', '2100', '1', '2019-10-20 02:53:46', null);
INSERT INTO `t_product` VALUES ('48ca4848-4c80-4da8-bd54-b707eef05b41', '海信（Hisense）HZ65E5D 65英寸 AI声控 MEMC防抖 超薄全面屏电视', '1237', '0', 'http://image.jt.com/upload/9/7/d/8/7/8/d/0/544f4826-2ac9-4d07-81d7-5c04a1906742.jpg', '1000', '很不错的电视', '0', '0', '0', '1400', '1', '2019-10-20 20:54:07', null);
INSERT INTO `t_product` VALUES ('4e61e02d-c290-48a4-8fd2-17ce329b2c5f', '长虹 55DP200 55英寸32核人工智能4K超高清HDR金属轻薄语音平板LED', '2300', '0', 'http://image.jt.com/upload/a/e/b/e/a/a/7/0/38a3d8db-48e0-4aa7-94b8-f463fb783159.jpg', '1254', ' 长虹 55DP200 55英寸32核人工智能4K超高清HDR金属轻薄语音平板LED液晶电视机（浅金色）', '0', '0', '0', '2500', '1', '2019-10-20 02:58:48', null);
INSERT INTO `t_product` VALUES ('4efb6704-c51e-4333-8f04-f575511e4661', '索尼（SONY）KD-65X8000G 65英寸 4K超高清 HDR 智能网络 液晶平板电视 ', '1234', '0', 'http://image.jt.com/upload/c/f/2/0/8/2/7/9/71566bfe-0d70-4294-aa69-645fce6df9e0.jpg', '100', ' 索尼（SONY）KD-65X8000G 65英寸 4K超高清 HDR 智能网络 液晶平板电视 智能语音 安卓7.0 蓝牙/WiFi', '0', '0', '0', '1235', '1', '2019-10-20 02:51:06', null);
INSERT INTO `t_product` VALUES ('4f12d2cc-60e6-4994-a94c-48cfa378b0df', '小米电视4C 55英寸 4K超高清 HDR 四核处理器 2GB+8GB 人工智能网络液晶', '3000', '0', 'http://image.jt.com/upload/a/c/1/a/4/2/4/0/3fec9b64-c7a5-4b47-a6fb-1d3ee05eb792.jpg', '1000', ' 小米电视4C 55英寸 4K超高清 HDR 四核处理器 2GB+8GB 人工智能网络液晶平板电视L55M5-AZ', '0', '0', '0', '3400', '1', '2019-10-20 02:56:57', null);
INSERT INTO `t_product` VALUES ('5fcc75e6-99ac-479b-9e86-9e858ac9c98c', '颂拓（SUUNTO）芬兰进口Suunto 9 专业运动智能光电手表钛合金旗舰版', '600', '0', 'http://image.jt.com/upload/6/d/7/e/a/7/3/6/a902562b-e9dc-4c0f-a4a7-6d930ca19eaa.jpg', '123', ' 111', '1', '2', '201', '700', '1', '2019-10-21 09:07:54', null);
INSERT INTO `t_product` VALUES ('6247336e-a51d-4479-b8de-5baf9831da98', ' 海信（Hisense）HZ32E35A 32英寸 AI智能操控 高清平板液晶电视机', '1400', '0', 'http://image.jt.com/upload/a/c/f/b/b/a/5/0/829ccf14-ffc9-4f9f-8e0e-c256511539c1.jpg', '1234', ' \r\n海信（Hisense）HZ32E35A 32英寸 AI智能操控 高清平板液晶电视机', '0', '0', '0', '1600', '1', '2019-10-20 02:57:32', null);
INSERT INTO `t_product` VALUES ('683ea953-482a-468f-b655-220e05e953b9', '华为智慧屏V65 65英寸4K量子点 4+64GB 升降式AI摄像头视频通话智慧音响 ', '2131', '0', 'http://image.jt.com/upload/c/e/f/6/3/b/f/6/6bdbbbff-100e-4c88-9af5-ae2abcb13038.jpg', '123', ' 华为智慧屏V65 65英寸4K量子点 4+64GB 升降式AI摄像头视频通话智慧音响 鸿鹄芯片 智能家居控制 电视的未来', '0', '0', '0', '2423', '1', '2019-10-20 02:49:35', null);
INSERT INTO `t_product` VALUES ('74d835ef-61fa-491e-b9c6-d096ae807588', '荣耀智慧屏PRO 55英寸2+32G OSCA-550电视的未来!华为鸿蒙OS 升降式AI摄像头 ', '1500', '0', 'http://image.jt.com/upload/c/e/b/d/d/d/f/2/a3171f31-2f52-4b19-9dd6-8a8456614a24.jpg', '1234', ' 荣耀智慧屏PRO 55英寸2+32G OSCA-550电视的未来!华为鸿蒙OS 升降式AI摄像头 远场语音 液晶4K超高清全面屏', '0', '0', '0', '1750', '1', '2019-10-20 02:45:44', null);
INSERT INTO `t_product` VALUES ('750aa66f-931d-4351-a63e-70fab6fe1664', '华为手环3 珍珠黑（高清彩屏+智能手环+301心脏研究+睡眠监测+触控+游泳+支付', '500', '0', 'http://image.jt.com/upload/7/7/a/d/a/3/6/f/0ce30a02-be04-44a7-bce2-5a88f17542be.jpg', '1000', ' nice', '1', '2', '200', '600', '1', '2019-10-21 09:04:48', null);
INSERT INTO `t_product` VALUES ('75b6c1f7-60d3-449a-9383-f6054e5f8e2f', '创维（SKYWORTH）65H9S 65英寸4K超高清HDR 超薄护眼全面屏 人工智能语音 ', '2900', '0', 'http://image.jt.com/upload/a/d/d/d/3/2/6/0/8680ff51-ed47-4995-925b-d26f110f115e.jpg', '123', ' 创维（SKYWORTH）65H9S 65英寸4K超高清HDR 超薄护眼全面屏 人工智能语音 蓝牙网络 液晶电视机 家电 3+32G', '0', '0', '0', '3000', '1', '2019-10-20 02:58:15', null);
INSERT INTO `t_product` VALUES ('810ea3e5-cb70-4d52-946f-5154762a9571', '乐视（Letv）超级电视 Y50 50英寸 1.5GB+16GB大存储 窄边框4K超高清人', '4000', '0', 'http://image.jt.com/upload/9/5/3/4/1/0/a/0/6b105df5-dcad-4c5e-ba78-f2b424363ebb.jpg', '100', ' 乐视（Letv）超级电视 Y50 50英寸 1.5GB+16GB大存储 窄边框4K超高清人工智能超薄网络液晶平板电视机', '0', '0', '0', '4100', '1', '2019-10-20 02:54:34', null);
INSERT INTO `t_product` VALUES ('85b16cc0-65b6-4ba6-b8d9-89aad6ca8409', '海尔（Haier） 3匹变频立式空调柜机 一级能效 自清洁 快速冷暖', '1600', '0', 'http://image.jt.com/upload/e/4/f/5/f/0/d/b/696d5161-0743-4318-91f1-43aedbe6693e.jpg', '12345', ' 制冷不错', '0', '0', '1', '1700', '1', '2019-10-20 16:48:06', null);
INSERT INTO `t_product` VALUES ('871b46bd-34f3-43e5-91db-bd31a2ef6620', '小米电视4S 75英寸 4K超高清 HDR 蓝牙语音遥控 2GB+8GB 人工智能语音', '2900', '0', 'http://image.jt.com/upload/9/0/c/c/b/8/5/0/38cbd2d4-5efc-4319-bcd1-12af8b523c5e.jpg', '100', ' 小米电视4S 75英寸 4K超高清 HDR 蓝牙语音遥控 2GB+8GB 人工智能语音网络液晶平板电视L75M5-4S', '0', '0', '0', '3100', '1', '2019-10-20 02:52:30', null);
INSERT INTO `t_product` VALUES ('87f4d2c8-349f-4a34-903d-132dc909788f', '飞利浦（PHILIPS）65PUF6192/T3 65英寸 人工智能 4K超高清 HDR网络智能液晶电视机', '3500', '0', 'http://image.jt.com/upload/c/e/e/8/2/4/7/5/6b13cef8-8f65-4bff-a174-18c87622908f.jpg', '123', ' 飞利浦（PHILIPS）65PUF6192/T3 65英寸 人工智能 4K超高清 HDR网络智能液晶电视机', '0', '0', '0', '3654', '1', '2019-10-20 02:49:11', null);
INSERT INTO `t_product` VALUES ('a48b8df1-e253-4630-9a49-dba6da077074', 'VIDAA 50V1A 海信（Hisense）50英寸 4K超高清 网络AI 智能语音 液晶 平板电视机', '2300', '0', 'http://image.jt.com/upload/9/6/f/7/0/0/c/0/ec3ea82e-af44-4dec-8780-da8afccffda0.jpg', '100', ' VIDAA 50V1A 海信（Hisense）50英寸 4K超高清 网络AI 智能语音 液晶 平板电视机', '0', '0', '0', '2500', '1', '2019-10-20 02:55:32', null);
INSERT INTO `t_product` VALUES ('a49149b0-2f7b-48a9-a4f7-cb3ec66046a9', '长虹 55D5S 55英寸4K超高清 HDR智能平板LED液晶电视机（黑色）', '2000', '0', 'http://image.jt.com/upload/9/6/1/5/8/8/b/0/d3ae7e2b-d15c-4581-949f-45756dcbc0c2.jpg', '123', ' 长虹 55D5S 55英寸4K超高清 HDR智能平板LED液晶电视机（黑色）', '0', '0', '0', '2100', '1', '2019-10-20 02:55:01', null);
INSERT INTO `t_product` VALUES ('a618e8f5-a7cf-4392-8301-5297d20ac81c', '乐视（Letv）超级电视 超5 X55 55英寸 2GB+16GB大存储 全面屏4K超高清超', '3500', '0', 'http://image.jt.com/upload/c/f/0/4/5/3/7/7/21d9959f-9fc8-46d1-9f14-4cb1901e015d.jpg', '121', ' 乐视（Letv）超级电视 超5 X55 55英寸 2GB+16GB大存储 全面屏4K超高清超薄网络液晶平板电视机（标配挂架）', '0', '0', '0', '3600', '1', '2019-10-20 02:50:04', null);
INSERT INTO `t_product` VALUES ('c127001f-8168-4eac-962d-4fa2432b7498', '创维（SKYWORTH）65H5 65英寸4K超高清HDR 护眼全面屏 AI人工智能语音 ', '4000', '0', 'http://image.jt.com/upload/c/f/1/2/6/a/f/8/503cc335-6161-4cfe-98d6-331307e17f03.jpg', '123', ' 创维（SKYWORTH）65H5 65英寸4K超高清HDR 护眼全面屏 AI人工智能语音 蓝牙网络WIFI 液晶平板电视机', '0', '0', '0', '4500', '1', '2019-10-20 02:50:36', null);
INSERT INTO `t_product` VALUES ('ca9423fa-eaac-4ddf-bc35-9c88884f6af4', '格力（GREE）遥控空调扇20升冷风扇家用移动冷风机制冷办公室小空调单冷加湿', '400', '0', 'http://image.jt.com/upload/a/d/c/0/d/e/0/b/6f03322d-98cb-49de-b2ca-dd2249fe3f36.jpg', '1234', ' 不错', '0', '1', '101', '500', '1', '2019-10-20 21:00:04', null);
INSERT INTO `t_product` VALUES ('cea484a7-7056-4bdc-b917-b35df704efd6', '索尼（SONY）KD-75X8000G 75英寸 4K超高清 HDR 智能网络 液晶平板电视', '2400', '0', 'http://image.jt.com/upload/c/f/2/e/9/9/f/a/2eebb75e-7e61-48a6-a183-f76f5829e0c1.jpg', '2336', ' 索尼（SONY）KD-75X8000G 75英寸 4K超高清 HDR 智能网络 液晶平板电视 智能语音 安卓7.0 蓝牙/WiFi', '0', '0', '0', '2890', '1', '2019-10-20 03:00:57', null);
INSERT INTO `t_product` VALUES ('d6e39e1d-cb8e-42d5-89ed-e9ae71a0e8f2', '小米电视4A 58英寸 4K超高清 HDR 蓝牙语音遥控 2GB+8GB 人工智能语音网络液晶', '1235', '0', 'http://image.jt.com/upload/c/e/d/a/0/c/f/4/bf6314c7-87e6-4a77-b0d1-cd045a75a612.jpg', '2444', ' 小米电视4A 58英寸 4K超高清 HDR 蓝牙语音遥控 2GB+8GB 人工智能语音网络液晶平板电视L58M5-4A', '0', '0', '0', '1500', '0', '2019-10-20 02:48:06', null);
INSERT INTO `t_product` VALUES ('daf90d09-fd6f-49c3-9f87-88eaec41f018', '索尼（SONY）KD-55X8000G 55英寸 4K超高清 HDR 智能网络 液晶平板电视', '2000', '0', 'http://image.jt.com/upload/8/f/e/b/4/0/4/0/7c2e8bfc-a241-46fe-a74c-f249ab412e44.jpg', '1111', ' 索尼（SONY）KD-55X8000G 55英寸 4K超高清 HDR 智能网络 液晶平板电视 智能语音 安卓7.0 蓝牙/WiFi', '0', '0', '0', '2100', '1', '2019-10-20 02:52:03', null);
INSERT INTO `t_product` VALUES ('e411a4cc-7eb9-4351-916c-5d7e9185b50b', '创维（SKYWORTH）65H6 65英寸4K超高清HDR 护眼全面屏 2+32G 人工智能语音', '7000', '0', 'http://image.jt.com/upload/b/1/6/3/1/2/a/0/cfb66152-bd2c-4801-b26c-dd84827d6f38.jpg', '230', ' 创维（SKYWORTH）65H6 65英寸4K超高清HDR 护眼全面屏 2+32G 人工智能语音 蓝牙网络 液晶电视机 家电', '0', '0', '0', '8000', '1', '2019-10-20 03:00:25', null);
INSERT INTO `t_product` VALUES ('e83784a1-c884-49ac-a445-b77b01414856', '长虹 55DP200 55英寸32核人工智能4K超高清HDR金属轻薄语音平板LED液晶电视机', '2000', '0', 'http://image.jt.com/upload/c/f/0/4/5/3/7/7/c13c6d3c-29ec-428f-aca4-9521be0154b1.jpg', '123', ' 长虹 55DP200 55英寸32核人工智能4K超高清HDR金属轻薄语音平板LED液晶电视机（浅金色）', '0', '0', '0', '2100', '1', '2019-10-20 03:04:07', null);
INSERT INTO `t_product` VALUES ('f10c60bf-e796-426c-9f1a-c2c3d9cea39f', '美的（Midea）1.5匹 变频 智弧 冷暖 智能壁挂式卧室空调挂机 KFR-35GW/WDAA3', '3000', '1', 'http://image.jt.com/upload/e/5/0/4/0/8/5/c/a26ff37d-8895-43f4-bd99-42ecc31e37c2.jpg', '999', ' nice', '0', '0', '1', '3100', '1', '2019-10-20 20:55:03', null);
INSERT INTO `t_product` VALUES ('f31a7fd1-9f3a-4fce-bc80-c9f32bf25b0d', '海信（Hisense）HZ65E5D 65英寸 AI声控 MEMC防抖 超薄全面屏 4K超高清 ', '12345', '0', 'http://image.jt.com/upload/c/f/2/e/9/9/f/a/eab0b704-f117-455d-af09-8a3d33c459a0.jpg', '123', ' 海信（Hisense）HZ65E5D 65英寸 AI声控 MEMC防抖 超薄全面屏 4K超高清 人工智能AI电视机', '0', '0', '0', '123456', '1', '2019-10-20 02:51:34', null);
INSERT INTO `t_product` VALUES ('f3b56e12-d556-4f7a-b54a-3df62d7ac16e', '格力（GREE）3匹 京炫 大风量 定频 快速冷暖 立式方柜 客厅家用空调柜机', '1500', '0', 'http://image.jt.com/upload/e/5/2/0/3/7/5/e/87507ef1-f680-4bab-a4ca-8d5ba27d558f.jpg', '1223', '空调不错', '-1', '-2', '-199', '1700', '1', '2019-10-20 20:56:48', null);
INSERT INTO `t_product` VALUES ('f562b04e-46d1-4a31-a4dd-a59f1a52711e', ' 索尼（SONY）KD-65U8G 65英寸 4K超高清 HDR 4核 3+16GB内存 智能网络 ', '3000', '0', 'http://image.jt.com/upload/a/c/f/b/b/a/5/0/9ac7fd48-cc93-402c-8a9a-ec79ecf58b4e.jpg', '15435', '  索尼（SONY）KD-65U8G 65英寸 4K超高清 HDR 4核 3+16GB内存 智能网络 人工智能液晶平板电视 安卓8.0', '0', '0', '0', '3500', '1', '2019-10-20 03:02:30', null);
INSERT INTO `t_product` VALUES ('faeb5f03-1491-4f6f-b7e9-aacb9d235ed5', '创维（SKYWORTH）55H5 55英寸4K超高清HDR 护眼全面屏 AI人工智能语音 ', '4000', '0', 'http://image.jt.com/upload/9/1/a/e/3/0/6/0/f8e94967-a88f-4ec4-863f-67c2df6cde1a.jpg', '100', ' 创维（SKYWORTH）55H5 55英寸4K超高清HDR 护眼全面屏 AI人工智能语音 蓝牙网络WIFI 液晶平板电视机', '0', '0', '0', '5000', '1', '2019-10-20 02:52:55', null);
INSERT INTO `t_product` VALUES ('fffe982b-3008-451d-9996-e992929030c5', '艾美特（Airmate）电风扇 家用五叶遥控落地扇 柔风静音 FS40103R', '100', '0', 'http://image.jt.com/upload/6/e/e/f/d/5/1/7/8aeeb487-3458-4722-87d2-58cd79d5cb04.jpg', '1234', ' 123', '0', '1', '100', '200', '1', '2019-10-20 20:59:29', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` bigint(32) NOT NULL AUTO_INCREMENT,
  `user_id` char(36) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_phone` varchar(20) DEFAULT NULL,
  `user_nickname` varchar(50) DEFAULT NULL,
  `user_email` varchar(30) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `registertime` datetime DEFAULT NULL,
  `lastlogintime` datetime DEFAULT NULL,
  `user_delete` int(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', '38ca23eb-0ca4-4207-a952-b6954f6070bf', 'xwq', '123456', '18892621522', 'xwq', '150863760@qq.com', '0', '2019-10-15 13:24:20', '2019-10-21 14:32:01', '0');
INSERT INTO `user` VALUES ('7', 'b9c731ce-308c-466e-8837-3c6ce51eda71', 'zyj', '123456', '17858661647', 'zyj', '150863760@qq.com', '0', '2019-10-20 15:58:39', '2019-10-21 15:19:38', '0');
INSERT INTO `user` VALUES ('8', '001d7124-dd43-4a54-830c-3bf4b428414d', 'zlb', '123456', '17858661674', 'zlb', '1257207990@qq.com', '0', '2019-10-20 21:00:22', '2019-10-21 13:36:56', '0');
INSERT INTO `user` VALUES ('9', 'd1370c50-7fe2-4f5c-9168-e3ef65aa71eb', 'lzn', '123456', '13306818385', 'lzn', '150863760@qq.com', '0', '2019-10-21 12:38:41', null, '0');
INSERT INTO `user` VALUES ('10', '6bdf6da5-f249-4a6a-b24d-f8726cde19f2', '刘哲宁', '123456', '13306818385', '刘哲宁', '123@qq.com', '0', '2019-10-21 14:05:43', '2019-10-21 14:53:57', '0');
INSERT INTO `user` VALUES ('11', '57221202-4430-4c68-8b69-fa601dce92ed', 'zb', '123456', '15068610386', 'zb', '150863760@qq.com', '0', '2019-10-21 14:06:05', null, '0');
INSERT INTO `user` VALUES ('12', 'dea2b30b-7307-48ab-a7f9-ee2408c5f94c', 'xc', '123456', '17770046710', 'xc', '123@qq.com', '0', '2019-10-21 14:43:02', '2019-10-21 14:43:18', '0');
INSERT INTO `user` VALUES ('13', '0f39f5f0-5cdd-4819-a974-d881a5ce4511', 'ghy', '123456', '17858661684', 'ghy', '123@qq.com', '0', '2019-10-21 15:04:06', '2019-10-21 15:04:43', '0');

-- ----------------------------
-- Table structure for yiji_catelog
-- ----------------------------
DROP TABLE IF EXISTS `yiji_catelog`;
CREATE TABLE `yiji_catelog` (
  `y_id` double DEFAULT NULL,
  `y_name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yiji_catelog
-- ----------------------------
INSERT INTO `yiji_catelog` VALUES ('0', '家用电器');
INSERT INTO `yiji_catelog` VALUES ('1', '手机数码');
INSERT INTO `yiji_catelog` VALUES ('2', '电脑办公');
INSERT INTO `yiji_catelog` VALUES ('3', '家居生活');
INSERT INTO `yiji_catelog` VALUES ('4', '服饰服装');
INSERT INTO `yiji_catelog` VALUES ('5', '鞋箱钟包');
INSERT INTO `yiji_catelog` VALUES ('6', '清理个护');
