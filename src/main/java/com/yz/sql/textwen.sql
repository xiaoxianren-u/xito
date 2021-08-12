-- auto Generated on 2021-08-12
-- DROP TABLE IF EXISTS text_wen;
CREATE TABLE text_wen(
                         text_id INT (11) NOT NULL AUTO_INCREMENT COMMENT '内容id',
                         text_status INT (2) NOT NULL DEFAULT 0 COMMENT '内容状态, 默认 审核中 "0"，拒绝 "1"，通过并显示 "2"',
                         text_name VARCHAR (80) NOT NULL DEFAULT '' COMMENT '内容名称',
                         text_describe VARCHAR (200) NOT NULL DEFAULT '' COMMENT '内容描述',
                         text_link VARCHAR (100) NOT NULL DEFAULT '' COMMENT '内容链接',
                         text_label VARCHAR (50) NOT NULL DEFAULT '' COMMENT '内容标签',
                         text_image VARCHAR (100) NOT NULL DEFAULT '' COMMENT '内容图标',
                         text_detailed VARCHAR (400) NOT NULL DEFAULT '' COMMENT '内容详细',
                         text_date VARCHAR (50) NOT NULL DEFAULT '' COMMENT '内容上传时间',
                         text_rec_id INT (11) NOT NULL DEFAULT -1 COMMENT '内容推荐者id',
                         text_collect INT (11) NOT NULL DEFAULT 0 COMMENT '内容收藏量',
                         text_share INT (11) NOT NULL DEFAULT 0 COMMENT '内容分享量',
                         text_read INT (11) NOT NULL DEFAULT 0 COMMENT '内容访问量',
                         text_score INT (11) NOT NULL DEFAULT 0 COMMENT '内容评分总分数',
                         text_total INT (11) NOT NULL DEFAULT -1 COMMENT '内容评分人数',
                         PRIMARY KEY (text_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'text_wen';
