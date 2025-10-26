--Inner Join combines rows from two tables based on a common column, returning only matching rows.
--Null values in the join column are ignored during the join operation.
--The SELECT statement can be customized to display only specific columns from the joined tables.
--Table aliases simplify query writing and referencing columns from different tables.

select * from table1

select * from table2

select * from table1 inner join table2
on table1.c1=table2.c1

select table1.c1,table1.c2,table2.c3 from table1
inner join table2 on table1.c1=table2.c1

select a.c1,a.c2,b.c3 from table1 a
inner join table2 b
on a.c1=b.c1

select a.c1,a.c2,b.c3 from table1 a
join table2 b
on a.c1=b.c1

--Clarified that using JOIN or INNER JOIN yields the same result in SQL Server.