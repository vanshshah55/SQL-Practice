select * from sales

select max(totalamount) as [maximum amount] from sales

select max(saledate) [Max Sales Date] from sales

select max (paymentmethod) as [max pay method] from sales

--Maximum Quantity sold for each productID
select productid, max(quantity) as [maximum quantity] from sales
group by ProductID

select * from dbo.Sales

--Maximum Total Amount for all distinct dates in saledate column
select saledate, max(totalamount) as [max total amount] from sales
group by SaleDate

--The MAX aggregate function in SQL can be used to find the maximum value in columns of various data types, including numeric, date, and text fields.
--The MAX function ignores NULL values when calculating the maximum.
--When using aggregate functions with non-aggregated columns, the GROUP BY clause must be used to group results by those columns.