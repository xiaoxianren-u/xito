-- auto Generated on 2021-07-25
-- DROP TABLE IF EXISTS user_data;
CREATE TABLE user_data(
	id VARCHAR (50) NOT NULL COMMENT 'id',
	username VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'username',
	experience VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'experience',
	sex VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'sex',
	score VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'score',
	city VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'city',
	sign VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'sign',
	classify VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'classify',
	wealth VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'wealth',
	`right` VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'right',
	PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'user_data';
