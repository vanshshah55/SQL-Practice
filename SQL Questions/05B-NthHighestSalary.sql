
select * from employees

-- Using SubQueries

--2nd Highest salary
select max(salary) [2nd Highest Salary] from employees where salary <
(select max(salary) from employees)

--3rd highest salary
select max(salary) [3rd Highest Salary] from employees where salary <
(select max(salary)  from employees where salary <
(select max(salary) from employees))

--2nd Highest salary
select top 1 salary [2nd Highest Salary] from
(select distinct top 2 salary from employees order by salary desc)x
order by salary asc

--3rd Highest salary
select top 1 salary [3rd Highest Salary] from
(select distinct top 3 salary from employees order by salary desc)x
order by salary asc


-- Using CTE

--2nd Highest salary
with cte as(
select *,DENSE_RANK() over (order by salary desc) [DR] from employees
)

select salary [2nd Highest Salary] from cte where DR = 2 

--3rd Highest salary
with cte as(
select *,DENSE_RANK() over (order by salary desc) [DR] from employees
)

select salary [3rd Highest Salary] from cte where DR = 3


-- Sub Query along with Dense_Rank()

--2nd Highest salary
select salary as [2nd Highest Salary] from
(select*, DENSE_RANK() over(order by salary desc) [DR] from employees) x -- allias name to refer the table of subquery
where DR = 2

--3rd Highest salary
select salary as [3rd Highest Salary] from
(select*, DENSE_RANK() over(order by salary desc) [DR] from employees) x -- allias name to refer the table of subquery
where DR = 3
