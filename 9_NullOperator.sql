select * from employees

insert into employees
values(9,'Jay','','IT',73000,'2022-04-04')

INSERT INTO DBO.Employees
VALUES (10,'Nitin','shamani','0',54000,'2021-02-22')

select * from dbo.Employees where Department = null
--Executing this above statement does not return any results, nor does it throw an error. 
--This is because the correct way to check for null values is to use the IS NULL operator.
select * from dbo.Employees where Department is null

select * from dbo.Employees where Department is not null

--Null values in SQL represent missing or blank data at the time of record creation.
--A blank value, a null value, and a zero value are all different in SQL and appear differently in query results.
--To check for null values in SQL, use the IS NULL or IS NOT NULL operators, not = NULL.
