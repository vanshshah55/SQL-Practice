--Right join (or right outer join) returns all records from the right table and the matched records from the left table.
--If there is no match, NULL values are returned for columns from the left table.
--The join predicate is based on matching column values between the two tables.

select * from table1

select * from table2

select * from table1 right join table2
on table1.c1=table2.c1

select * from table1 right outer join table2
on table1.c1 = table2.c1

select b.c1,a.c2,b.c3 from table1 a right join
table2 b on a.c1=b.c1