--A full outer join will include three things:

--The output of the inner join
--The output of whatever is present only in the left table
--The output of whatever is present only in the right table

select * from table1 full outer join table2
on table1.c1=table2.c1

SELECT a.c1, a.c2, b.c3
FROM table1 AS a
FULL JOIN table2 AS b
ON a.c1 = b.c1

--Whenever we are talking about joins, null never matches with null. So, null will not match with null.
--If a value exists only in the left table or only in the right table, 
--it will also appear in the output with nulls for the columns from the other table.

--Full outer join combines the results of inner join, left join, and right join, including all records from both tables.
--Null values do not match with other nulls in joins, so unmatched nulls from either table appear with nulls for the other table's columns.
--The output of a full outer join can be large, as it includes all matching and non-matching records from both tables.