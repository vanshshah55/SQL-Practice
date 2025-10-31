select * from EmployeeSalaries

-- Incorrect Query
select *,
LAST_VALUE(Employeename) over (order by salary desc) [emp with lowest salary]
from employeesalaries
--this query does not produce the expected result. The employee_with_lowest_salary column shows the same employee name as the current row for each record, rather than the employee with the lowest salary overall.
--This happens because the default frame for window functions is RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW. 
--Therefore, the LAST_VALUE() function only considers rows up to the current row in the ordering, not the entire dataset.


-- Correct query
select *,
LAST_VALUE(Employeename) over (order by salary desc rows between
unbounded preceding and unbounded following) [Emp with lowest salary]
from EmployeeSalaries

--correct query
select *,
LAST_VALUE(Employeename) over (order by salary desc rows between
unbounded preceding and unbounded following) [emp with lowest salary],
LAST_VALUE(salary) over (order by salary desc rows between
unbounded preceding and unbounded following) [lowest salary]
from EmployeeSalaries

-- correct query
select *,
LAST_VALUE(employeename) over (partition by department order by salary desc
rows between unbounded preceding and unbounded following) [emp with lowest salary],
LAST_VALUE(salary) over (partition by department order by salary desc
rows between unbounded preceding and unbounded following) [lowest salary]
from EmployeeSalaries


-- Correct Query [Last Value Window Function]
select *,
LAST_VALUE(employeename) over (partition by department order by salary 
rows between unbounded preceding and unbounded following) [emp with highest salary],
LAST_VALUE(salary) over (partition by department order by salary 
rows between unbounded preceding and unbounded following) [highest salary]
from EmployeeSalaries


--To fix this, we specify the frame explicitly to include all rows in the partition by adding ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING in the OVER clause
-- Correct Query [First Value Window Function]
select *,
FIRST_VALUE(employeename) over (partition by department order by salary desc)
[emp with highest salary],
FIRST_VALUE(salary) over (partition by department order by salary desc)
[highest salary]
from EmployeeSalaries


--The LAST_VALUE() window function returns the last value in an ordered partition, useful for retrieving values like the lowest or highest salary within a dataset.
--To correctly use LAST_VALUE() over an entire partition, specify the frame clause ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING to consider all rows.
--Partitioning by a column such as department allows window functions to operate within groups, enabling department-wise calculations.
--The FIRST_VALUE() function can produce the same results as LAST_VALUE() by reversing the order of sorting, offering an alternative approach.