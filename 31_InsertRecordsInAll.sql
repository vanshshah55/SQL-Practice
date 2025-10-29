select * from student_details

insert into student_details
values
('Mayank','M',18,'2024-02-02',115.35),
('Mahesh','M',34,'2023-11-08',324.66)

--When not specifying column names in the insert statement, the values must be provided in the order of the columns in the table. To check the order, use the information schema.
select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'
--This will display the ordinal position for each column, helping to ensure values are inserted in the correct order.

insert into student_details (Student_Name,Gender)
values('Priya','F')

select * from student_details