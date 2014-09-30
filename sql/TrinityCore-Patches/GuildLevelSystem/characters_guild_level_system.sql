ALTER TABLE `guild` ADD `xp` INT(10) DEFAULT 0 NOT NULL AFTER `BankMoney`;
ALTER TABLE `guild` ADD `level` TINYINT(3) DEFAULT 0 NOT NULL AFTER `xp`;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `guild_bonus_config`
-- ----------------------------
DROP TABLE IF EXISTS `guild_bonus_config`;
CREATE TABLE `guild_bonus_config` (
  `BonusId` smallint(5) NOT NULL DEFAULT '0',
  `RequiredGuildLevel` tinyint(3) NOT NULL DEFAULT '0',
  `comment` longtext CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_bonus_config
-- ----------------------------
INSERT INTO `guild_bonus_config` VALUES ('1', '1', '金钱奖励 | 公会成员获取金钱提高5%，该部分金额会转移到公会银行中。');
INSERT INTO `guild_bonus_config` VALUES ('2', '1', '经验奖励 | 公会成员击杀怪物或者完成任务获取的经验提高5%。');
INSERT INTO `guild_bonus_config` VALUES ('3', '2', 'Faster Spirit | Double movement speed as spirit');
INSERT INTO `guild_bonus_config` VALUES ('4', '2', '装备维修金额降低25%');
INSERT INTO `guild_bonus_config` VALUES ('5', '3', '金钱奖励2 | 公会成员获取金钱提高10%，该部分金额会转移到公会银行中。');
INSERT INTO `guild_bonus_config` VALUES ('6', '4', '骑乘速度提高 | 提高坐骑的移动速度5% (战场货竞技场无效。)');
INSERT INTO `guild_bonus_config` VALUES ('7', '4', '声望提高 | 获取声望提高5%。');
INSERT INTO `guild_bonus_config` VALUES ('8', '5', '经验奖励2 | 公会成员击杀怪物或者完成任务获取的经验提高10%。');
INSERT INTO `guild_bonus_config` VALUES ('9', '6', '装备维修金额降低50%');
INSERT INTO `guild_bonus_config` VALUES ('10', '6', '骑乘速度提高2 | 提高坐骑的移动速度10% (战场货竞技场无效。)');
INSERT INTO `guild_bonus_config` VALUES ('11', '7', '声望提高2 | 获取声望提高10%。');
INSERT INTO `guild_bonus_config` VALUES ('12', '5', '荣誉奖励 | 获取的荣誉点数增加5%。');
INSERT INTO `guild_bonus_config` VALUES ('13', '8', '荣誉奖励2 | 获取的荣誉点数增加10%。');

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `guild_xp_for_next_level`
-- ----------------------------
DROP TABLE IF EXISTS `guild_xp_for_next_level`;
CREATE TABLE `guild_xp_for_next_level` (
  `level` tinyint(3) NOT NULL DEFAULT '0',
  `xp_for_next_level` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guild_xp_for_next_level
-- ----------------------------
INSERT INTO `guild_xp_for_next_level` VALUES ('0', '80000000');
INSERT INTO `guild_xp_for_next_level` VALUES ('1', '120000000');
INSERT INTO `guild_xp_for_next_level` VALUES ('2', '180000000');
INSERT INTO `guild_xp_for_next_level` VALUES ('3', '270000000');
INSERT INTO `guild_xp_for_next_level` VALUES ('4', '405000000');
INSERT INTO `guild_xp_for_next_level` VALUES ('5', '607500000');
INSERT INTO `guild_xp_for_next_level` VALUES ('6', '911250000');
INSERT INTO `guild_xp_for_next_level` VALUES ('7', '1366875000');