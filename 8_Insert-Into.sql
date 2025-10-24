select * from employees

insert into employees(EmployeeID,Firstname,Lastname,Department,Salary,Hiredate)
values(6,'Raj','Ambani','IT',67000,'2023-04-20')

insert into employees(EmployeeID,FirstName,LastName)
VALUES (7,'Vansh','Shah')

insert into dbo.Employees
values (8,'Mahesh','Narang','HR',73000,'2024-01-21')

SELECT * FROM DBO.Employees

--If you do not specify column names, the order of values must match the order of columns in the table. 
--To check the order, you can query the INFORMATION_SCHEMA.COLUMNS table

select * from INFORMATION_SCHEMA.COLUMNS
where table_name = 'Employees'

--The ORDINAL_POSITION field in the result indicates the order of columns. 
--For example, if employeeID has ordinal position 1, 
--the first value you provide will be inserted into the employeeID column, and so on.