DROP DATABASE IF EXISTS db_user;
CREATE DATABASE db_user;

DROP  TABLE IF EXISTS db_user.register;-- 注册
CREATE  TABLE db_user.register(
  id INT AUTO_INCREMENT PRIMARY KEY  COMMENT 'id PK',
  email VARCHAR(255) COMMENT '邮箱',
  username VARCHAR(255) COMMENT '用户名',
  password VARCHAR(255) COMMENT '密码'
)COMMENT   '注册表';
SELECT *
FROM db_user.register;
INSERT INTO db_user.register
    VALUES ('1096271863@qq.com','TOM1',123);

DROP  TABLE  IF EXISTS db_user.log;-- 登陆
CREATE  TABLE  db_user.log(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'id pk',
  email VARCHAR(255) COMMENT '邮箱',
  password VARCHAR(255) COMMENT '密码'

);


SELECT register
FROM db_user.register WHERE email='' AND password='';

ALTER TABLE db_user.leave
  DROP COLUMN leave,
  DROP COLUMN time;


