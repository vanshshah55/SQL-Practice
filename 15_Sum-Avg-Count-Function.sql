Select * from sales

select sum(quantity) [total quantity] from sales

select sum(quantity) [total quantity], sum(totalamount) [sum of amount]
from sales

select avg(quantity) [average quantity] from sales

select avg(quantity) [avg quantity], avg (totalamount) [avg amount]
from sales

select * from sales 

--Sum of Quantity, sum of totalamount, avg of quantity, avg of total amount for each distinct product
select productid,sum(quantity) [sum of quantity],
sum(totalamount) [sum of total amount],
avg(quantity) [avg quantity],
avg(totalamount) [avg total amount]
from sales
group by productid

select * from sales


--Sum of Quantity, sum of amount, avg of quantity & avg of amount for distinct combinations of ProductID & storeid
select productid,storeid,
sum(quantity) [sum of qunatity],
sum(totalamount) [sum of amount],
avg(quantity) [avg quantity],
avg(TotalAmount) [avg total amount]
from sales
group by productid,storeid

select * from sales

select count(*) [number of rows] from sales

select count(paymentmethod) [no of records] from sales

select count(distinct productid) [distinct product]from sales

select paymentmethod,count(paymentmethod) [distinct pay mode]
from sales
group by paymentmethod

select paymentmethod,count(distinct paymentmethod) [distinct pay mode]
from sales
group by paymentmethod

select paymentmethod,count(*) [pay mode] from sales
group by PaymentMethod

--Aggregate functions like MIN, MAX, SUM, and AVG ignore NULL values in the specified columns.
--COUNT(*) counts all rows, while COUNT(column) ignores NULLs in that column, and COUNT(DISTINCT column) counts unique non-null values.