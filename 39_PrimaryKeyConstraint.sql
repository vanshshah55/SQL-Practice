--A primary key in a table is a column or a group of attributes that can be used to distinguish between any two records in that table. 
--It must contain only non-null values and cannot have duplicates, meaning all values must be unique.

--Referential Integrity
--This subset relationship between foreign key and primary key values maintains referential integrity. Referential integrity ensures that foreign key values correspond to existing primary key values, preventing invalid references.

--Primary Key Constraint

--Case 1 : When new is to be created
create table test_pk_1(
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)
select * from test_pk_1

insert into test_pk_1 values (1,'M',23,'Mayank')

insert into test_pk_1 values (1,'F',25,'Monica') -- will not work

insert into test_pk_1 values (null,'M',25,'Raj') -- will not work

truncate table test_pk_1

--Case 2 : Table Already exists
alter table test_pk_1
add primary key (age) -- will not work 
--This statement will throw an error if a primary key already exists in the table. To define a new primary key, the existing one must be dropped first.

drop table test_pk_1

create table test_pk_2 (
SID int not null unique,
firstname nvarchar(256),
age tinyint not null
)

alter table test_pk_2
add primary key (sid,age)
--This attempts to create a composite primary key using the combination of sid and age. However, both columns must be defined as NOT NULL for the primary key constraint to be applied.

alter table test_pk_2
add primary key (sid) -- If only a single column should be the primary key, the statement can be modified accordingly.



--The primary key constraint is essential for ensuring data integrity in a table. It enforces uniqueness and non-nullability on the specified column(s). Only one primary key can exist in a table at any time. Composite primary keys can be created using a combination of columns, provided those columns are non-nullable.

--The primary key constraint ensures that a column does not contain null or duplicate values.
--Only one primary key can be defined in a table at any time.
--Primary keys can be defined during table creation or added to an existing table using the ALTER TABLE statement.
--Composite primary keys can be created using a combination of columns, provided those columns are non-nullable.

