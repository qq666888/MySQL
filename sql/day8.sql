DROP TABLE IF EXISTS db_1702.csdn;
CREATE TABLE db_1702.csdn(
  id INT AUTO_INCREMENT PRIMARY KEY  COMMENT 'id PK',
  username VARCHAR(255) COMMENT '用户名',
  password VARCHAR(255) COMMENT '密码',
  email VARCHAR(255) COMMENT '邮箱'
);
  LOAD DATA LOCAL INFILE 'C:\\Users\\SONY\\Desktop\\www.csdn.net.sql'
INTO TABLE db_1702.csdn
FIELDS TERMINATED BY ' # ' (username, password, email)
SET id = NULL;




SELECT *
FROM scott.emp;

SELECT *
FROM mysql.user;



CREATE USER 'tester'@'localhost'
IDENTIFIED BY 'test123';


RENAME USER  tester@'localhost'to test_new;

SELECT max(SAL)-- SAL基本工资
FROM scott.emp;-- 求员工表里面基本工资的最大值

SELECT JOB,max(sal)-- JOB工种
FROM scott.emp-- 先按工种分组，然后求每个组里面基本工资的最大值
GROUP BY JOB;-- group 组

SELECT password
FROM db_1702.csdn
GROUP BY password-- 按密码分组
ORDER BY count(password)DESC-- 密码按照降序排序，DESC降序，ORDER BY排序
LIMIT 10 OFFSET 0;-- 限制每10个一组

SELECT *
FROM scott.emp;

SELECT substr(email,5)
FROM db_1702.csdn;

SELECT locate()
FROM db_1702.csdn;

SELECT deptno,avg(sal)
FROM scott.emp
GROUP BY DEPTNO
HAVING avg(sal)>2000;-- 组检索，where,行检索

SELECT ascii('a');


