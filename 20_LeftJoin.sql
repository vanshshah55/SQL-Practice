--The Left Outer Join returns all records from the left table and matched records from the right table.
--If there is no match in the right table, the result contains NULLs for columns from the right table.
--The join condition is specified using the ON clause, comparing columns from both tables.

select * from table1

select * from table2

select * from table1 left join table2
on table1.c1=table2.c1

-- the row with null in column1 of the left table appears with NULL values for the right table's columns.

select * from table1 a left outer join table2 b
on a.c1=b.c1

select a.c1,a.c2,b.c3 from table1 a 
left join table2 b 
on a.c1=b.c1