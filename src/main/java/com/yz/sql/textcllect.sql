CREATE TABLE cllect(
                       cll_id INT (11) NOT NULL AUTO_INCREMENT COMMENT '收藏id',
                       text_id INT (11) NOT NULL DEFAULT -1 COMMENT '内容id',
                       username VARCHAR (50) NOT NULL DEFAULT '' COMMENT '用户名',
                       cll_data VARCHAR (50) NOT NULL DEFAULT '' COMMENT '收藏时间',
                       cll_status VARCHAR (2) NOT NULL DEFAULT '1' COMMENT '收藏状态',
                       PRIMARY KEY (cll_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'cllect';
