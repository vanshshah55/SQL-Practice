select * from [dbo].[EmployeeRecords]
where EmployeeID = 2

select EmployeeID, Firstname from employeerecords
where employeeid = 2

select * from employeerecords where salary>=75000.00

select firstname, lastname, department, salary from employeerecords
where salary<75000

select distinct firstname, lastname, department, salary from employeerecords
where salary<75000