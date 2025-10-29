
--Order Of Execution

select * from EmployeeSalaries

--Correct Query
select distinct top 1 department, avg(salary) [avg salary]
from employeesalaries
where salary>50000
group by department
having avg(salary)>55000
order by department

/*
From & Joins
where
group by
having
select
distinct
order by
top
*/

--Incorrect Query

--If you execute this query, SQL Server will show an error: 'Invalid column name average salary.' 
--This is because SQL Server does not recognize the alias in the HAVING clause.
--The HAVING clause is executed before SELECT, so the alias is not yet defined. Therefore, you must use the aggregate function in the HAVING clause.
select distinct top 1 Department,AVG(Salary) [Avg Salary] 
from EmployeeSalaries
where Salary>50000
group by Department
having [Avg Salary]>55000
order by Department 



--The order in which a SQL query is written differs from the order in which it is executed by SQL Server.
--The correct order of execution is: FROM/JOIN, WHERE, GROUP BY, HAVING, SELECT, DISTINCT, ORDER BY, and then TOP.
--Using column aliases in clauses that execute before SELECT (such as HAVING) will result in errors because the alias is not yet recognized.
