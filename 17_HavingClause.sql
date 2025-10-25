select * from sales

--Total Sales, Avg Sales, Total Quantity, Avg Quantity for each distinct product
select productid,sum(totalamount) [sum of sales],
avg(totalamount) [avg of sales],
sum(quantity) [sum of quantity],
avg(quantity) [avg quantity]
from sales
group by productid
having sum(totalamount)<700 or sum(quantity)=21

--The HAVING clause is used to filter grouped records after aggregation.
--HAVING is generally used with GROUP BY to apply conditions on aggregated data.
--Multiple conditions can be combined in HAVING using logical operators like AND.
--The HAVING clause is useful when you need to filter groups created by the GROUP BY clause. While GROUP BY aggregates data, HAVING applies conditions on these aggregated groups.
--It is important to distinguish between WHERE and HAVING clauses:
--WHERE filters rows before grouping.
--HAVING filters groups after aggregation.