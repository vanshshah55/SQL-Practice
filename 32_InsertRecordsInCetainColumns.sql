select * from student_details

insert into student_details(Age,event_date)
values(34,'2023-10-04'),(43,'2019-01-01'),(19,'2022-08-08')

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

--Datatype of column age is tinyint (0 to 255)
insert into student_details (Age)
values (256) -- will not work