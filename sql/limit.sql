Select*
FROM scott.emp
LIMIT 3;-- 限制

SELECT *
FROM scott.emp
LIMIT 3,4;

SELECT *
FROM scott.emp
LIMIT 4 OFFSET 3;-- 偏移（每页限制显示4条记录，前3条不显示，从第四条显示）

SELECT *
FROM scott.emp
LIMIT 5 OFFSET 0; -- offset 偏移,\ 抵消,\ 位移

SELECT *
FROM scott.emp
ORDER BY ENAME-- 按照名字进行排序
LIMIT 3 OFFSET 0;

SELECT *
FROM scott.emp
WHERE ENAME LiKE 'a%';--like像，模糊匹配，%任意长度，任意字符

SELECT *
FROM scott.emp

WHERE ENAME LIKE '_DAMS';-- _1个任意字符，

INSERT INTO scott.emp(EMPNO,ENAME) VALUES (1234,'A_ADAMS');

SELECT *
FROM scott.emp
WHERE ENAME LIKE '%\_%'ESCAPE '\\';

SELECT *
FROM scott.emp
WHERE ENAME REGEXP '[^a-f]+';-- 包含a-f之外至少一个字符

SELECT *
FROM scott.emp
WHERE HIREDATE REGEXP '-02$';-- 某年某月2号入职员工

SELECT *
FROM scott.emp
WHERE DEPTNO=10 OR DEPTNO=20;-- 查10部门和20部门

SELECT *
FROM scott.emp
WHERE DEPTNO  In (10,20);-- 查10部门和20部门简写

SELECT *
FROM scott.emp
WHERE sal BETWEEN 2000 AND 3000;-- [min mix]

SELECT ENAME '员工姓名',SAL '基本工资'-- alias别名
FROM scott.emp;

SELECT *
FROM scott.emp AS e;

SELECT *
FROM scott.emp
WHERE DEPTNO IS NOT NULL ;-- 空值的判断加IS

SELECT *
FROM scott.emp
WHERE COMM is NULL ;

UPDATE scott.emp
SET JOB=NULL -- -- 空值的赋值不用加IS，直接用=
WHERE ENAME='jones'

/*
SELECT ENAME,
sal+ifnull(COMM,0)
FROM scott.emp;
*/
