--The values in the foreign key column, apart from nulls, must be a subset of the values in the primary key column. This means every non-null foreign key value must exist in the primary key column it references.

--Referential Integrity
--This subset relationship between foreign key and primary key values maintains referential integrity. Referential integrity ensures that foreign key values correspond to existing primary key values, preventing invalid references.

--Foreign keys establish relationships between tables and can have duplicates and nulls.
--Non-null foreign key values must exist in the referenced primary key column.

--Foreign Key Constraint

--Case 1 : When the new table has to be created
create table test_primary_key(
ID int primary key,
name varchar(256)
)

insert into test_primary_key values (1,'Mayank'),(2,'Raj'),(3,'Jayant')

select * from test_Primary_key

create table test_foreign_key (
ID int foreign key references test_primary_key(id),
course varchar(256)
)

insert into test_foreign_key values (1,'A')

select * from test_foreign_key

insert into test_foreign_key values (null,'B')

insert into test_foreign_key values (5,'C') -- will not work

--Case 2 : Table already exists
create table test_foreign_key_2 (ID int, course varchar(256))

alter table test_foreign_key_2
add foreign key (id) references test_primary_key(id)


--Foreign key constraints enforce referential integrity between tables by linking a column in one table to the primary key column of another table.
--Foreign key columns can contain null values, but cannot contain values not present in the referenced primary key column.
--Foreign key constraints can be defined at table creation or added later using the ALTER TABLE statement.
--Attempting to insert a value in the foreign key column that does not exist in the referenced primary key column results in a constraint violation error.
