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

SELECT substr(email, locate('@', email) + 1) -- subString() indexOf()
FROM db_1702.csdn
GROUP BY substr(email, locate('@', email) + 1)
ORDER BY count(substr(email, locate('@', email) + 1)) DESC
LIMIT 10;


SELECT
  job,
  deptno,
  max(sal)
FROM scott.emp
GROUP BY JOB, DEPTNO;

SELECT
  deptno,
  count(*)
FROM scott.emp
GROUP BY DEPTNO
HAVING avg(sal) > 2000; -- 组检索 where 行检索

SELECT abs(-100);
SELECT hex(15);
SELECT ceiling(1.00000001);
SELECT floor(1.999999999999);
SELECT round(1.4999);
SELECT MOD(10, 1);
SELECT pi();
SELECT rand();
SELECT truncate(1234.567, -4);

SELECT ascii('a');
SELECT bit_length('asdf'); -- 1 byte = 8 bit
SELECT concat('hello', ', ', 'world', '!');
SELECT length('中文');
SELECT locate('e', 'hello');
SELECT lcase('H'), upper('h'), ucase('h');

SELECT *
FROM db_1702.csdn
WHERE username=substr(email,1,locate('@',email)-1);-- ？？？

SELECT *
FROM db_1702.csdn
WHERE email REGEXP '@qq.com' AND trim(password) = replace(email, '@qq.com', '');


INSERT INTO db_1702.csdn VALUE (NULL, 'tester', '123', '123@qq.com');

SELECT *
FROM db_1702.csdn
WHERE id = 31521;

SELECT
  curdate(),
  current_date;
SELECT
  current_time,
  curtime();
SELECT now();

SELECT date_add(now(), INTERVAL 31 DAY); -- interval 间隔
SELECT date_sub(now(), INTERVAL 30 DAY); -- interval 间隔
SELECT dayofweek(now());
SELECT dayofyear(now());
SELECT dayname(now());
SELECT monthname(now());
SELECT quarter(NOW()); -- quarter 四 1 quarters to 12
SELECT week(now());

SELECT *
FROM db_1702.csdn
WHERE email = '123@qq.com';

CREATE INDEX idx_email
  ON db_1702.csdn (email);


ALTER TABLE db_1702.csdn
  MODIFY COLUMN email VARCHAR(191);

DESC db_1702.csdn;

-- 25马赫






