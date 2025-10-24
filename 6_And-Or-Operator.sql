select * from employeerecords
where lastname = 'Miller' and EmployeeID = 3

select * from EmployeeRecords
where LastName = 'Miller' and EmployeeID = '3'

select * from employeerecords
where department = 'HR' or Department = 'Finance'

select * from employeerecords
where (department = 'HR' or Department = 'Finance' ) and salary = 60000

--The AND operator in SQL is used to filter records when all specified conditions must be met.
--The OR operator is used when at least one of the specified conditions must be true for a record to be included in the results.
--Parentheses can be used to group conditions and control the logical evaluation order when combining AND and OR operators.
--Textual fields should be enclosed in single quotes in SQL queries, while numeric fields can be written without quotes.
