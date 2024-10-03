use companydb;

select sum(salary) as TotalSalary
from employee2;
select avg(salary) as avgSalary
select department,max(hiredate) as LatestHireDate
from employees
group by department;
SELECT * FROM EMPLOYEE2
WHERE SALARY > 50000;
SELECT DEPARTMENT, COUNT(*) AS EMPLOYEECount
from employees
group by department
having count(*) >=2;
select * from employees
where firstName like "%c%";