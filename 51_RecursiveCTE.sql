
--A recursive common table expression has two parts:

--The anchor query
--The recursive query
--These two parts are joined using the UNION ALL operator.

--First, the anchor query is executed, and its output serves as input to the recursive query.

with [R CTE] as (
--Anchor Query
select 1 as n

union all

--Recursive Query
select n+1 from [R CTE] where n<=4
)

select * from [R CTE]

-----------

--Factorial of a given number (5)

--3*2*1
--5*4*3*2*1

with [R CTE] as (
--Anchor Query
select 1 as n

union all

--Recursive Query
select n+1 from [R CTE] where n<=4
)

select exp(sum(log(n))) [factorial of 5] from [R CTE]


--Recursive Common Table Expressions (CTEs) refer to themselves and are useful for iterative computations in SQL.
--A recursive CTE consists of an anchor query and a recursive query, joined using the UNION ALL operator.
--Recursive CTEs can be used to generate sequences and compute factorials by leveraging mathematical properties and SQL functions.
--The product of a sequence can be computed using the sum of logarithms and the exponent function in SQL.

