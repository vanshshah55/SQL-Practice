select * from student_details

insert into student_details(Age,event_date)
values(34,'2023-10-04'),(43,'2019-01-01'),(19,'2022-08-08')

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'student_details'

--Datatype of column age is tinyint (0 to 255)
insert into student_details (Age)
values (256) -- will not work


--You can insert records into specific columns of a table by specifying the column names in the INSERT statement.
--If you insert values only for some columns, the remaining columns will have NULL values unless a default is specified.
--It is important to know the data type and allowed range for each column to avoid errors when inserting data.
--Attempting to insert a value outside the allowed range for a column's data type (such as 256 into a TINYINT column) will result in an error.