--left/right anti join, we mean that we want those records to appear in the output 
--which are present only in the left/right table.

--The table that appears first in the join statement is considered the left table, and the table that appears after the join keyword is the right table. 
--This applies to all types of joins.

select * from table1

select * from table2

--Left Anti Join -- Executing this query returns the rows from the left table that do not have a corresponding match in the right table.
select * from table1 left join table2
on table1.c1=table2.c1
where table2.c1 is null

--Right Anti Join  -- Executing this query returns the rows from the right table that do not have a corresponding match in the left table.
select * from table1 right join table2
on table1.c1 = table2.c1
where table1.c1 is null

--Left anti join returns records present only in the left table by filtering left outer join results where right table columns are null.
--Right anti join returns records present only in the right table by filtering right outer join results where left table columns are null.
--Null values do not match with nulls in join conditions, so unmatched nulls from one table appear with nulls for the other table's columns in the output.
