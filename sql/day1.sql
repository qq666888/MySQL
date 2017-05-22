drop database if exists db_1702; -- 如果存在删除数据库
create database db_1702; -- 创建数据库

drop table if exists db_1702.student; -- 如果存在删除数据表
create table db_1702.student (-- 创建数据表
  id     int auto_increment primary key
  comment 'id', -- auto_increment自动增量，primary key主键约束

  -- 注释
  sno    varchar(10) comment '学号',
  name   varchar(10)  not null comment '姓名', -- 姓名，可变长字符串，最大值255
  intro  text comment '介绍', -- 介绍，文本类型
  gender char(2) comment '性别', -- 性别，字符类型
  age    int comment '年龄',
  height double(3, 2) comment '身高',
  price  decimal(6, 2) comment '体重', -- 体重，小数类型,和钱有关的
  dob    date comment '日期',
  time   datetime comment '时间'
);
insert into db_1702.student-- 插入数据库
values (null, '1702001', 'tom', 'abf', 'm', 18, 1.7, 123.456, '1999-5-1', '2001-4-5 10:59:32'); -- 插入数据库，值（）
select *
from db_1702.student; -- 查询
/*delete from db_1702.student;-- 删除列表所有数据
delete from db_1702.student where id=2;删除id列表2的数据
truncate  table db_1702.student;-- 永久删除
select name from db_1702.student;*/
-- 课程表 ：课程名，学分。。。。
-- 选课表  学生 课程
drop table if exists db_1702.course;
create table db_1702.course(
  id     int auto_increment primary key comment 'id pk',-- 主键
  intro  text comment '课程名',
score double(5,2) comment '学分',
time int comment '学时');
insert into db_1702.course values (null,'语文',100,2),
(null,'数学',100,2),(null,'英语',100,2),(null,'音乐',100,2);
select *from db_1702.course;


drop table if exists db_1702.choose_course;
create table db_1702.choose_course(
  id int auto_increment primary key comment 'id pk',-- 主键
  studentid  text comment '学生id',
  courseid text comment '课程id',
  scoree text comment '考试成绩')
-- primary key (studentid ,courseid))联合主键
;
insert into db_1702.choose_course values (null,1,2,null ),
  (null,1,2,null ),(null,1,2,null );
  select *from db_1702.choose_course;
