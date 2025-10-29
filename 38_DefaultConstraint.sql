
--Default Constraint
--This constraint to provide default values to columns

--Case 1 : The table does not exist
create table test_default (
EID int default 5,
firstname varchar(256) default 'Vansh',
lastname varchar(256),
age tinyint
)

select * from test_default

insert into test_default values (1,'Nitin','jain',23)

insert into test_default(lastname,age) values ('Shah',21) -- default values

insert into test_default (lastname) values ('Grover') -- default values

--Case 2 : The table already exists
alter table test_default
add default 25 for age

insert into test_default (lastname) values ('Mehta') -- default values

select * from test_default


--The default constraint in SQL is used to provide default values to columns when no explicit value is supplied during insertion.
--Default constraints can be defined either at the time of table creation or added later to an existing table.
--When inserting records without specifying values for columns with default constraints, the default values are automatically inserted instead of NULL.
--Altering an existing table to add a default constraint affects subsequent inserts where values for that column are omitted.