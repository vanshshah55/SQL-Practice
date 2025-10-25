-- To write a single-line comment, use two hyphens (--) followed by your comment text.

select * FROM dbo.Employees

/*
this
is a multi line
comment
Multi-line comments are enclosed between /* and */. 
*/

select * from dbo.Employees

select top 2 * from Employees

select top 5 employeeid, salary from employees

select top 5 firstname, lastname from employees

--The TOP N clause in SQL fetches the top N records from a table.
--You can select specific columns along with TOP N to retrieve targeted data.