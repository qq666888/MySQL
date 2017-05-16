DROP DATABASE IF EXISTS db_1702; -- 如果存在删除数据库
CREATE DATABASE db_1702; -- 创建数据库

DROP TABLE IF EXISTS db_1702.student; -- 如果存在删除数据表
CREATE TABLE db_1702.student (-- 创建数据表
  id     INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id', -- auto_increment自动增量，primary key主键约束

  -- 注释
  sno    VARCHAR(10) COMMENT '学号',
  name   VARCHAR(10) COMMENT '姓名', -- 年龄，可变长字符串，最大值255
  intro  TEXT COMMENT '介绍', -- 介绍，文本类型
  gender CHAR(2) COMMENT '性别', -- 性别，字符类型
  age    INT COMMENT '年龄',
  height DOUBLE(3, 2) COMMENT '身高',
  price  DECIMAL(6, 2) COMMENT '体重', -- 体重，小数类型,和钱有关的
  dob    DATE COMMENT '日期',
  time   DATETIME COMMENT '时间'
);
INSERT INTO db_1702.student
VALUES (NULL, '1702001', 'tom', 'abf', 'm', 18, 1.7, 123.456, '1999-5-1', '2001-4-5 10:59:32'); -- 插入数据库，值（）
SELECT *
FROM db_1702.student; -- 查询
/*delete from db_1702.student;-- 删除列表所有数据
delete from db_1702.student where id=2;删除id列表2的数据
truncate  table db_1702.student;-- 永久删除
select name from db_1702.student;*/
-- 课程表 ：课程名，学分。。。。
-- 选课表  学生 课程
DROP TABLE IF EXISTS db_1702.course;
CREATE TABLE db_1702.course(
  id     INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID PK',-- 主键
  intro  TEXT COMMENT '课程名',
score DOUBLE(5,2) COMMENT '学分',
time INT COMMENT '学时');
INSERT INTO db_1702.couose VALUES (NULL,'语文',100,2),
(NULL,'数学',100,2),(NULL,'英语',100,2),(NULL,'音乐',100,2);
SELECT *FROM db_1702.course;


DROP TABLE IF EXISTS db_1702.choose_course;
CREATE TABLE db_1702.choose_course(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'ID PK',-- 主键
  studentId  TEXT COMMENT '学生ID',
  courseId TEXT COMMENT '课程ID',
  scoree TEXT COMMENT '考试成绩')
-- PRIMARY KEY (studentId ,courseId))联合主键
;
INSERT INTO db_1702.choose_course VALUES (NULL,1,2,NULL ),
  (NULL,1,2,NULL ),(NULL,1,2,NULL );
  SELECT *FROM db_1702.choose_course;
