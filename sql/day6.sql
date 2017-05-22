SHOW DATABASES;
SELECT *
FROM scott.emp
WHERE COMM IS NULL ;


SELECT *
FROM scott.emp
WHERE COMM<=>NULL ;-- 列值可能存在空值，也可能不为空

SELECT *
FROM scott.emp;-- 15条查询语句

SELECT *
FROM scott.dept;-- 4条查询语句

SELECT *
FROM scott.emp JOIN scott.dept;-- JOIN链接查询语句（15*4条查询语句）

SELECT ENAME,DNAME
FROM scott.emp INNER JOIN scott.dept
WHERE emp.DEPTNO=dept.DEPTNO;

SELECT ENAME,LOC
FROM scott.emp INNER JOIN scott.dept-- 内链接查询
ON scott.emp.DEPTNO=scott.dept.DEPTNO;-- 链接条件

SHOW FULL COLUMN FROM scott.emp;
SHOW FULL COLUMN FROM scott.dept;

--返回拥有员工的部门名，部门号
SELECT DISTINCT d.DEPTNO,d.DNAME-- 提高查询效率
FROM scott.dept  d INNER JOIN scott.emp  e-- ?
ON e.DEPTNO = d.DEPTNO;

--返回员工和所属经理的姓名
SELECT
e1.ENAME,-- 员工姓名
e2.ENAME-- 经理姓名
FROM scott.emp e1 INNER JOIN scott.emp e2-- 自链接
ON e1.MGR=e2.EMPNO;

SELECT
e.ENAME,
d.DNAME
FROM scott.emp e LEFT OUTER JOIN scott.dept d-- 左外链接
ON e.DEPTNO = d.DEPTNO;

SELECT
e.ENAME,
d.DNAME
FROM scott.emp e RIGHT OUTER JOIN scott.dept d-- 右外链接
ON e.DEPTNO = d.DEPTNO

UNION-- 并集,自动去重
SELECT
e.ENAME,
d.DNAME
FROM scott.emp e LEFT OUTER JOIN scott.dept d-- 左外链接
ON e.DEPTNO = d.DEPTNO;

-- 学生选了哪些课
-- 课有哪些学生选
-- 查所有学生获得的总学分






