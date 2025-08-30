select ename from emp where sal>(select sal from emp where empno=7566);
select ename,job from emp where job=(select job from emp where empno=7369) and sal>(select sal from emp where empno=7876);
select * from emp where sal=(select min(sal) from emp);
select deptno,min(sal) from emp group by deptno having min(sal)>(select min(sal) from emp where deptno=20);
select empno,ename from emp where sal in(select min(sal) from emp group by deptno);
