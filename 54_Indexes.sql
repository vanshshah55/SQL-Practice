--If a book of 500 pages does not have an index, one must manually search each page to find a particular chapter. 
--This process is time-consuming and reduces efficiency. 
--However, if an index is available, one can directly access the required page, saving time and enhancing efficiency. 
--The same principle applies to Microsoft SQL Server.

--When SQL Server is instructed to fetch or retrieve data from a table, it performs a scan. 
--Scanning the entire table reduces performance and consumes more time. To address this, indexes are defined on tables or views. 
--With indexes, SQL Server can retrieve data without scanning the entire table, resulting in faster data retrieval.

--Indexes are defined on one or more columns of a table or view. 
--When defining an index, the order in which the column data is stored in the index can be specified. 
--If the data is sorted in the index, SQL Server can efficiently identify and retrieve the required records.


use testDB

select * from employees

create index IX_1 on employees(salary desc)

create index IX_2 on dbo.employees (firstname,lastname)

drop index employees.IX_2


--Indexes in SQL Server improve data retrieval efficiency by allowing direct access to data, avoiding full table scans.
--Indexes can be created on one or multiple columns, and the order (ascending or descending) can be specified.