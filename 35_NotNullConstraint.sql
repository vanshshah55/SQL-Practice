create database constraints

use constraints


--Constraints are conditions that can be applied on columns of a table. These conditions are to be followed while inserting records into the table.

--Not Null constraint

--Case 1 : We will have to create a new table
create table test_not_null(
EID int not null,
age tinyint,
firstname varchar(256)
)

select * from test_not_null

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'test_not_null'

insert into test_not_null values
(1,23,'Mayank')

insert into test_not_null values
(null,24,'Vansh') -- will not work


insert into test_not_null values
(2,null,'Raj')

--Case 2 : the table already exists
--We want to make firstname column nullable

alter table test_not_null
alter column firstname varchar(256) not null

insert into test_not_null values(23,56,null) -- will not work

alter table test_not_null
alter column age tinyint not null -- will not work as it already has null values

select * from test_not_null


--Constraints are conditions applied on table columns that must be followed when inserting records.
--The NOT NULL constraint ensures a column cannot have null values.
--You can define NOT NULL constraints while creating a table or alter existing tables to add constraints.
--Modifying a column to NOT NULL fails if the column already contains null values.
