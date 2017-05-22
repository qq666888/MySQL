DROP DATABASE IF EXISTS db_exam;
CREATE DATABASE db_exam;
-- SHOW DATABASES;

DROP TABLE IF EXISTS db_exam.student;
CREATE TABLE db_exam.student(
  id        INT AUTO_INCREMENT PRIMARY KEY
  COMMENT 'id',
  name VARCHAR(10)   COMMENT '姓名',
  age INT COMMENT '年龄',
  gender CHAR(2) COMMENT '性别',
  dob DATE COMMENT '日期',
  departmentId INT COMMENT '部门 ID'

);
/*insert into db_exam.student
values (null, 'Tom', 18, 'F',  '1999-5-1', '00001');
select *
from db_exam.student;*/
insert into db_exam.student
values (null, 'Tom', 18, 'F',  '1999-5-1', '00001'),
(null, 'Tom1', 19, 'M',  '2013-6-1', '00002'),
(null, 'Tom2', 17, 'F',  '2012-7-1', '00003'),
(null, 'Tom3', 16, 'M',  '2005-8-1', '00004'),
(null, 'Tom4', 15, 'F',  '2003-3-1', '00005');
select *
from db_exam.student;


DROP TABLE IF EXISTS db_exam.department;
CREATE TABLE db_exam.department(
id INT AUTO_INCREMENT PRIMARY KEY
COMMENT 'id',
title VARCHAR (10) COMMENT'系名称',
tel VARCHAR(10) COMMENT '某个系'
);
/*insert into db_exam.department
values (null, '软件系',  '编程系');
select *
from db_exam.department;*/
insert into db_exam.department
values (null, '软件系',  '编程系'),
(null, '软件系1',  '编程系1'),
(null, '软件系2',  '编程系2'),
(null, '软件系3',  '编程系3'),
(null, '软件系4',  '编程系4');
select *
from db_exam.department;

DROP TABLE IF EXISTS db_exam.course;
CREATE TABLE db_exam.course(
id INT AUTO_INCREMENT PRIMARY KEY
COMMENT 'id',
title VARCHAR (10) COMMENT'课程名称',
credit VARCHAR(10) COMMENT '学分'
);
/*insert into db_exam.course
values (null, 'java',  '10');
select *
from db_exam.course;*/
insert into db_exam.course
values (null, 'java',  '10'),
(null, 'html',  '5'),
(null, 'css',  '15'),
(null, 'UI',  '12'),
(null, 'php',  '20');
select *
from db_exam.course;

DROP TABLE IF EXISTS db_exam.student_course;
CREATE TABLE db_exam.student_course(
id INT AUTO_INCREMENT PRIMARY KEY
COMMENT 'id',
studentId INT  COMMENT'学生Id',
departmentId INT COMMENT '系别表Id',
courseId INT COMMENT '课程表Id',
grade INT COMMENT '考试成绩'
);
/*insert into db_exam.student_course
values (null, 1,  1,1,100);
select *
from db_exam.student_course;*/

ALTER TABLE db_exam.student_course
  ADD CONSTRAINT
  fk_student_course_courseId
FOREIGN KEY (courseId)
REFERENCES db_exam.course (id);

ALTER TABLE db_exam.student_course
  ADD CONSTRAINT
  fk_student_course_studentId
FOREIGN KEY (studentId)
REFERENCES db_exam.student (id);

ALTER TABLE db_exam.student_course
  ADD CONSTRAINT
  fk_student_course_departmentId
FOREIGN KEY (departmentId)
REFERENCES db_exam.student (id);

-- 修改选课表 grade 字段，改名为 score
ALTER TABLE db_exam.student_course
CHANGE grade score VARCHAR;

-- 查询所有姓王的学生
SELECT *
FROM db_exam.student
WHERE name LiKE '王%';

-- 删除各表，删除数据库
DROP TABLE db_exam.course;
DROP TABLE db_exam.department;
DROP TABLE db_exam.student;
DROP TABLE db_exam.student_course;

DROP DATABASE db_exam;



