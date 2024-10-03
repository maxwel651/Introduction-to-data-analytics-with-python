use companydb;

alter table employees
set sql_safe_updates=0;
update employees
set salary=round(rand()*(80000-40000)+40000,2);
select*from companydb.employees;

select departmentName,
(select count(*)
from employees
where employees.department=department.departmentID) AS EmployeeCount
from department;

SELECT*
FROM Employees
where Salary=(select max(salary)
from employees as e
where e.department=employees.department);

SELECT DEPARTMENT,AverageSalary
from (select department,avg(salary) as averageSalary
from employees
group by department) as avgSalaries
where AverageSalary>50000;