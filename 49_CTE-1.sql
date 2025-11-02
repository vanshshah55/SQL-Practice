/*
Common Table Expression (CTE) in SQL is a temporary result set that you 
can REFERENCE within a
SELECT, INSERT, UPDATE, or DELETE statement. CTEs are defined using the WITH keyword,
and they can make complex queries easier to write, understand, and maintain by breaking them into simpler parts.
*/

use employee_details

select * from employees

select * into #temp1 from employees

select * from #temp1

-- Example 1:

with CTE as (
select * from #temp1
)
select * from cte

-- Example 2:

with test_cte as (
select employeeid,firstname from #temp1 where employeeid in (2,4)
)
select * from test_cte

-- Example 3:

with [comm table expression] as
(
select * from #temp1 where employeeid in (1,2,3)
)

select * into #temp2 from [comm table expression]
select * from #temp2

-- Example 4:

with cte_1 as (
select * from #temp1 where employeeid in (2,4,6)
)

update #temp1 set EmployeeID=101 where EmployeeID in 
(select distinct EmployeeID from cte_1)
---
select * from #temp1

-- Example 5:

with cte_2 as (
select * from #temp1 where EmployeeID=1
)

delete from #temp1 where employeeid in 
(select distinct EmployeeID from cte_2)
--
select * from #temp1

-- Example 6:

with cte_3 as(
select * from #temp1 where employeeid in (101)
)

insert into #temp1 select * from cte_3
--
select * from #temp1


--Common Table Expressions (CTEs) are temporary result sets that can be referenced with SELECT, INSERT, UPDATE, or DELETE statements.
--CTEs are defined using the WITH keyword and must be immediately followed by the statement that references them.
--CTEs help simplify queries and make code easier to understand by breaking them into simpler parts.
--CTEs can be used to select, insert, update, and delete data in SQL Server