select * from employeerecords

select * from employeerecords
where not firstname = 'John' and not salary = 60000

select * from employeerecords
where not lastname = 'Miller' or not department = 'HR'

select * from employeerecords

select * from employeerecords
where salary between 75000 and 85000

select * from employeerecords
where salary>=75000 and salary<=85000

select * from employeerecords
where salary not between 75000 and 85000

select * from employeerecords
where not salary between 75000 and 85000

select * from employeerecords
where department = 'HR' or Department = 'IT'

select * from employeerecords
where department in('HR','IT')

select * from employeerecords
where department not in('HR','IT')

--The NOT operator in SQL is used to exclude records that meet a specific condition.
--The BETWEEN operator filters records within a specified inclusive range.
--The IN operator allows filtering records matching any value in a list, simplifying multiple OR conditions.
--SQL keywords and identifiers are case-insensitive in SQL Server, allowing flexibility in writing queries.