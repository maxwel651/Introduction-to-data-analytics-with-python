USE COMPANYdB;
SELECT employees.FirstName,Employees.LastName,DEPARTMENT.DEPARTMENTNAME
FROM EMPLOYEES
INNER JOIN DEPARTMENT ON EMPLOYEES.DEPARTMENT = DEPARTMENT.DEPARTMENTID;

select * from employees;
select employees.employeeid,employees.firstname,employees.lastname,
Projects.projectID,projects.projectName
from employees
cross join projects;