select * from customers

select * from orders 

select * from customers
where customer_id in 
( select distinct customer_id from orders where order_date between '2024-08-01' and '2024-08-31'
)

select * from customers
where customer_id in (
select distinct customer_id from orders where order_date not between '2024-08-01' and '2024-08-31'
)

select * from employees

-- Fetch the data from employees where salary > average salary

select * from employees where salary > (
select avg(salary) from employees
)

select avg(salary) from employees