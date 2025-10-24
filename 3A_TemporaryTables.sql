select * into #temp1
from employees

select * from #temp1
select * from dbo.Employees

select * into ##temp2
from employeerecords

select * from ##temp2
select * from dbo.employeerecords

--Temporary tables in SQL Server can be created using the SELECT INTO statement with a single or double pound sign.
--Temporary tables with a single pound sign (#) are session-specific and only accessible within the query window where they were created.
--Temporary tables with a double pound sign (##) are global and accessible across different query windows and even different instances, as long as the original session is active.
--Once the session or instance where a global temporary table was created is closed, the table is no longer accessible.