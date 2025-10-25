select * from sales

select paymentmethod, sum(totalamount) as [sum of sales]
from sales
group by paymentmethod

select ProductID,PaymentMethod,sum(TotalAmount) [Sum of Sales] from dbo.Sales
group by ProductID,PaymentMethod
order by ProductID

--The GROUP BY clause in SQL is used to group records by one or more columns and perform aggregate functions like SUM.
--When using GROUP BY, all columns in the SELECT statement that are not aggregated must be included in the GROUP BY clause.
--The ORDER BY clause can be used after GROUP BY to sort the results as needed.