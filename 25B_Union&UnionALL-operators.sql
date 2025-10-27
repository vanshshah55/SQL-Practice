--Suppose there is a requirement to combine the outputs of both tables into a single result. 
--This can be achieved using the UNION ALL operator.

--To combine the tables without duplicate records, use the UNION operator instead of UNION ALL


select * from append1

select * from append2

select c1,c2,c3 from append1
union all
select c1,c2,c3 from append2

select c1,c2,c3 from append1
union
select c1,c2,c3 from append2

--Requirements for Using UNION and UNION ALL
--When using UNION or UNION ALL, keep the following points in mind:

--The number of columns in the SELECT list must be the same for all combined queries.
--The data types of corresponding columns must be the same.
--The order in which columns are written in the SELECT statements must be the same.
--For example, both SELECT statements should have three columns: c1, c2, and c3, in the same order.

select c1,c2,c3 from append1 --C1 is int, C2 is nvarchar, C3 is int
union 
select c1,c3,C2 from append2 -- (ERROR THROW)

--When combining SELECT statements using UNION or UNION ALL, if alias names are used, the aliases specified in the first SELECT statement are assigned to the columns in the output.
select c1 [Column1],c2 [Column2],c3 [Column3] from append1
union
select c1 [Col1],c2 [Col2],c3 [Col3] from append2



--The UNION and UNION ALL operators are used to combine the results of multiple SELECT statements in SQL.
--UNION ALL includes duplicate records, while UNION removes duplicates from the combined result set.
--The number, order, and data types of columns in the SELECT statements must be the same when using UNION or UNION ALL.
--When aliases are used, the column names from the first SELECT statement are assigned to the output columns.