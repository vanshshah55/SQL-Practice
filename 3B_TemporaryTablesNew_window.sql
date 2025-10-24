
--A temporary table with a single pound sign (#) 
--is only recognized in the query window where it was created. 
--If you try to access it from another query window 
--or another SQL Server instance, 
--it will not be recognized and will result in an error.

select * from #temp1

select * from ##temp2

--A temporary table with a double pound sign (##) 
--is recognized in other query windows and even in other SQL Server instances,
--as long as the original session where it was created is still active. 
--If the original session is closed, the global temporary table (##temp2) will no longer be accessible.