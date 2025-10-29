create database Student

use student

create table student_details(
Student_Name nvarchar(256),
Gender char(1),
Age tinyint,
event_date date,
distance decimal(5,2)
)
/*
student_name: Stores the name of the student, using nvarchar(256) to allow up to 256 characters.
gender: Stores the gender, using char(1) where 'M' refers to male and 'F' refers to female.
age: Stores the age, using tinyint which allows values from 0 to 255.
event_date: Stores the date of the event, using the date data type.
distance: Stores the distance covered, using decimal(5,2) for precision up to two decimal places.
*/

select * from student_details

insert into student_details(Student_Name,Gender,Age,event_date,distance)
values('Raj Mehera','M',25,'2024-08-03',123.11)

insert into student_details
values('Nitin Singh','M',32,'2023-12-06',119.09)

