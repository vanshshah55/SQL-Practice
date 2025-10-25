select * from Employees

select * into #3 from Employees

select * from #3

delete from #3
where Lastname = '' or Department = '0'

select * into #4 from Employees

select * from #4

--If you use the DELETE statement without a WHERE clause, 
--all records in the table will be deleted, but the table structure remains.
delete from #4
--When using DELETE or UPDATE, especially in a production environment, 
--always use a WHERE clause to avoid deleting or updating all records unintentionally.

select * from #3

--The TRUNCATE statement removes all records from a table, 
--but the structure and columns remain.
truncate table #3

--The DROP statement removes both the data and the table structure.
--After dropping a table, any attempt to query it will result in an error.
drop table #3


--DELETE: Used to delete specific records from a table. If used without a WHERE clause, all records are deleted, but the table structure remains.
--TRUNCATE: Deletes all records from a table, but the structure and columns remain.
--DROP: Deletes all records and removes the table structure entirely.

