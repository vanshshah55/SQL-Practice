--A self-join involves joining a table to itself. For example, consider a table named table1. 
--We will join table1 to itself, assigning different alias names to distinguish the two instances in the query.

--Note that null values do not match with null, so no output is generated for those rows.

select * from table1

select * from table1 a inner join table1 b
on a.c1=b.c1

select a.c1,b.c2 from table1 a inner join table1 b
on a.c1=b.c1

select * from table1

select a.c1,b.c2 from table1 a join table1 b
on a.c1=b.c1

--Self-join refers to joining a table to itself using different alias names.
--The join condition is typically based on matching column values from both aliases of the same table.
--The output can include all columns or selected columns from each alias.
----Using INNER JOIN or simply JOIN yields the same result in self-join scenarios.