CREATE TABLE `t_qa` (
`id`  bigint(22) NOT NULL AUTO_INCREMENT ,
`title`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
UNIQUE INDEX `id_index` (`id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=14
ROW_FORMAT=COMPACT
;

INSERT INTO `t_qa` VALUES (1, '你好', '你好！');
INSERT INTO `t_qa` VALUES (2, 'Hello', 'Hello！');
INSERT INTO `t_qa` VALUES (3, 'Hi', 'Hi！');
INSERT INTO `t_qa` VALUES (4, '您好', '您好！');
INSERT INTO `t_qa` VALUES (5, '你是谁', '我是智能机器人，你是谁？');
INSERT INTO `t_qa` VALUES (6, '我是', '很高兴认识您，您有什么问题需要咨询吗？');
INSERT INTO `t_qa` VALUES (8, '我爱你', '我也爱你！');
INSERT INTO `t_qa` VALUES (9, '打你', '打人是不对的！');
INSERT INTO `t_qa` VALUES (10, '傻逼', '你才是傻逼！');
INSERT INTO `t_qa` VALUES (11, '测试什么', '测试什么');
INSERT INTO `t_qa` VALUES (12, '测试什么呀', '测试什么呀');
INSERT INTO `t_qa` VALUES (13, '测试要测试什么', '测试要测试什么');
