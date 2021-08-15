
-- auto Generated on 2021-07-27
-- DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
                       id INT (11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
                       username VARCHAR (32) UNIQUE NOT NULL DEFAULT '' COMMENT '用户账号',
                       `password` VARCHAR (33) NOT NULL DEFAULT '' COMMENT '用户密码',
                       stati VARCHAR (2) NOT NULL DEFAULT '1' COMMENT '用户角色类别 1，如果用户选择普通用户 0 ，就用 stati 判断 如果等于 1；表示可以登录用户页面，反之',
                       stats VARCHAR (2) NOT NULL DEFAULT '0' COMMENT '用户角色类别 2，如果用户选择管理员 1 ，就用 stats 判断 如果等于 1；表示可以登录后台管理，反之',
                       email VARCHAR (50) NOT NULL DEFAULT 'null' COMMENT '用户邮箱 默认null',
                       integral INT (11) NOT NULL DEFAULT -1 COMMENT '用户积分',
                       codecurrency INT (11) NOT NULL DEFAULT -1 COMMENT '用户码币',
                       phone VARCHAR (12) NOT NULL DEFAULT 'null' COMMENT '用户电话',
                       sex VARCHAR (4) NOT NULL DEFAULT 'null' COMMENT '用户性别',
                       interest VARCHAR (300) NOT NULL DEFAULT 'null' COMMENT '用户兴趣',
                       summary VARCHAR (300) NOT NULL DEFAULT 'null' COMMENT '用户简介',
                       area VARCHAR (200) NOT NULL DEFAULT 'null' COMMENT '用户所在地区',
                       school VARCHAR (150) NOT NULL DEFAULT 'null' COMMENT '用户学校',
                       `time` VARCHAR (50) NOT NULL DEFAULT '' COMMENT '用户注册的时间',
                       image varchar(200) null comment '用户头像地址',
                       name varchar(100) null comment '名称',
                       PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'user';

UPDATE xiton.user t SET t.stats = '1' WHERE t.username = 'admin123'-- auto Generated on 2021-07-27

