CREATE TABLE `user`(
                       username VARCHAR (30) NOT NULL COMMENT 'username',
                       `password` VARCHAR (33) NOT NULL DEFAULT '' COMMENT 'password',
                       stati VARCHAR (2) NOT NULL DEFAULT '' COMMENT 'stati',
                       email VARCHAR (50) NOT NULL DEFAULT '' COMMENT 'email',
                       PRIMARY KEY (username)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT 'user';
