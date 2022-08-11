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


--15 list the employees name and salary along with their manager
select e1.empno as EmployeeID, e1.ename as Emp_Name, e1.sal as Salary, e1.mgrid as ManagerID, e2.ename as MANAGERNAME from emp e1 join emp e2 On e1.MgrId=e2.empno;


--16 COUNT NUMBER OF EMPLOYEES UNDER EACH MANAGER
select e1.mgrId as ManagerID, e1.ename as ManagerName, count(e2.empno) as No_of_employees from emp e2 join emp e1 on e2.MgrId=e1.empno group by e1.MgrID, e1.ename order by count(e1.empno);


--Assignment 2 
--1. RETRIEVE THE LIST OF ALL THE MANAGERS
select ename from emp where(empno in (select MgrId from emp));

--2 FIND OUT THE NAME AND SALARIES OF AL EARNING MORE THAT 1000 PER MONTH
select ename, sal from emp where sal+isnull(comm,0)>1000;

--3 DISPLAY THE NAMES AND SALARIES OF ALL EMPLOYEES EXCEPT JAMES
select ename, sal from emp where ename!='James';


--4 FIND OUT THE DETAILS OF THE EMPLOYEES WHOSE NAME START WITH S
select * from emp where ename like 's%';

--5 FIND OUT THE NAMES OF ALL THE EMPLOYEES THAT HAVE 'A' ANYWHERE IN THERE NAME.
select ename from emp where ename like '%a%';

--6 FIND OUT NAMES OF ALL EMPLOYESS THAT HAVE 'L' AS THEIR THIRD CHARACTER IN NAME
select ename from emp where ename like '__l%';

--7 COMPUTE DAILY SALARY OF JONES
select sal/30 as Daily_Salary from emp where ename='Jones';

--8 CALCULATE THE TOTAL MONTHLY SALARY OF ALL EMPLOYEES.
select ename, sal+ isnull(comm,0) as Total_monthly_salary from emp

--9 PRINT THE AVERAGE ANNUAL SALARY.
select avg(sal)as Average_annual_salary from emp

--10 SELECT NAME,JOB, SALARY, DEPARTMENT OF ALL EMPLOYEES EXCEPT 'SALESMAN' FROM DEPARTMENT NUMBER '30'
select ename, job, sal, deptno from emp where job <>'salesman' and  deptno<> '30' 

--11 LIST THE UNIQUE DEPARTMENT FROM EMP TABLE
select distinct(deptno) from emp

--12 LIST THE NAME AND SALARY OF ALL THE EMPLOYEE WHO EARN MORE THAN 1500 AND ARE FROM DEPARTMENT 10 AND 20. NAME THE COLUMNS NAME AND MONTHLY SALARY
select ename as Name, sal+ isnull(comm,0) as Monthly_Salary from emp where sal>'1500' and deptno='10'or deptno='20' 

--13 DISPLAY THE NAME, JOB, SALARY OF ALL THE EMPLOYEES WHERE JOB IS ANALYST OR MANAGER AND THEIR SALARY IS NOT EQUAL TO 1000, 3000, OR 5000.
select ename, job, sal from emp where job='Analyst' or job='Manager' and sal<>'1000' and sal<>'3000' and sal<>'5000'

--14 DISPLAY THE NAME, SALARY, COMMISSION FOR ALL THOSE EMPLOYEES WHOSE COMMISSION AMOUNT IS GREATER THAN THEIR SALARY INCREASED BY 10%
select ename, sal, comm from emp where comm>(sal + sal*10/100)

--15 DISPLAY NAME OF ALL EMPLOYEE WHOSE HAS TWO Ls IN THEIR NAME AND THEIR DEPARTMENT IS 30 OR THEIR MANAGER IS 7782
select ename,mgrid,deptno from emp where ename like '%ll%' and deptno='30' or mgrid='7782'

--16 DISPLAY THE NAMES OF THE EMPLOYEES WITH EXPERIENCE OF OVER 10 YEARS AND UNDER 20 YEARS AND COUNT THE TOTAL OF SUCH EMPLOYEES
?select count(*) as Total , (select ename as No_of_employees from emp where datediff(year,hiredate, getdate())>10 and datediff(year,hiredate, getdate())<40) from emp

--17 RETRIEVE DEPARTMENT NAME IN ASCENDING ORDER AND THEIR EMPLOYEES NAME IN DESCENDING ORDER
select d.dname, e.ename from dept d inner join emp e on e.deptno = d.deptno order by dname asc, e.ename desc

--18 FIND OUT THE EXPERIENCE OF MILLER
select	datediff(year, hiredate, getdate()) from emp where ename='Miller'
