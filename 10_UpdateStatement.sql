select * from dbo.Employees

select * into #1 from employees

select * from #1

update #1
set Department='HR'
where Department is null

update #1
set salary = 89000, HireDate='2023-01-01'
where employeeID = 7

select * from #1 where EmployeeID = 7

select * into #2 from employees

select * from #2

update #2
set Department = 'Finance'

--The SQL UPDATE statement is used to modify existing records in a table, and it is crucial to use a WHERE clause to avoid updating all rows unintentionally.
--Multiple columns can be updated simultaneously in a single UPDATE statement by separating assignments with commas.
--When working with UPDATE or DELETE statements, especially in a production environment, it is essential to:
--Always use a WHERE clause to target specific records.
