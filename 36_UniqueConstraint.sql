
--Unique Constraint
--It ensures that a column consists of unique values

--Case 1 : when the table already exists
--alter table test_unique
--add unique (lastname)

--Case 2 : We need to create the table
create table test_unique(
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)

select * from test_unique

insert into test_unique values(1,22,'Mayank','Mehera')

insert into test_unique values (1,24,'Rohit','Singh') -- will not work

insert into test_unique values (null,34,'Akhilesh','Jain')

insert into test_unique values (null,54,'Nitin','lodha') -- will not work

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME like 'test_unique'

truncate table test_unique

alter table test_unique
add unique (lastname)

insert into test_unique values (1, 22, 'Mayank', 'Singh')
insert into test_unique values (7, 89, 'Nitin', 'Singh') -- will not work


--The unique constraint ensures that a column contains only unique values in a table.
--Unique constraints can be defined during table creation or added later using the ALTER TABLE statement.
--A column with only a unique constraint (without NOT NULL) allows a single NULL value, but inserting another NULL violates the constraint.
--Attempting to insert duplicate values into a unique-constrained column results in an error.