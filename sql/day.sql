SHOW DATABASES;
CREATE DATABASE db_1702;

DROP DATABASE db_1702;

USE db_1702;

SHOW TABLES; #表

CREATE TABLE db_1702.t_student (
  son    VARCHAR(10), -- 可变长字符类型

  sname  VARCHAR(10), -- 属性 列 字段

  gender CHAR(1),
  age    INT(2)
);
SELECT *
FROM db_1702.t_student;
INSERT INTO db_1702.t_student
VALUES ('2017001', '张三', '男', '18')

