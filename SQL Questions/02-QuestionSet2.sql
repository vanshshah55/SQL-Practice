
select * from Employees

--1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
select * from employees where department like 'IT' and salary >75000

--2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
select * from employees where department = 'HR' or salary<60000

--3. How do you select employees who do not work in the 'Finance' department?
select * from employees where Department not in ('Finance')
--or
select * from employees where department != 'Finance'
--or
select * from employees where not department = 'Finance'

--4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
select * from employees where salary between 60000 and 70000 and department = 'Finance'

--5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?
select * from employees where Department='IT' and not salary > 80000

--6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
select * from employees where department in ('HR','Finance') and salary > 65000
--or
select * from employees where (Department in ('HR') or department in ('Finance'))
and salary >65000

--7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
select * from employees where lastname like 'D%' and department not in ('HR')

--8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
select * from employees where department not like 'IT' and salary > 70000

--9. How do you select employees who work in the 'IT' department and either have a salary greater 
--than 75,000 or have the first name 'Laura'?
select * from employees where Department='IT' and (salary > 75000 or firstname = 'Laura')

--10. How do you find employees who do not work in the 'HR' or 'IT' departments?
select * from employees where department not in ('HR','IT')