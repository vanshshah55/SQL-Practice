
select * from Customers

select * from Orders

select * from Products

--1) Write an SQL query to find the names of customers who have placed an order.
select distinct c.customerid,c.customername from customers c inner join orders o
on c.customerid=o.customerid

--2) Find the list of customers who have not placed any orders.
select distinct c.customerid,c.customername from customers c left join orders o
on c.customerid=o.customerid where o.customerid is null
--or
select distinct c.customerid, CustomerName from Customers c left join Orders o 
on O.CustomerID = C.CustomerID where o.OrderID is null

--3) List all orders along with the product name and price.
select distinct o.productid, p.productname,p.price from Orders o join Products p 
on o.ProductID = p.ProductID


--4) Find the names of customers and their orders, including customers who haven't placed any orders.
select distinct CustomerName,OrderID from Customers c left join Orders o
on o.CustomerID = c.CustomerID 

--5) Retrieve a list of products that have never been ordered.
select distinct p.productname,p.productid from orders o right join products p
on o.ProductID=p.ProductID where o.OrderID is null


--6) Find the total number of orders placed by each customer.
select customername,count(orderid) [Number of Orders] from Customers c LEFT join Orders o 
on c.CustomerID = o.CustomerID
group by customername -- (prints 0 orders aswell)
--OR 
select c.customername,count(o.orderid) [no. of orders] from customers c join orders o
on c.customerid=o.customerid
group by c.CustomerName

--7) Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.
select c.customername,p.productname,o.OrderDate from customers c left join orders o on 
c.CustomerID=o.CustomerID left join products p on
o.productid = p.productid
