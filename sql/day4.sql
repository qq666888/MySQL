show full columns from db_1702.student;-- 显示全部列数

SELECT *FROM db_1702.student;
INSERT INTO db_1702.student VALUES (NULL ,'002','tester','I\'m...','F',19,1.7,12.34,'1993-2-3','1934-5-4 10:35:20');

INSERT INTO db_1702.student (name) VALUES ('Tom');

INSERT  INTO db_1702.student(name) VALUES ('Tom1'),('Tom2'),('Tom3');

SHOW CREATE TABLE db_1702.student;-- 显示建表语句

SELECT *FROM db_1702.student;

UPDATE db_1702.student SET gender='女';-- 更改gendre列所有值为女

UPDATE db_1702.student SET height=1.6 WHERE id=2;-- 更改某列某个值

UPDATE db_1702.student SET height=1.8,name='Marry' WHERE id=3;