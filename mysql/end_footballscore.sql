/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50703
 Source Host           : localhost:3306
 Source Schema         : sportdata

 Target Server Type    : MySQL
 Target Server Version : 50703
 File Encoding         : 65001

 Date: 31/08/2019 03:03:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for end_footballscore
-- ----------------------------
DROP TABLE IF EXISTS `end_footballscore`;
CREATE TABLE `end_footballscore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `league_img` char(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '赛事的图标',
  `league` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '赛事',
  `matchDate` date NULL DEFAULT NULL,
  `playTime` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '比赛时间',
  `homeTeam` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主队',
  `awayTeam_score` int(5) NULL DEFAULT NULL COMMENT '客队进球数',
  `homeTeam_score` int(5) NULL DEFAULT NULL COMMENT '主队进球数',
  `awayTeam` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客队',
  `createTime` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间，入库时间。',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 273 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of end_footballscore
-- ----------------------------
INSERT INTO `end_footballscore` VALUES (1, 'http://cdn.leisu.com/eventlogo/8f359c335d62fb21821e514f5b17c65e.png?imageView2/2/w/40', '巴圣青联', '2019-08-29', '23:50', '巴拉曼萨U20', 2, 0, '阿布利尔U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (2, 'http://cdn.leisu.com/eventlogo/3e7268d0a74219c1a6c5135bbf89c75d.png?imageView2/2/w/40', '沙特超', '2019-08-29', '23:45', '亚达禾', 0, 4, '德咸科', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (3, 'http://cdn.leisu.com/eventlogo/613992f25f20f204d13e4b690e25d840.png?imageView2/2/w/40', '伊朗超', '2019-08-29', '23:45', '纳夫特', 1, 1, '拿芙马塞索利曼', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (4, 'http://cdn.leisu.com/eventlogo/5165bb079af99a9e0a3eee4e4529dbdc.png?imageView2/2/w/40', '芬K联', '2019-08-29', '23:45', '亚特兰提斯B', 2, 4, '图普斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (5, 'http://cdn.leisu.com/eventlogo/613992f25f20f204d13e4b690e25d840.png?imageView2/2/w/40', '伊朗超', '2019-08-29', '23:30', '塞帕汉', 0, 1, '马奇尼沙治', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (6, 'http://cdn.leisu.com/eventlogo/bf8a29b07692e7454590d41bd9359fe4.png?imageView2/2/w/40', '女欧国杯', '2019-08-29', '23:30', '立陶宛女足', 2, 1, '克罗地亚女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (7, 'http://cdn.leisu.com/eventlogo/bf8a29b07692e7454590d41bd9359fe4.png?imageView2/2/w/40', '女欧国杯', '2019-08-29', '23:30', '以色列女足', 3, 2, '意大利女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (8, 'http://cdn.leisu.com/eventlogo/b1ae4f94fcb93ddb2e901a7341094ba8.png?imageView2/2/w/40', '突尼甲', '2019-08-29', '23:30', '古尔达尼', 1, 0, '卡罗安纳瑟', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (9, 'http://cdn.leisu.com/eventlogo/eb238ea04ef2fa322337d5c64caca9cb.png?imageView2/2/w/40', '芬乙附', '2019-08-29', '23:30', 'PEPO拉宾兰塔', 3, 1, '吉普', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (10, 'http://cdn.leisu.com/eventlogo/eb238ea04ef2fa322337d5c64caca9cb.png?imageView2/2/w/40', '芬乙附', '2019-08-29', '23:30', 'GBK科科拉', 1, 0, 'SJK学院', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (11, 'http://cdn.leisu.com/eventlogo/dde44558274f5fa146c8856817409989.png?imageView2/2/w/40', '爱沙乙', '2019-08-29', '23:30', '科罗拉二队', 2, 5, '耶尔韦', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (12, 'http://cdn.leisu.com/eventlogo/dde44558274f5fa146c8856817409989.png?imageView2/2/w/40', '爱沙乙', '2019-08-29', '23:30', '雷克维拉', 2, 4, '塔林利华戴亚B队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (13, 'http://cdn.leisu.com/eventlogo/54682367263f0ab8456e5891ce3c9ee4.png?imageView2/2/w/40', '爱沙丙', '2019-08-29', '23:30', '波赫亚塔林', 4, 3, '塔巴沙卢查玛', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (14, 'http://cdn.leisu.com/eventlogo/54682367263f0ab8456e5891ce3c9ee4.png?imageView2/2/w/40', '爱沙丙', '2019-08-29', '23:30', '奎拉', 2, 4, '禾鲁', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (15, 'http://cdn.leisu.com/eventlogo/54682367263f0ab8456e5891ce3c9ee4.png?imageView2/2/w/40', '爱沙丙', '2019-08-29', '23:30', '瓦尼迪拉', 0, 2, '诺米联', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (16, 'http://cdn.leisu.com/eventlogo/5165bb079af99a9e0a3eee4e4529dbdc.png?imageView2/2/w/40', '芬K联', '2019-08-29', '23:30', '纳佩斯', 2, 4, '凯特帕', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (17, 'http://cdn.leisu.com/eventlogo/dde44558274f5fa146c8856817409989.png?imageView2/2/w/40', '爱沙乙', '2019-08-29', '23:25', '爱尔华', 1, 4, '潭美卡B队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (18, 'http://cdn.leisu.com/eventlogo/5165bb079af99a9e0a3eee4e4529dbdc.png?imageView2/2/w/40', '芬K联', '2019-08-29', '23:25', 'ACE', 5, 1, '谭柏勒恩', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (19, 'http://cdn.leisu.com/eventlogo/5165bb079af99a9e0a3eee4e4529dbdc.png?imageView2/2/w/40', '芬K联', '2019-08-29', '23:25', '琦凯', 1, 1, '富图拉', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (20, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '23:15', '阿波罗拉里萨斯', 1, 0, '泰利卡拉', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (21, 'http://cdn.leisu.com/eventlogo/c5a799066f751c109e23bfa241e29c75.png?imageView2/2/w/40', '非洲运', '2019-08-29', '23:00', '马里U20', 0, 0, '塞内加尔U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (22, 'http://cdn.leisu.com/eventlogo/515e6e243dd12df431ae10bb2f5f7d0f.png?imageView2/2/w/40', '保U19', '2019-08-29', '23:00', '特萨斯科塞洛U19', 3, 1, '卢多格德斯U19', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (23, 'http://cdn.leisu.com/eventlogo/934d8103933f0c7d11ed4c008bedc8ce.png?imageView2/2/w/40', '挪威U19', '2019-08-29', '23:00', '瓦勒伦加U19', 1, 1, '史达U19', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (24, 'http://cdn.leisu.com/eventlogo/5165bb079af99a9e0a3eee4e4529dbdc.png?imageView2/2/w/40', '芬K联', '2019-08-29', '23:00', '图伦泰斯图', 4, 4, '爱斯柏', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (25, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '22:35', '贝特谢安', 4, 3, '麦卡比', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (26, 'http://cdn.leisu.com/eventlogo/613992f25f20f204d13e4b690e25d840.png?imageView2/2/w/40', '伊朗超', '2019-08-29', '22:30', '德黑兰独立', 1, 1, '弗拉德', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (27, 'http://cdn.leisu.com/eventlogo/d2e9c7a1da8e0eb131019669344528e5.png?imageView2/2/w/40', '卡塔尔联', '2019-08-29', '22:10', '威柯拉', 0, 2, '卡塔尔SC', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (28, 'http://cdn.leisu.com/eventlogo/e0a5642b576b5963294ea572207c1b1d.png?imageView2/2/w/40', '国际友谊', '2019-08-29', '22:00', '卡塔尔U18', 3, 2, '巴林U18', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (29, 'http://cdn.leisu.com/eventlogo/e0a5642b576b5963294ea572207c1b1d.png?imageView2/2/w/40', '国际友谊', '2019-08-29', '22:00', '白俄罗斯U17', 2, 0, '土耳其U17', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (30, 'http://cdn.leisu.com/eventlogo/e0a5642b576b5963294ea572207c1b1d.png?imageView2/2/w/40', '国际友谊', '2019-08-29', '22:00', '乌克兰U17', 0, 2, '以色列U17', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (31, 'http://cdn.leisu.com/eventlogo/e0a5642b576b5963294ea572207c1b1d.png?imageView2/2/w/40', '国际友谊', '2019-08-29', '22:00', '爱沙尼亚U17', 1, 0, '瑞典U17', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (32, 'http://cdn.leisu.com/eventlogo/e0a5642b576b5963294ea572207c1b1d.png?imageView2/2/w/40', '国际友谊', '2019-08-29', '22:00', '拉脱维亚U17', 0, 2, '阿塞拜疆U17', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (33, 'http://cdn.leisu.com/eventlogo/613992f25f20f204d13e4b690e25d840.png?imageView2/2/w/40', '伊朗超', '2019-08-29', '22:00', '帕蒂德马斯哈德', 1, 2, '沙辛布什尔', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (34, 'http://cdn.leisu.com/eventlogo/ec8410b71e6d0cfee7486f7434f652e0.png?imageView2/2/w/40', '墨西U20', '2019-08-29', '22:00', '蒙特雷U20', 1, 3, '普马斯U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (35, 'http://cdn.leisu.com/eventlogo/33ffee58f9e04d5d9ecb4b778cefd68a.png?imageView2/2/w/40', '斯伐杯', '2019-08-29', '21:55', 'SK贝拉', 1, 5, '波鲁巴', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (36, 'http://cdn.leisu.com/eventlogo/9eb33f4e6de15d11c2d270510c0e3f92.png?imageView2/2/w/40', '阿曼杯', '2019-08-29', '21:55', '沙尔俱乐部', 2, 2, '萨汉姆', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (37, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '21:50', '般尼亚斯后备', 2, 0, '艾查捷拉后备队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (38, 'http://cdn.leisu.com/eventlogo/9eb33f4e6de15d11c2d270510c0e3f92.png?imageView2/2/w/40', '阿曼杯', '2019-08-29', '21:45', '苏维克', 0, 1, '拿达', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (39, 'http://cdn.leisu.com/eventlogo/9eb33f4e6de15d11c2d270510c0e3f92.png?imageView2/2/w/40', '阿曼杯', '2019-08-29', '21:40', '玛斯卡特', 0, 0, '席贝', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (40, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '21:30', '塔维桑里', 0, 1, '伊斯帕塔士邦', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (41, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '21:30', '布尔萨耶尔德勒姆士邦', 0, 1, '伯卢尤维塔拉士邦', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (42, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '21:30', '亚洛瓦卡迪科', 0, 0, '贝卡士邦', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (43, 'http://cdn.leisu.com/eventlogo/3093b55e2e81347318968d072ada1ff3.png?imageView2/2/w/40', '格鲁乙', '2019-08-29', '21:05', '史帕特其', 1, 2, '祖格迪迪', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (44, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '21:00', '卡雷曼', 0, 1, '布卡科', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (45, 'http://cdn.leisu.com/eventlogo/1b2021cbc5916b3e1a07cebf3fecdfbe.png?imageView2/2/w/40', '乌兹甲', '2019-08-29', '21:00', '马沙尔', 2, 2, '花刺子模乌尔根奇', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (46, 'http://cdn.leisu.com/eventlogo/2cf1e35cdd6ee2d7e7ba1a90c8e8f137.png?imageView2/2/w/40', '亚美超', '2019-08-29', '21:00', '诺亚FC', 0, 2, '班南特斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (47, 'http://cdn.leisu.com/eventlogo/bac4af61758b34720dab210cc4d65c10.png?imageView2/2/w/40', '乌克U21', '2019-08-29', '21:00', '丹斯那切尼赫夫U21', 2, 2, '卡帕提U21', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (48, 'http://cdn.leisu.com/eventlogo/8a51ca5342af78f9e157630a9b33e2f5.png?imageView2/2/w/40', '亚美甲', '2019-08-29', '21:00', '塞万青年', 0, 0, '舒拉克B队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (49, 'http://cdn.leisu.com/eventlogo/3093b55e2e81347318968d072ada1ff3.png?imageView2/2/w/40', '格鲁乙', '2019-08-29', '21:00', '古利亚兰奇胡提', 2, 0, '舒库拉', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (50, 'http://cdn.leisu.com/eventlogo/48d0fc01493d4cf150f0e3dbdefa1192.png?imageView2/2/w/40', '津巴超', '2019-08-29', '21:00', '哈拉雷市', 0, 2, '查普古FC', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (51, 'http://cdn.leisu.com/eventlogo/48d0fc01493d4cf150f0e3dbdefa1192.png?imageView2/2/w/40', '津巴超', '2019-08-29', '21:00', '特赖安格尔', 1, 2, '高地人', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (52, 'http://cdn.leisu.com/eventlogo/8f359c335d62fb21821e514f5b17c65e.png?imageView2/2/w/40', '巴圣青联', '2019-08-29', '21:00', '瓦斯科达伽马青年队', 0, 0, '米底那青年队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (53, 'http://cdn.leisu.com/eventlogo/c85ca7f7e166263d12ff2ee2576b0490.png?imageView2/2/w/40', '坦桑超', '2019-08-29', '21:00', '坦尚尼亞', 3, 1, '辛巴体育', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (54, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '20:55', '克兹查汉马斯堡', 3, 1, '土库克鲁兹卡雷', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (55, 'http://cdn.leisu.com/eventlogo/b965c315b5a9483113222365b16462c4.png?imageView2/2/w/40', '伊U23', '2019-08-29', '20:50', '奥林匹克安迪什U23', 2, 0, '塞柏U23', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (56, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '20:35', '基里斯', 0, 0, '德森士邦', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (57, 'http://cdn.leisu.com/eventlogo/b965c315b5a9483113222365b16462c4.png?imageView2/2/w/40', '伊U23', '2019-08-29', '20:35', '莫格哈维特德黑兰B队U23', 0, 0, '奥加布德黑兰U23', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (58, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '20:30', '犹高斯科瓦', 2, 0, '比莱吉克奥泽尔', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (59, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '20:30', '格雷莱士邦', 0, 1, '梅茲芬士邦', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (60, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '20:30', '卡斯堡', 0, 1, '霍斯万士邦', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (61, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '20:30', '坎奇瑞伯', 0, 2, '博亚巴德1868', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (62, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '20:30', '阿马兰迪', 1, 2, '卡赫塔士邦', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (63, 'http://cdn.leisu.com/eventlogo/037cb5cd1380d9d8506dec3f712e749f.png?imageView2/2/w/40', '阿塞甲', '2019-08-29', '20:30', '沙巴巴库B队', 1, 2, '兹拉B队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (64, 'http://cdn.leisu.com/eventlogo/b965c315b5a9483113222365b16462c4.png?imageView2/2/w/40', '伊U23', '2019-08-29', '20:30', '莫格哈维特德黑兰U23', 1, 1, '巴德兰德黑兰U23', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (65, 'http://cdn.leisu.com/eventlogo/b965c315b5a9483113222365b16462c4.png?imageView2/2/w/40', '伊U23', '2019-08-29', '20:30', '尼洛耶扎米尼U23', 1, 2, '柏斯波利斯U23', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (66, 'http://cdn.leisu.com/eventlogo/037cb5cd1380d9d8506dec3f712e749f.png?imageView2/2/w/40', '阿塞甲', '2019-08-29', '20:25', '阿格苏', 2, 1, '萨巴伊B队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (67, 'http://cdn.leisu.com/eventlogo/1b2021cbc5916b3e1a07cebf3fecdfbe.png?imageView2/2/w/40', '乌兹甲', '2019-08-29', '20:00', '费尔干纳夫兹', 1, 2, '休尔坦古佐', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (68, 'http://cdn.leisu.com/eventlogo/b965c315b5a9483113222365b16462c4.png?imageView2/2/w/40', '伊U23', '2019-08-29', '19:30', '艾斯迪格拿U23', 0, 3, '阿比普尔山U23', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (69, 'http://cdn.leisu.com/eventlogo/e2653671445941fbf4fdb5cdcd290623.png?imageView2/2/w/40', '印尼U20', '2019-08-29', '19:05', '查亚普拉U20', 1, 2, 'PSM马卡萨U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (70, 'http://cdn.leisu.com/eventlogo/e0a5642b576b5963294ea572207c1b1d.png?imageView2/2/w/40', '国际友谊', '2019-08-29', '19:00', '北爱尔兰女足U19', 1, 0, '苏格兰女足U19', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (71, 'http://cdn.leisu.com/eventlogo/dcbda66eb9f9ffd1e180d4c64e9bff70.png?imageView2/2/w/40', '俄青联', '2019-08-29', '19:00', '苏维杜夫青年队', 3, 0, '莫斯科迪纳摩青年队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (72, 'http://cdn.leisu.com/eventlogo/808c75c2e0ea650e409336497ca1af38.png?imageView2/2/w/40', '泰超', '2019-08-29', '19:00', '清迈', 1, 0, '尚卡汶里', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (73, 'http://cdn.leisu.com/eventlogo/ae083f103ad23631393f0915f3e3b1f6.png?imageView2/2/w/40', '俄乙', '2019-08-29', '19:00', '乌法B队', 3, 1, '诺斯塔', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (74, 'http://cdn.leisu.com/eventlogo/d3215de6920c33d6b3f2a6a17a42b0f3.png?imageView2/2/w/40', '哈萨乙', '2019-08-29', '19:00', '阿勒泰瑟美后备队', 1, 3, '卡萨尔后备队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (75, 'http://cdn.leisu.com/eventlogo/d3215de6920c33d6b3f2a6a17a42b0f3.png?imageView2/2/w/40', '哈萨乙', '2019-08-29', '19:00', '斯咸迪苏后备队', 0, 2, '奥达巴斯后备队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (76, 'http://cdn.leisu.com/eventlogo/league.jpg?imageView2/2/w/40', '印普超', '2019-08-29', '18:40', '普加巴', 2, 2, '卡尔PF', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (77, 'http://cdn.leisu.com/eventlogo/b965c315b5a9483113222365b16462c4.png?imageView2/2/w/40', '伊U23', '2019-08-29', '18:35', '索克浦山白达斯特U23', 0, 1, '拉德索尔克U23', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (78, 'http://cdn.leisu.com/eventlogo/0de58f054c053976423a1816e99a6c3f.png?imageView2/2/w/40', '土杯', '2019-08-29', '18:30', '曼迪尔士邦', 1, 2, '比特利斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (79, 'http://cdn.leisu.com/eventlogo/b965c315b5a9483113222365b16462c4.png?imageView2/2/w/40', '伊U23', '2019-08-29', '18:30', '伊朗海军U23', 2, 3, '佩洛万赫贾兹U23', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (80, 'http://cdn.leisu.com/eventlogo/2b5289281ad576946c1ce9b04415cb8d.png?imageView2/2/w/40', '印西隆联', '2019-08-29', '18:05', '南基维伊拉特', 0, 0, '里斯SC', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (81, 'http://cdn.leisu.com/eventlogo/0646b5276f2b9f744aace095593e5fe7.png?imageView2/2/w/40', '日大学锦', '2019-08-29', '18:05', '北开大学', 11, 0, '拓殖大学', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (82, 'http://cdn.leisu.com/eventlogo/fa3a3c407f82377f55c19c5d403335c7.jpg?imageView2/2/w/40', '韩女联', '2019-08-29', '18:00', '昌宁女足', 3, 1, '龟尾女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (83, 'http://cdn.leisu.com/eventlogo/fa3a3c407f82377f55c19c5d403335c7.jpg?imageView2/2/w/40', '韩女联', '2019-08-29', '18:00', '水原FCM女足', 2, 3, '庆州FC女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (84, 'http://cdn.leisu.com/eventlogo/fa3a3c407f82377f55c19c5d403335c7.jpg?imageView2/2/w/40', '韩女联', '2019-08-29', '18:00', '华川KSPO女足', 0, 1, '报恩尚武女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (85, 'http://cdn.leisu.com/eventlogo/d3215de6920c33d6b3f2a6a17a42b0f3.png?imageView2/2/w/40', '哈萨乙', '2019-08-29', '18:00', '奥肯咸特普斯后备队', 0, 1, '鲁扎耶夫卡', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (86, 'http://cdn.leisu.com/eventlogo/d3215de6920c33d6b3f2a6a17a42b0f3.png?imageView2/2/w/40', '哈萨乙', '2019-08-29', '18:00', '斯迪尤索', 0, 3, '塔兰后备队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (87, 'http://cdn.leisu.com/eventlogo/fa3a3c407f82377f55c19c5d403335c7.jpg?imageView2/2/w/40', '韩女联', '2019-08-29', '17:55', '现代制铁女足', 1, 5, '首尔亚马逊女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (88, 'http://cdn.leisu.com/eventlogo/483821075745ccbba59cce264de3bcc3.png?imageView2/2/w/40', '加尔联', '2019-08-29', '17:40', '莫哈末丹', 1, 2, '乔治泰勒加菲', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (89, 'http://cdn.leisu.com/eventlogo/3eacd5dd6c839e2e9ed439dcb32eb993.png?imageView2/2/w/40', '澳维女超', '2019-08-29', '17:30', '海德堡女足', 0, 4, '南方联女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (90, 'http://cdn.leisu.com/eventlogo/f3e7e72666bf87540ea792082d33b0fc.png?imageView2/2/w/40', '缅甸U21', '2019-08-29', '17:00', '达根U21', 1, 1, '实皆联U21', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (91, 'http://cdn.leisu.com/eventlogo/d0a699df456d39f8220b5782fab14771.png?imageView2/2/w/40', '印尼乙', '2019-08-29', '17:00', 'PS宾坦', 1, 2, '帕卡萨', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (92, 'http://cdn.leisu.com/eventlogo/ad216ba062177c42bc20cdfbb0ca75c6.png?imageView2/2/w/40', '斯伐丙', '2019-08-29', '17:00', '泰拿华斯巴达B队', 1, 2, '卡尔纳侯诺姆', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (93, 'http://cdn.leisu.com/eventlogo/0646b5276f2b9f744aace095593e5fe7.png?imageView2/2/w/40', '日大学锦', '2019-08-29', '17:00', '高知大學', 1, 0, '静冈桑戈大学', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (94, 'http://cdn.leisu.com/eventlogo/0646b5276f2b9f744aace095593e5fe7.png?imageView2/2/w/40', '日大学锦', '2019-08-29', '17:00', '大阪经济大学', 2, 1, '中京大学', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (95, 'http://cdn.leisu.com/eventlogo/0646b5276f2b9f744aace095593e5fe7.png?imageView2/2/w/40', '日大学锦', '2019-08-29', '17:00', '大坂体育大学', 0, 2, '北海道教育大学岩见泽分校', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (96, 'http://cdn.leisu.com/eventlogo/4d4af10543d790c1b7d6368551ff0e0c.png?imageView2/2/w/40', '印尼甲', '2019-08-29', '16:30', 'PSBK比利达', 1, 2, 'PSG尖米士', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (97, 'http://cdn.leisu.com/eventlogo/4d4af10543d790c1b7d6368551ff0e0c.png?imageView2/2/w/40', '印尼甲', '2019-08-29', '16:25', '培斯塔坦格朗', 1, 3, 'PSCS芝拉扎', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (98, 'http://cdn.leisu.com/eventlogo/da403bbb4c1820350ee8c5d86419defa.png?imageView2/2/w/40', '马统杯', '2019-08-29', '16:15', '帕拉克U21', 1, 1, '玛拉工艺大学U21', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (99, 'http://cdn.leisu.com/eventlogo/da403bbb4c1820350ee8c5d86419defa.png?imageView2/2/w/40', '马统杯', '2019-08-29', '16:15', '马印足协体育理事会U21', 2, 0, '特伦加努FCU21', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (100, 'http://cdn.leisu.com/eventlogo/da403bbb4c1820350ee8c5d86419defa.png?imageView2/2/w/40', '马统杯', '2019-08-29', '16:15', '柔佛III U21', 0, 0, '霹雳州发展局U21', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (101, 'http://cdn.leisu.com/eventlogo/da403bbb4c1820350ee8c5d86419defa.png?imageView2/2/w/40', '马统杯', '2019-08-29', '16:15', '雪兰我州发展局U21', 0, 1, '雪州U21', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (102, 'http://cdn.leisu.com/eventlogo/e466aa356a81d9f598dfd93b3232f128.png?imageView2/2/w/40', '塞尔U19', '2019-08-29', '16:05', 'FK布罗道U19', 0, 1, '雷德U19', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (103, 'http://cdn.leisu.com/eventlogo/d0a699df456d39f8220b5782fab14771.png?imageView2/2/w/40', '印尼乙', '2019-08-29', '15:55', '波斯喀布尔贝卡', 1, 4, '卡博马尼亚', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (104, 'http://cdn.leisu.com/eventlogo/d0a699df456d39f8220b5782fab14771.png?imageView2/2/w/40', '印尼乙', '2019-08-29', '15:50', '瓦卡托比', 2, 2, '波西莫巴', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (105, 'http://cdn.leisu.com/eventlogo/d0a699df456d39f8220b5782fab14771.png?imageView2/2/w/40', '印尼乙', '2019-08-29', '15:50', '德波克联合', 1, 0, '爱国者坎德拉巴', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (106, 'http://cdn.leisu.com/eventlogo/d0a699df456d39f8220b5782fab14771.png?imageView2/2/w/40', '印尼乙', '2019-08-29', '15:45', '珀耳塞斯', 2, 1, '喀布尔', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (107, 'http://cdn.leisu.com/eventlogo/e2653671445941fbf4fdb5cdcd290623.png?imageView2/2/w/40', '印尼U20', '2019-08-29', '15:00', '普萨马尼亚U20', 3, 0, '泗水珀斯贝亚U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (108, 'http://cdn.leisu.com/eventlogo/0646b5276f2b9f744aace095593e5fe7.png?imageView2/2/w/40', '日大学锦', '2019-08-29', '14:30', '褔冈大学', 1, 1, '新泻医科福利大学', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (109, 'http://cdn.leisu.com/eventlogo/0646b5276f2b9f744aace095593e5fe7.png?imageView2/2/w/40', '日大学锦', '2019-08-29', '14:30', '太平洋大学', 4, 2, '仙台大学', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (110, 'http://cdn.leisu.com/eventlogo/0646b5276f2b9f744aace095593e5fe7.png?imageView2/2/w/40', '日大学锦', '2019-08-29', '14:30', '鹿屋体育大学', 1, 3, '四国谷仓大学', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (111, 'http://cdn.leisu.com/eventlogo/0646b5276f2b9f744aace095593e5fe7.png?imageView2/2/w/40', '日大学锦', '2019-08-29', '14:30', '日本文理大学', 3, 0, '东海大学', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (112, 'http://cdn.leisu.com/eventlogo/d0a699df456d39f8220b5782fab14771.png?imageView2/2/w/40', '印尼乙', '2019-08-29', '13:45', '加斯科', 3, 2, '古拉马斯塔布滕', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (113, 'http://cdn.leisu.com/eventlogo/b965c315b5a9483113222365b16462c4.png?imageView2/2/w/40', '伊U23', '2019-08-29', '13:40', '培坎U23', 0, 1, '阿夫兰查尔什谢米兰U23', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (114, 'http://cdn.leisu.com/eventlogo/324d7a463a24c4cd35ef83456a1b8d05.png?imageView2/2/w/40', '墨西联春', '2019-08-29', '10:05', '提华纳', 2, 3, '阿苏尔', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (115, 'http://cdn.leisu.com/eventlogo/324d7a463a24c4cd35ef83456a1b8d05.png?imageView2/2/w/40', '墨西联春', '2019-08-29', '10:00', '内卡萨', 1, 1, '托卢卡', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (116, 'http://cdn.leisu.com/eventlogo/bf381db506f20ae02d9409258a919585.png?imageView2/2/w/40', '中北美联', '2019-08-29', '10:00', '亚古雷', 0, 1, '萨普里萨', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (117, 'http://cdn.leisu.com/eventlogo/8db9a5d445b772788d5a1f9719133e59.png?imageView2/2/w/40', '加拿职', '2019-08-29', '09:00', '骑兵队', 1, 1, '太平洋FC', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (118, 'http://cdn.leisu.com/eventlogo/3fa5677aac7f651bb7d6408626c56ee0.png?imageView2/2/w/40', '尼拉甲', '2019-08-29', '09:00', '萨巴纳斯', 2, 0, '里尔马德里斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (119, 'http://cdn.leisu.com/eventlogo/fd4782d7a0ee4e7657b6aa9bba993362.jpg?imageView2/2/w/40', '厄瓜杯', '2019-08-29', '08:30', '特克尼克', 0, 1, '埃梅莱克', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (120, 'http://cdn.leisu.com/eventlogo/59bd81b686fe94b57f0e3c3ff2a28c45.png?imageView2/2/w/40', '自由杯', '2019-08-29', '08:30', '巴西国际', 1, 1, '弗拉门戈', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (121, 'http://cdn.leisu.com/eventlogo/c80157ca8b22dbdd45ef9feece285a2b.png?imageView2/2/w/40', '美乙', '2019-08-29', '08:30', '塔尔萨钻机工', 1, 1, '拉斯维加斯光', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (122, 'http://cdn.leisu.com/eventlogo/31ec0c91166f05546b746945f16eae1c.png?imageView2/2/w/40', '哥伦杯', '2019-08-29', '08:30', '云斯卡尔达斯', 3, 2, '麦德林独立', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (123, 'http://cdn.leisu.com/eventlogo/8db9a5d445b772788d5a1f9719133e59.png?imageView2/2/w/40', '加拿职', '2019-08-29', '08:00', '瓦鲁尔FC', 0, 2, 'HFX流浪者', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (124, 'http://cdn.leisu.com/eventlogo/682287c83649a418bb66287d8cf084e2.png?imageView2/2/w/40', '美职业', '2019-08-29', '08:00', '蒙特利尔冲击', 1, 2, '温哥华白帽', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (125, 'http://cdn.leisu.com/eventlogo/324d7a463a24c4cd35ef83456a1b8d05.png?imageView2/2/w/40', '墨西联春', '2019-08-29', '08:00', '莱昂', 2, 2, '桑托斯拉古纳', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (126, 'http://cdn.leisu.com/eventlogo/11ca0fe4febca9e749bb30205c3c1326.png?imageView2/2/w/40', '美超', '2019-08-29', '08:00', '麦迪逊前锋足球俱乐部', 1, 0, '格林维勒FC', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (127, 'http://cdn.leisu.com/eventlogo/bf381db506f20ae02d9409258a919585.png?imageView2/2/w/40', '中北美联', '2019-08-29', '08:00', '瓜斯塔托亚', 0, 0, '齐奥内斯交流会', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (128, 'http://cdn.leisu.com/eventlogo/c80157ca8b22dbdd45ef9feece285a2b.png?imageView2/2/w/40', '美乙', '2019-08-29', '07:30', '亚特兰大联B队', 2, 1, '孟菲斯901', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (129, 'http://cdn.leisu.com/eventlogo/c80157ca8b22dbdd45ef9feece285a2b.png?imageView2/2/w/40', '美乙', '2019-08-29', '07:30', '劳顿联', 1, 1, '伯明翰军团', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (130, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '07:00', '卢维丹斯青年队', 0, 1, '阿拉瓜亚青年队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (131, 'http://cdn.leisu.com/eventlogo/ec8410b71e6d0cfee7486f7434f652e0.png?imageView2/2/w/40', '墨西U20', '2019-08-29', '06:45', '蒂华纳U20', 0, 3, '阿苏尔U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (132, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '06:30', '国际体育会PB', 1, 0, '圣保罗水晶FC', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (133, 'http://cdn.leisu.com/eventlogo/59bd81b686fe94b57f0e3c3ff2a28c45.png?imageView2/2/w/40', '自由杯', '2019-08-29', '06:15', '博卡青年', 0, 0, '利加大学', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (134, 'http://cdn.leisu.com/eventlogo/6813ba1ebe40c6bc7bb1b081d916a1a6.png?imageView2/2/w/40', '巴西乙', '2019-08-29', '06:15', '巴西瓜拉尼', 0, 1, '隆迪那', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (135, 'http://cdn.leisu.com/eventlogo/6813ba1ebe40c6bc7bb1b081d916a1a6.png?imageView2/2/w/40', '巴西乙', '2019-08-29', '06:15', '萨本托', 2, 0, '米内罗美洲', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (136, 'http://cdn.leisu.com/eventlogo/e0a5642b576b5963294ea572207c1b1d.png?imageView2/2/w/40', '国际友谊', '2019-08-29', '06:10', '萨尔瓦多女足', 3, 3, '危地马拉女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (137, 'http://cdn.leisu.com/eventlogo/21373345355d0d46050508d0818a463a.png?imageView2/2/w/40', '阿根廷杯', '2019-08-29', '06:10', '萨兰迪兵工厂', 3, 2, '卡塞罗斯学生队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (138, 'http://cdn.leisu.com/eventlogo/31beaaee73f7b112e64c14e0c20b0fbe.png?imageView2/2/w/40', '委內超秋', '2019-08-29', '06:00', '港发院', 3, 3, '苏利亚', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (139, 'http://cdn.leisu.com/eventlogo/3fa5677aac7f651bb7d6408626c56ee0.png?imageView2/2/w/40', '尼拉甲', '2019-08-29', '05:00', '奥科塔尔', 0, 0, '埃斯特利', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (140, 'http://cdn.leisu.com/eventlogo/727e803cf129f5079d5b54a97c86740e.png?imageView2/2/w/40', '巴拉杯', '2019-08-29', '04:00', '费布雷诺', 1, 1, '巴拉圭河床', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (141, 'http://cdn.leisu.com/eventlogo/fd9fd14043b32e444ba55a48d4d3dcef.png?imageView2/2/w/40', '委內乙', '2019-08-29', '04:00', '提坦斯', 1, 2, '弗龙特拉', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (142, 'http://cdn.leisu.com/eventlogo/21373345355d0d46050508d0818a463a.png?imageView2/2/w/40', '阿根廷杯', '2019-08-29', '04:00', '帕特罗纳图', 1, 0, '阿根廷独立', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (143, 'http://cdn.leisu.com/eventlogo/fd9fd14043b32e444ba55a48d4d3dcef.png?imageView2/2/w/40', '委內乙', '2019-08-29', '03:30', '该柯莫纳雷', 2, 5, '洛斯安第斯大学', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (144, 'http://cdn.leisu.com/eventlogo/fd9fd14043b32e444ba55a48d4d3dcef.png?imageView2/2/w/40', '委內乙', '2019-08-29', '03:30', '艾尔维吉亚', 1, 1, '苏利亚体育会', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (145, 'http://cdn.leisu.com/eventlogo/fd9fd14043b32e444ba55a48d4d3dcef.png?imageView2/2/w/40', '委內乙', '2019-08-29', '03:00', '委内瑞拉中央大学', 1, 1, '佩特罗勒罗斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (146, 'http://cdn.leisu.com/eventlogo/5bacd6dfbc822158823f1b277339feaf.png?imageView2/2/w/40', '巴青锦', '2019-08-29', '03:00', '弗拉门戈青年队', 1, 0, '克鲁塞罗青年队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (147, 'http://cdn.leisu.com/eventlogo/0f08a3cb2855ea589e82a2e12b37b5a3.png?imageView2/2/w/40', '爱尔高联', '2019-08-29', '03:00', '剑凯尔特人', 0, 1, '斯克里斯镇', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (148, 'http://cdn.leisu.com/eventlogo/a3196032c0e1dd2a684b95ef147fc07c.png?imageView2/2/w/40', '巴女甲', '2019-08-29', '03:00', '圣保罗女足', 1, 1, '桑托斯女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (149, 'http://cdn.leisu.com/eventlogo/fd9fd14043b32e444ba55a48d4d3dcef.png?imageView2/2/w/40', '委內乙', '2019-08-29', '03:00', '钻石圭亚那', 0, 2, '波多港', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (150, 'http://cdn.leisu.com/eventlogo/fd9fd14043b32e444ba55a48d4d3dcef.png?imageView2/2/w/40', '委內乙', '2019-08-29', '03:00', '次达维罗提图', 0, 2, '丰达西翁', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (151, 'http://cdn.leisu.com/eventlogo/b8412e60d779eb9cf46470f647f577d3.png?imageView2/2/w/40', '欧冠杯', '2019-08-29', '03:00', '布鲁日', 1, 2, 'LASK林茨', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (152, 'http://cdn.leisu.com/eventlogo/b8412e60d779eb9cf46470f647f577d3.png?imageView2/2/w/40', '欧冠杯', '2019-08-29', '03:00', '布拉格斯拉维亚', 0, 1, '克卢日', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (153, 'http://cdn.leisu.com/eventlogo/2e35f174ea9ca3b3a230313e663ae653.png?imageView2/2/w/40', '法甲', '2019-08-29', '03:00', '尼斯', 2, 1, '马赛', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (154, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '03:00', 'UD贝拉维斯塔', 2, 2, '托马雷斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (155, 'http://cdn.leisu.com/eventlogo/b8412e60d779eb9cf46470f647f577d3.png?imageView2/2/w/40', '欧冠杯', '2019-08-29', '03:00', '阿贾克斯', 0, 2, '希腊人竞技', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (156, 'http://cdn.leisu.com/eventlogo/7a198206d4ffff55104b78e704859890.png?imageView2/2/w/40', '苏低联', '2019-08-29', '02:45', '圣灵大学', 0, 4, '华里雷森', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (157, 'http://cdn.leisu.com/eventlogo/7a198206d4ffff55104b78e704859890.png?imageView2/2/w/40', '苏低联', '2019-08-29', '02:45', '加拉', 3, 0, '东斯特灵郡', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (158, 'http://cdn.leisu.com/eventlogo/7a198206d4ffff55104b78e704859890.png?imageView2/2/w/40', '苏低联', '2019-08-29', '02:45', '格雷纳', 0, 0, '坎伯诺尔德', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (159, 'http://cdn.leisu.com/eventlogo/0f08a3cb2855ea589e82a2e12b37b5a3.png?imageView2/2/w/40', '爱尔高联', '2019-08-29', '02:45', '莱伊港', 1, 1, '都柏林巴士', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (160, 'http://cdn.leisu.com/eventlogo/f5744d936a0d95fd797206fd6414f342.png?imageView2/2/w/40', '北爱后备', '2019-08-29', '02:45', '拉恩后备队', 3, 0, '克鲁萨德后备队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (161, 'http://cdn.leisu.com/eventlogo/f5744d936a0d95fd797206fd6414f342.png?imageView2/2/w/40', '北爱后备', '2019-08-29', '02:45', '格伦托兰后备队', 0, 2, '巴利米納后备队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (162, 'http://cdn.leisu.com/eventlogo/c8031a66205fd6de7caaf5fd5032cbab.png?imageView2/2/w/40', '英联杯', '2019-08-29', '02:45', '罗瑟汉姆', 1, 0, '谢周三', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (163, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '02:45', '朗里奇镇', 2, 0, '查诺克理查德', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (164, 'http://cdn.leisu.com/eventlogo/ad049a55bd7d4ab2cc2720d058be4f45.png?imageView2/2/w/40', '北爱联杯', '2019-08-29', '02:45', 'FC协会队', 2, 3, 'PSNI', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (165, 'http://cdn.leisu.com/eventlogo/b5a40cbaefac434d780adc706326bd53.png?imageView2/2/w/40', '马尔甲', '2019-08-29', '02:45', '希伯尼安斯', 1, 4, '塔希恩', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (166, 'http://cdn.leisu.com/eventlogo/c8031a66205fd6de7caaf5fd5032cbab.png?imageView2/2/w/40', '英联杯', '2019-08-29', '02:45', '伯恩利', 3, 1, '桑德兰', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (167, 'http://cdn.leisu.com/eventlogo/c8031a66205fd6de7caaf5fd5032cbab.png?imageView2/2/w/40', '英联杯', '2019-08-29', '02:45', '纽卡斯尔联', 1, 1, '莱切斯特城', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (168, 'http://cdn.leisu.com/eventlogo/c8031a66205fd6de7caaf5fd5032cbab.png?imageView2/2/w/40', '英联杯', '2019-08-29', '02:45', '女王公园巡游者', 2, 0, '朴茨茅斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (169, 'http://cdn.leisu.com/eventlogo/c8031a66205fd6de7caaf5fd5032cbab.png?imageView2/2/w/40', '英联杯', '2019-08-29', '02:45', '林肯城', 4, 2, '埃弗顿', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (170, 'http://cdn.leisu.com/eventlogo/c8031a66205fd6de7caaf5fd5032cbab.png?imageView2/2/w/40', '英联杯', '2019-08-29', '02:45', '伯恩茅斯', 0, 0, '格兰森林流浪', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (171, 'http://cdn.leisu.com/eventlogo/c8031a66205fd6de7caaf5fd5032cbab.png?imageView2/2/w/40', '英联杯', '2019-08-29', '02:45', '斯旺西', 0, 6, '剑桥联', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (172, 'http://cdn.leisu.com/eventlogo/3856d1c82c6896c8c53370e31f36365d.png?imageView2/2/w/40', '阿后备', '2019-08-29', '02:30', '真皮拉尔后备队', 0, 0, '伊希库斯尼斯塔史后备队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (173, 'http://cdn.leisu.com/eventlogo/3fa5677aac7f651bb7d6408626c56ee0.png?imageView2/2/w/40', '尼拉甲', '2019-08-29', '02:30', '奥科塔尔U21', 4, 0, '埃斯特利U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (174, 'http://cdn.leisu.com/eventlogo/70ef4c03999d146ccedaa0c1f97ce28b.png?imageView2/2/w/40', '冰岛U19', '2019-08-29', '02:30', '雷耶维克U19', 1, 3, 'IBVU19', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (175, 'http://cdn.leisu.com/eventlogo/43ef638056bdfb3279e22bda38003ba8.png?imageView2/2/w/40', '巴U20杯', '2019-08-29', '02:30', '阿帕雷西达U20', 2, 1, '安那波里娜U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (176, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '02:30', 'CD格沃拉', 0, 7, 'CD拉罗卡', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (177, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '02:30', '波卢洛斯CF', 1, 2, '希诺霍斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (178, 'http://cdn.leisu.com/eventlogo/bc45fb2ee55dc5b8f9326de52a9a949f.png?imageView2/2/w/40', '威冠北', '2019-08-29', '02:30', '兰格芬尼', 1, 1, '科尔温湾', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (179, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '02:30', '奥华伦斯', 0, 5, '维斯塔雷格里', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (180, 'http://cdn.leisu.com/eventlogo/52179bcb7c0832aeb3e64329bd599fc8.jpg?imageView2/2/w/40', '委内U20', '2019-08-29', '02:20', '港发院后备队', 0, 0, '拉尼罗斯瓜纳雷U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (181, 'http://cdn.leisu.com/eventlogo/cup.jpg?imageView2/2/w/40', '巴高杯', '2019-08-29', '02:15', '新奥里藏特U19', 1, 0, '普拉塔U19', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (182, 'http://cdn.leisu.com/eventlogo/3856d1c82c6896c8c53370e31f36365d.png?imageView2/2/w/40', '阿后备', '2019-08-29', '02:15', '多科苏德体育会后备队', 4, 2, '西班牙语体育会后备队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (183, 'http://cdn.leisu.com/eventlogo/c80959da23ccd24423256dd5d5812778.png?imageView2/2/w/40', '德地杯', '2019-08-29', '02:15', '弗里德里希斯', 0, 3, '1960哈努', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (184, 'http://cdn.leisu.com/eventlogo/8c8dadbb15c3020b0fcecbc6921abbb8.png?imageView2/2/w/40', '巴西U19', '2019-08-29', '02:05', '弗卡体育U19', 1, 3, '帕尔梅拉斯U19', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (185, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '02:05', '阿萬卡', 0, 3, '阿尔瓦伦加GDSC', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (186, 'http://cdn.leisu.com/eventlogo/cup.jpg?imageView2/2/w/40', '巴高杯', '2019-08-29', '02:00', '圣何塞PA', 0, 1, '艾维尼达', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (187, 'http://cdn.leisu.com/eventlogo/5bacd6dfbc822158823f1b277339feaf.png?imageView2/2/w/40', '巴青锦', '2019-08-29', '02:00', '博塔弗戈RJ青年队', 4, 1, '圣保罗青年队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (188, 'http://cdn.leisu.com/eventlogo/5bacd6dfbc822158823f1b277339feaf.png?imageView2/2/w/40', '巴青锦', '2019-08-29', '02:00', '维多利亚青年队', 2, 1, '米内罗美洲青年队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (189, 'http://cdn.leisu.com/eventlogo/5bacd6dfbc822158823f1b277339feaf.png?imageView2/2/w/40', '巴青锦', '2019-08-29', '02:00', '巴西国际青年队', 4, 3, '巴拉纳竞技青年队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (190, 'http://cdn.leisu.com/eventlogo/2a9a4fa3be482783422501086ed50511.png?imageView2/2/w/40', '女奥非预', '2019-08-29', '02:00', '阿尔及利亚女足', 2, 0, '尼日利亚女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (191, 'http://cdn.leisu.com/eventlogo/115e7859ecfa08d69efcc8168c3a76f2.png?imageView2/2/w/40', '巴克甲', '2019-08-29', '02:00', '梅斯奎塔', 1, 0, '阿拉鲁', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (192, 'http://cdn.leisu.com/eventlogo/5bacd6dfbc822158823f1b277339feaf.png?imageView2/2/w/40', '巴青锦', '2019-08-29', '02:00', '科林蒂安 U20', 2, 1, '利斯菲青年队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (193, 'http://cdn.leisu.com/eventlogo/5bacd6dfbc822158823f1b277339feaf.png?imageView2/2/w/40', '巴青锦', '2019-08-29', '02:00', '米内罗竞技青年队', 0, 4, '桑托斯 U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (194, 'http://cdn.leisu.com/eventlogo/6052a7371f24baf0cc76c335251a065d.png?imageView2/2/w/40', '埃及杯', '2019-08-29', '02:00', '扎马雷克', 0, 1, '艾玛卡沙', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (195, 'http://cdn.leisu.com/eventlogo/5bacd6dfbc822158823f1b277339feaf.png?imageView2/2/w/40', '巴青锦', '2019-08-29', '02:00', '帕尔梅拉斯 U20', 1, 2, '庞特普雷塔 U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (196, 'http://cdn.leisu.com/eventlogo/ad5a890a4cfddc49c056c3fd2153d7ad.png?imageView2/2/w/40', '波斯甲', '2019-08-29', '02:00', '伯拉治', 0, 0, '萨拉热窝', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (197, 'http://cdn.leisu.com/eventlogo/d22bdba43e98a6975f6e7dace922c83c.png?imageView2/2/w/40', '瑞士乙2', '2019-08-29', '02:00', '格兰德', 3, 1, '奥林匹克日内瓦', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (198, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '02:00', 'RCD卡拉班切', 0, 0, 'CD科斯拉达', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (199, 'http://cdn.leisu.com/eventlogo/16870b95ba7cb1091c914a032bfa04df.png?imageView2/2/w/40', '荷兰杯', '2019-08-29', '02:00', '艾度20', 0, 3, '史尼克', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (200, 'http://cdn.leisu.com/eventlogo/2d7f5a215540118ff3013d2948bdaf29.png?imageView2/2/w/40', '塞尔超', '2019-08-29', '02:00', '雷德', 3, 2, '古拉瑞奇', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (201, 'http://cdn.leisu.com/eventlogo/80bb8a9fe8f73340f00d491b24b345fd.png?imageView2/2/w/40', '西联杯', '2019-08-29', '02:00', '特鲁埃尔', 1, 3, '蒙松', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (202, 'http://cdn.leisu.com/eventlogo/friend.jpg?imageView2/2/w/40', '巴里区杯', '2019-08-29', '01:45', '迪斯波图', 1, 0, '邦苏塞索', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (203, 'http://cdn.leisu.com/eventlogo/c80959da23ccd24423256dd5d5812778.png?imageView2/2/w/40', '德地杯', '2019-08-29', '01:45', '阿尔滕巴丘', 1, 1, '维登贝鲁克', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (204, 'http://cdn.leisu.com/eventlogo/21373345355d0d46050508d0818a463a.png?imageView2/2/w/40', '阿根廷杯', '2019-08-29', '01:40', '索尔德马约', 4, 0, '科隆竞技', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (205, 'http://cdn.leisu.com/eventlogo/a455ed700a4cd289b4c33f050523a97c.png?imageView2/2/w/40', '南非女联', '2019-08-29', '01:35', 'JWW女足', 1, 5, '燕尾服女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (206, 'http://cdn.leisu.com/eventlogo/c80959da23ccd24423256dd5d5812778.png?imageView2/2/w/40', '德地杯', '2019-08-29', '01:30', '肯佩尼希', 3, 0, 'SC米尔海姆', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (207, 'http://cdn.leisu.com/eventlogo/c80959da23ccd24423256dd5d5812778.png?imageView2/2/w/40', '德地杯', '2019-08-29', '01:30', '恩内珀塔尔', 0, 2, '韦斯特法利亚', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (208, 'http://cdn.leisu.com/eventlogo/34af14c5019bd4107c7df3fe88d70509.png?imageView2/2/w/40', '南非超', '2019-08-29', '01:30', '奥兰多海盗', 0, 0, '金箭', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (209, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:30', '诺德豪森', 2, 3, '哈尔伯施塔特', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (210, 'http://cdn.leisu.com/eventlogo/93078e9e8d431637f7a400ecec6a5d53.png?imageView2/2/w/40', '德堡州联', '2019-08-29', '01:30', '威灵根', 1, 1, '列拉阿伦', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (211, 'http://cdn.leisu.com/eventlogo/93078e9e8d431637f7a400ecec6a5d53.png?imageView2/2/w/40', '德堡州联', '2019-08-29', '01:30', '特里尔', 1, 1, '凯泽斯劳滕青年队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (212, 'http://cdn.leisu.com/eventlogo/161a36970ea4ee8e37f2604c6550501d.png?imageView2/2/w/40', '瑞士丙', '2019-08-29', '01:30', '贝林佐纳', 1, 2, '苏黎世U21', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (213, 'http://cdn.leisu.com/eventlogo/161a36970ea4ee8e37f2604c6550501d.png?imageView2/2/w/40', '瑞士丙', '2019-08-29', '01:30', '查姆', 2, 3, 'YF尤文图斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (214, 'http://cdn.leisu.com/eventlogo/161a36970ea4ee8e37f2604c6550501d.png?imageView2/2/w/40', '瑞士丙', '2019-08-29', '01:30', '伊韦尔东', 0, 5, '克尼茨', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (215, 'http://cdn.leisu.com/eventlogo/ca7546132296cc3c2cf295fdaa517aba.png?imageView2/2/w/40', '瑞典3', '2019-08-29', '01:30', '布罗特比', 4, 4, '华伦图那', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (216, 'http://cdn.leisu.com/eventlogo/34af14c5019bd4107c7df3fe88d70509.png?imageView2/2/w/40', '南非超', '2019-08-29', '01:30', '茨普帕', 0, 0, '贝联', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (217, 'http://cdn.leisu.com/eventlogo/34af14c5019bd4107c7df3fe88d70509.png?imageView2/2/w/40', '南非超', '2019-08-29', '01:30', '马里茨堡联', 1, 0, '利奥帕德', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (218, 'http://cdn.leisu.com/eventlogo/34af14c5019bd4107c7df3fe88d70509.png?imageView2/2/w/40', '南非超', '2019-08-29', '01:30', '布隆方丹凯尔特', 2, 1, '马摩洛迪落日', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (219, 'http://cdn.leisu.com/eventlogo/34af14c5019bd4107c7df3fe88d70509.png?imageView2/2/w/40', '南非超', '2019-08-29', '01:30', '毕德威斯特大学', 1, 2, '斯泰伦博斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (220, 'http://cdn.leisu.com/eventlogo/bc45fb2ee55dc5b8f9326de52a9a949f.png?imageView2/2/w/40', '威冠北', '2019-08-29', '01:30', '兰法尔联', 1, 0, '匹赫高', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (221, 'http://cdn.leisu.com/eventlogo/34af14c5019bd4107c7df3fe88d70509.png?imageView2/2/w/40', '南非超', '2019-08-29', '01:30', '巴洛卡', 2, 0, '超体联盟', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (222, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:20', '云达不莱梅业余队', 1, 1, '弗伦斯堡', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (223, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:20', '卢比克', 2, 1, '沃尔夫斯堡青年队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (224, 'http://cdn.leisu.com/eventlogo/3ade18e8a8a4e33f331267d4eba9d503.png?imageView2/2/w/40', '阿拉冠', '2019-08-29', '01:15', '阿尔科威特', 1, 3, '萧塔', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (225, 'http://cdn.leisu.com/eventlogo/5165bb079af99a9e0a3eee4e4529dbdc.png?imageView2/2/w/40', '芬K联', '2019-08-29', '01:00', 'TPVB队', 0, 2, 'FJK', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (226, 'http://cdn.leisu.com/eventlogo/b02e3e6eba095ab909fb76a7fd77208e.png?imageView2/2/w/40', '波兰丁', '2019-08-29', '01:00', '莫托路宾', 1, 2, '波多贺', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (227, 'http://cdn.leisu.com/eventlogo/340050275b7ad0681ad1c2459b8107ac.png?imageView2/2/w/40', '苏丹超', '2019-08-29', '01:00', '希拉尔欧巴耶', 0, 1, '阿赫利阿特巴拉', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (228, 'http://cdn.leisu.com/eventlogo/3b6706057c96c70db5ae35156820cde8.png?imageView2/2/w/40', '匈乙', '2019-08-29', '01:00', '华萨斯', 1, 1, '卡辛巴斯凯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (229, 'http://cdn.leisu.com/eventlogo/15d5a3300dfb7dc00ca9a939d21f1244.png?imageView2/2/w/40', '西丁', '2019-08-29', '01:00', '祖维艾斯潘诺', 0, 1, '萨古蒂诺', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (230, 'http://cdn.leisu.com/eventlogo/3b6706057c96c70db5ae35156820cde8.png?imageView2/2/w/40', '匈乙', '2019-08-29', '01:00', '西奥福克', 1, 2, '萨佐诺克', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (231, 'http://cdn.leisu.com/eventlogo/3b6706057c96c70db5ae35156820cde8.png?imageView2/2/w/40', '匈乙', '2019-08-29', '01:00', '吉尔蒙特', 0, 3, '卡斯瓦利', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (232, 'http://cdn.leisu.com/eventlogo/3b6706057c96c70db5ae35156820cde8.png?imageView2/2/w/40', '匈乙', '2019-08-29', '01:00', '夏拿达斯', 0, 0, '布达尔斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (233, 'http://cdn.leisu.com/eventlogo/3b6706057c96c70db5ae35156820cde8.png?imageView2/2/w/40', '匈乙', '2019-08-29', '01:00', 'MTK匈格利亚', 4, 4, '阿贾克', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (234, 'http://cdn.leisu.com/eventlogo/3b6706057c96c70db5ae35156820cde8.png?imageView2/2/w/40', '匈乙', '2019-08-29', '01:00', '布达弗基MTE', 0, 1, '索罗克萨', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (235, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:00', '哈韦尔斯', 2, 3, '奧登堡格', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (236, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:00', '左登', 4, 4, '海德', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (237, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:00', '汉堡青年队', 4, 1, '雷登', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (238, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:00', '汉诺威业余队', 3, 2, '基尔B队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (239, 'http://cdn.leisu.com/eventlogo/ad5a890a4cfddc49c056c3fd2153d7ad.png?imageView2/2/w/40', '波斯甲', '2019-08-29', '01:00', '萨连斯基', 0, 3, '兹维耶达', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (240, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:00', '侯姆堡', 5, 1, '乌尔姆', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (241, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:00', '巴贝斯堡', 3, 3, '比紹夫斯韋達FV', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (242, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:00', '特拉诺夫', 0, 0, '爱尔福特红白', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (243, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:00', 'BFC维多利亚', 0, 0, '科特布斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (244, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:00', '阿尔托那', 2, 1, '吕内堡', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (245, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '01:00', '德罗特尔森', 3, 3, '圣保利业余队', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (246, 'http://cdn.leisu.com/eventlogo/7b5e6c218e9ff318e2609c5d3d002798.png?imageView2/2/w/40', '阿尔巴超', '2019-08-29', '01:00', '法拿莫达利', 3, 0, '佩帕里米', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (247, 'http://cdn.leisu.com/eventlogo/b1ae4f94fcb93ddb2e901a7341094ba8.png?imageView2/2/w/40', '突尼甲', '2019-08-29', '01:00', '斯法克斯', 0, 1, '美特拉路', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (248, 'http://cdn.leisu.com/eventlogo/be0b4a1d0728b01fe157e778b764986e.png?imageView2/2/w/40', '克亚杯', '2019-08-29', '01:00', 'HNK哥里卡', 0, 10, '扎高雷茨克拉皮纳', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (249, 'http://cdn.leisu.com/eventlogo/2e35f174ea9ca3b3a230313e663ae653.png?imageView2/2/w/40', '法甲', '2019-08-29', '01:00', '里尔', 0, 3, '圣埃蒂安', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (250, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '01:00', '西班牙人女足', 0, 7, 'CE海鸥女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (251, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '01:00', '艾逊B队', 1, 4, '西尔维尼根', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (252, 'http://cdn.leisu.com/eventlogo/6fdba8e8d9fdd6cdf1243a2113bc5850.png?imageView2/2/w/40', '丹麦杯', '2019-08-29', '01:00', '布隆索伊', 1, 1, '哈维德夫', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (253, 'http://cdn.leisu.com/eventlogo/0b3d4c605b5a516dd91b09b6719e453e.png?imageView2/2/w/40', '葡U23', '2019-08-29', '00:45', '科英布拉大学U23', 0, 0, '里奥阿维U23', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (254, 'http://cdn.leisu.com/eventlogo/5165bb079af99a9e0a3eee4e4529dbdc.png?imageView2/2/w/40', '芬K联', '2019-08-29', '00:45', '古比奥君主', 2, 2, '华卡斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (255, 'http://cdn.leisu.com/eventlogo/4aca7bde8dd27315481a279888defe50.png?imageView2/2/w/40', '丹麦U17', '2019-08-29', '00:30', '瓦埃勒U17', 1, 2, '欧登塞U17', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (256, 'http://cdn.leisu.com/eventlogo/b5a40cbaefac434d780adc706326bd53.png?imageView2/2/w/40', '马尔甲', '2019-08-29', '00:30', '森格利亚竞技', 0, 1, '拜基卡拉', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (257, 'http://cdn.leisu.com/eventlogo/e0a5642b576b5963294ea572207c1b1d.png?imageView2/2/w/40', '国际友谊', '2019-08-29', '00:30', '阿联酋U18', 0, 0, '巴勒斯坦U18', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (258, 'http://cdn.leisu.com/eventlogo/e0a5642b576b5963294ea572207c1b1d.png?imageView2/2/w/40', '国际友谊', '2019-08-29', '00:30', '摩洛哥女足U20', 1, 2, '阿尔及利亚女足U20', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (259, 'http://cdn.leisu.com/eventlogo/2440249cd19586c39de8e05d55cc6b0d.png?imageView2/2/w/40', '球会友谊', '2019-08-29', '00:30', '松斯贝克', 11, 0, '乌丁根05', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (260, 'http://cdn.leisu.com/eventlogo/4b9613e7f9465ed49d2148e0c306e6bb.png?imageView2/2/w/40', '黑山甲', '2019-08-29', '00:30', '尼卡斯克', 2, 4, '达尼洛夫格勒', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (261, 'http://cdn.leisu.com/eventlogo/c9c624c99f42be9d4c4f39a4477f02f4.png?imageView2/2/w/40', '爱沙甲', '2019-08-29', '00:30', '科罗拉', 1, 1, '诺梅卡柳', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (262, 'http://cdn.leisu.com/eventlogo/fdad8f3f7a496db08b6f4a0df2017962.png?imageView2/2/w/40', '沙特甲', '2019-08-29', '00:25', '吉达里比亚', 3, 0, '苏格拜', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (263, 'http://cdn.leisu.com/eventlogo/fdad8f3f7a496db08b6f4a0df2017962.png?imageView2/2/w/40', '沙特甲', '2019-08-29', '00:25', '尤胡德', 3, 1, '安莎', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (264, 'http://cdn.leisu.com/eventlogo/92271d976f4fc3ed5fed0b5fdf9ee6c1.png?imageView2/2/w/40', '丹女甲B', '2019-08-29', '00:15', '阿晓斯1900女足', 3, 4, 'ASA阿晓斯女足', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (265, 'http://cdn.leisu.com/eventlogo/54682367263f0ab8456e5891ce3c9ee4.png?imageView2/2/w/40', '爱沙丙', '2019-08-29', '00:00', '帕尔努JK', 2, 4, '维米斯', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (266, 'http://cdn.leisu.com/eventlogo/15d5a3300dfb7dc00ca9a939d21f1244.png?imageView2/2/w/40', '西丁', '2019-08-29', '00:00', 'CD洛达', 0, 3, '罗维达', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (267, 'http://cdn.leisu.com/eventlogo/5165bb079af99a9e0a3eee4e4529dbdc.png?imageView2/2/w/40', '芬K联', '2019-08-29', '00:00', 'FC爱尔维斯', 3, 3, 'PS-44', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (268, 'http://cdn.leisu.com/eventlogo/1cf5e8ba05dee5692bc70c2e0117d926.png?imageView2/2/w/40', '德地区北', '2019-08-29', '00:00', '柏林迪纳摩', 1, 1, '利希滕贝格47', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (269, 'http://cdn.leisu.com/eventlogo/76cf7670d30a48ad1437315a8c50acdb.png?imageView2/2/w/40', '挪甲', '2019-08-29', '00:00', '奥勒松', 2, 5, '汉坎', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (270, 'http://cdn.leisu.com/eventlogo/4a0209224a7b4d963e0f39fcf73d8f7e.png?imageView2/2/w/40', '罗杯', '2019-08-29', '00:00', '克拉约瓦大学', 2, 2, '奥拉迪亚', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (271, 'http://cdn.leisu.com/eventlogo/c9c624c99f42be9d4c4f39a4477f02f4.png?imageView2/2/w/40', '爱沙甲', '2019-08-29', '00:00', '卡勒威', 2, 0, '佛洛拉', '2019-08-31 03:02:49');
INSERT INTO `end_footballscore` VALUES (272, 'http://cdn.leisu.com/eventlogo/e0a5642b576b5963294ea572207c1b1d.png?imageView2/2/w/40', '国际友谊', '2019-08-29', '00:00', '瑞典女足U18', 1, 3, '冰島女足U18', '2019-08-31 03:02:49');

SET FOREIGN_KEY_CHECKS = 1;
