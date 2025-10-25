select * from sales
where totalamount>=161

select * from sales 

select productid,sum(totalamount) [sum of sales] from sales
group by productid
having sum(totalamount)<700

select productid,sum(totalamount) [sum of sales] from sales
where totalamount>=161
group by productid
having sum(totalamount)>=250
order by PRODUCtid desc

--This filters the records before grouping. The sum of sales values change because the WHERE condition is applied before aggregation.
--Now, if you want to further filter the grouped outcome to show only those where the sum of sales is greater than or equal to 250, use the HAVING clause.

select productid,sum(totalamount) [sum of sales] from sales
where totalamount>=161
group by productid
having sum(totalamount)>=250
order by PRODUCtid asc

--The WHERE clause filters records before grouping, while the HAVING clause filters grouped records after aggregation.
--WHERE is used to filter rows in the base table, whereas HAVING is used to filter results after GROUP BY.


