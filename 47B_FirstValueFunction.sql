select * from employeesalaries

select *,
FIRST_VALUE(Salary) over (order by salary asc) [minimum salary]
from EmployeeSalaries

select *,
FIRST_VALUE(Employeename) over (order by salary asc) [emp with min salary],
FIRST_VALUE(Salary) over (order by salary asc) [minimum salary]
from EmployeeSalaries

select *,
FIRST_VALUE(EmployeeID) over (partition by department order by salary) [first value]
from EmployeeSalaries

select *,
FIRST_VALUE(Employeeid) over (partition by department order by salary desc) [first value EID],
FIRST_VALUE(Employeename) over (partition by department order by salary desc) [first value ename]
from EmployeeSalaries


--The FIRST_VALUE() window function returns the first value in an ordered partition of a result set.
--The OVER clause with ORDER BY is mandatory to specify the order for the window function.
--The PARTITION BY clause can be used to apply the window function separately within each partition, such as departments.
--Multiple columns can be added using FIRST_VALUE() to display related information like employee ID and name based on salary ordering.