
select * from customers

select * from orders

select * from products

--1) Identify Pairs of Customers Living in the Same Country
select c1.CustomerName, c1.Country from customers c1 join
customers c2 on c1.Country=c2.Country
where c1.CustomerName != c2.CustomerName
--or Below One (course solution)
SELECT x.customername, y.customername FROM customers AS x
INNER JOIN customers AS y 
ON x.country = y.country
AND x.customerid <> y.customerid -- <> means should not be equal to 
AND x.customerid > y.customerid; -- to only display any 1 of the record


--2) Find the Customer Who Has Spent the Most on Orders
select top 1 CustomerName,sum(price) [total price] from customers c join orders o
on c.CustomerID=o.CustomerID join products p
on o.ProductID=p.ProductID
group by customername
--only works if 1 person has the highest
-- or Below One (course solution)
-- if many people have the highest salary as the same
SELECT customername FROM
(SELECT customername,sum(Price) [amount spent], DENSE_RANK() OVER (ORDER BY sum(price) DESC ) AS [dr]
 FROM customers AS c
 INNER JOIN orders AS o ON c.customerid = o.customerid
 INNER JOIN products AS p ON o.productid = p.productid
 GROUP BY customername) M WHERE [dr] = 1; -- giving allias name to sum(price) is important

--3) Find Customers Who have Ordered More Than One Type of Products
select CustomerName,count(Customername)AS product_count from customers c join orders o
on c.CustomerID=o.CustomerID
group by CustomerName
having count(Customername)>1
--or Below One (course solution)
SELECT c.customername, COUNT(DISTINCT o.productid) AS product_count
FROM customers AS c
INNER JOIN orders AS o ON c.customerid = o.customerid
GROUP BY c.customername
HAVING COUNT(DISTINCT o.productid) > 1


--4) List All Products and Their Corresponding Orders Using Right Join, including products that have never been ordered
select p.ProductID,p.ProductName,o.OrderID from orders o right join products p
on o.ProductID=p.ProductID

--5) Retrieve All Orders Placed by Customers from USA

select c.CustomerName,c.Country,o.OrderID from customers c join orders o
on c.CustomerID=o.CustomerID
where Country in ('USA')

--6) Find Customers Who Ordered Products Priced Above 500
SELECT DISTINCT c.customername
FROM customers AS c
INNER JOIN orders AS o ON c.customerid = o.customerid
INNER JOIN products AS p ON o.productid = p.productid
WHERE p.price > 500;

--7) Find Customers Who Ordered the Same Product More Than Once
SELECT c.customername, o.productid, COUNT(o.orderid) AS order_count
FROM customers AS c
INNER JOIN orders AS o ON c.customerid = o.customerid
GROUP BY c.customername, o.productid
HAVING COUNT(o.orderid) > 1;
