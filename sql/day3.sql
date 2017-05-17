SHOW DATABASES;-- 显示数据库
USE db_1702;-- 使用
SHOW TABLES;

SHOW FULL COLUMNS FROM db_1702.student;-- 显示全部列数
SHOW FULL COLUMNS FROM db_1702.course;
SHOW FULL COLUMNS FROM db_1702.student_course;

SELECT *
FROM db_1702.student;-- 查询

SELECT *
FROM db_1702.course;

SELECT *
FROM db_1702.student_course;

TRUNCATE TABLE db_1702.student_course;-- 删除列表后ID从1开始（永久删除）

DELETE FROM db_1702.course
WHERE id > 2;-- 删除

INSERT INTO db_1702.student-- 插入
VALUES (NULL, '20170001', 'Tom', 'asdf', NULL, NULL, 1.7, 1234567.891, '1999-5-1', '2017-5-1 1:39:01');

-- 选课表 学生<->课程
DROP TABLE IF EXISTS db_1702.student_course;-- 如果存在数据表删除
CREATE TABLE db_1702.student_course (-- 创建
  id        INT AUTO_INCREMENT PRIMARY KEY-- 自动增量，主键约束
  COMMENT 'ID PK',
  studentId INT COMMENT '学生 ID',
  courseId  INT COMMENT '课程 ID',
  score     INT COMMENT '考试成绩'
);

-- alter 改变\ ['ɔːltə\;\ 'ɒl-]    DDL
ALTER TABLE db_1702.student_course-- 修改数据表
  ADD CONSTRAINT-- 增加约束
  fk_student_course_studentId-- fk外键缩写
FOREIGN KEY (studentId)-- 外键
REFERENCES db_1702.student (id); -- a href hyper reference-- 引用

ALTER TABLE db_1702.student_course
  ADD CONSTRAINT
  fk_student_course_courseId
FOREIGN KEY (courseId)
REFERENCES db_1702.course (id);

SHOW FULL COLUMNS FROM db_1702.student_course;

INSERT INTO db_1702.student_course
VALUES (NULL, 1, 1, NULL);

INSERT INTO db_1702.student_course
VALUES (NULL, 1, 2, NULL);

INSERT INTO db_1702.student_course
VALUES (NULL, 1, 3, NULL);

INSERT INTO db_1702.student_course
VALUES (NULL, 3, 2, NULL);

SELECT *
FROM student_course;