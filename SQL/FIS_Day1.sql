create database FIS
create table DEPT(deptno int, dname varchar(256), loc varchar(256),primary key(deptno));
create table EMP(empno int, ename varchar(256), job varchar(256), MgrId int, hiredate date, sal int, comm int, deptno int, primary key(empno),foreign key(deptno) references DEPT(deptno));
insert into Emp values('7369', 'SMITH', 'CLERK', '7902', '17-DEC-80', '800', NULL, '20');
insert into Emp values('7499', 'ALLEN', 'SALESMAN', '7698', '20-FEB-81', '1600', '300', '30');
insert into Emp values('7521', 'WARD', 'SALESMAN', '7698', '22-FEB-81', '1250', '500', '30');
insert into Emp values('7566', 'JONES', 'MANAGER', '7839', '02-APR-81', '2975', NULL, '20');
insert into Emp values('7654', 'MARTIN', 'SALESMAN', '7698', '28-SEP-81', '1250', '1400', '30');
insert into Emp values('7698', 'BLAKE', 'MANAGER', '7839', '01-MAY-81', '2850', NULL, '30');
insert into Emp values('7782', 'CLARK', 'MANAGER', '7839', '09-JUN-81', '2450', NULL, '10');
insert into Emp values('7788', 'SCOTT', 'ANALYST', '7566', '19-APR-87', '3000', NULL, '20');
insert into Emp values('7839', 'KING', 'PRESIDENT', NULL, '17-NOV-81', '5000', NULL, '10');
insert into Emp values('7844', 'TURNER', 'SALESMAN', '7698', '08-SEP-81', '1500', NULL, '30');
insert into Emp values('7876', 'ADAMS', 'CLERK', '7788', '23-MAY-87', '1100', NULL, '20');
insert into Emp values('7900', 'JAMES', 'CLERK', '7698', '03-DEC-81', '950', NULL, '30');
insert into Emp values('7902', 'FORD', 'ANALYST', '7566', '03-DEC-81', '3000', NULL, '20');
insert into Emp values('7934', 'MILLER', 'CLERK', '7782', '23-JAN-82', '1300', NULL, '10');
select * from EMP
insert into DEPT values('10', 'ACCOUNTING', 'NEW YORK');
insert into DEPT values('20', 'RESEARCH', 'DALLAS');
insert into DEPT values('30', 'SALES', 'CHICAGO');
insert into DEPT values('40', 'OPERATIONS', 'BOSTON');
Select * FROM DEPT

--1. ALL EMPLOYEES WHOSE NAME START WITH 'A'
select ename from EMP where ename like'A%';


--2  SELECT ALL THOSE EMPLOYEES WHO DONT HAVE A MANAGER
select ename from EMP where MgrId is null;


--3 LIST EMP NAME, NUMBER AND SALARY FOR THOSE EMPLOYEES WHO EARN IN THE RANGE 1200 TO 1400
select empno, ename, sal from emp where sal between '1200' and '1400';


--4 GIVE ALL THE EMPLOYEE IN THE RESEARCH DEPT A PAY RISE OF 10%. VERIFY THAT HAS BEEN DONE BY LISTING ALL THE DETAILS BEFORE AND AFTER THE RISE.
select * from emp where deptno= '20'; --before rise
update EMP set sal=sal+(sal*10/100) where deptno='20'; =--query for 10% hike
select * from emp where deptno= '20'; --after rise


--5 FIND THE NUMBER OF CLERKS EMPLOYED. GIVE IT A DESCRIPTIVE HEADING.
select  count (*) as No_of_clerks from emp where job='clerk';


--6 find the average salary for each job type and the number of people empyed in each job.
select job, avg(sal) as AVERAGE_SAL, count(*) as No_of_Employees from emp group by job; 


--7 LIST ALL THE EMPLOYEES WITH LOWEST AND HIGHEST SALARY
select  MAX(sal) as highest_salary, Min(sal) as Lowest_Salary from emp ;


--8 LIST FULL DETAILS OF DEPARTMENTS THAT DONT HAVE ANY EMPLOYEES
select d.deptno, d.dname, d.loc from dept d except select d.deptno, d.dname, d.loc from dept d inner join emp e on d.deptno=e.deptno;


--9 GET THE NAMES AND SALARIES OF ANALYSTS WHO EARN MORE THAN 1200 WHO ARE BASED IN DEPARTMENT 20. SORT BY THEIRS NAMES.
select empno, ename, sal from emp where sal>1200 and job='analyst' group by empno;


--10 FOR EACH DEPARTMENT, LIST ITS NAME AND NUMBER TOGETHER WITH TOTAL SALARY PAID TO EMPLOYEES IN THAT DEPARTMENT.
select e.deptno, d.dname, sum(e.sal) as total_salary from emp e inner join dept d on e.deptno=d.deptno group by e.deptno, d.dname;


--11 FIND OUT THE SALARY OF BOTH MILLER AND SMITH.
select ename, sal+ IsNull(comm,0) from emp where ename='Miller' or ename='Smith';


--12 FIND OUT NAME OF THE EMPLOYEES WHOSE NAME START WITH A OR M
select ename as Name from emp where ename like 'A%' or ename like 'M%';


--13 COMPUTE YEARLY SALARY OF SMITH.
select ename, sal*12+ isNull(comm*12, 0) as yearly_salary from emp where ename='Smith';


--14 LIST ALL NAME AND SALARY OF ALL EMPLOYEES WHORE SALARY IS NOT IN THE RANGE 1500 AND 2850.
select ename, sal from emp where sal not between '1500' and '2850';