-- A View is a virtual table, it is a stored sql Query
-- It helps in reducing the complexity of the code
-- It helps in implementing security

use testDB

select * from employees

select * into emp_bkp from employees

select * from emp_bkp

create view View_1 as (
select * from emp_bkp
)
select * from view_1
--**
update view_1
set EmployeeID = 100

select * from view_1

select * from emp_bkp

--Running a select statement on the employee backup table shows that the employee IDs are updated in the base table as well. 
--Thus, updating a view can impact the underlying table, as a view is a virtual table built on top of a base table.

--**

create view View_2 as(
select employeeid,firstname,lastname,email,departmentid, hiredate from emp_bkp
)

select * from view_2

drop view View_2




--A view is a virtual table. It does not occupy any physical space and is created based on a table. A view is essentially a stored SQL query.

--There are certain advantages of using views:

--Views help in reducing the complexity of the code.
--Views help in implementing security.


--Views in MS SQL Server are virtual tables created from SQL queries and do not occupy physical space.
--Views help reduce code complexity and implement security by restricting access to specific columns or rows.
--Updating data through a view can impact the underlying base table, so caution is required.
--Views can be created, updated, and dropped using standard SQL statements similar to those used for tables.