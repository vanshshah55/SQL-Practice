
--A stored procedure is a group of Transact-SQL statements that can be reused. 
--If there is a piece of code that needs to be used repeatedly, stored procedures enhance reusability.

select * from employees

create procedure sp_test
as
begin
	select * from employees
end

sp_test
-- or
exec sp_test
-- or
execute sp_test

--Example 2
create proc sp_test_1
as
begin
	select firstname,lastname from employees
end

sp_test_1

Alter proc sp_test_1
as
begin
	select employeeid,firstname,lastname from employees
end

sp_test_1


--Stored procedures are reusable groups of Transact-SQL statements in MS SQL Server.
--You can create a stored procedure using either CREATE PROCEDURE or CREATE PROC.
--Stored procedures can be called by their name or with the EXECUTE command.
--Existing stored procedures can be modified using the ALTER PROCEDURE statement.