
--Check Constraint
--It checks for certain condition that can be applied on the columns of a table, if this condition is not
--fulfilled, we will not be able to insert the records into the table.


--Case 1 : Table doesn't exist
create table test_check (
EID int,
firstname varchar(256),
age tinyint check (age>=10)
)

select * from test_check

insert into test_check values (1,'Mayank','20')

insert into test_check values (2,'Raj',9) -- will not work

update test_check set EID =11 where EID = 1

--Case 2 : Table exists
alter table test_check
add check (eid>5)

insert into test_check values (3,'Nitin',34) -- will not work

insert into test_check values(30,'Nitin',34)


select * from INFORMATION_SCHEMA.CHECK_CONSTRAINTS

ALTER TABLE test_check
drop constraint CK__test_check__age__3B75D760

alter table test_check
ADD CONSTRAINT chk_age_minimum CHECK (age >= 14);

insert into test_check values (14,'Meet',13) -- will not work

insert into test_check values (13,'Harsh',89) 


--The check constraint enforces specific conditions on table columns, preventing invalid data insertion.
--Check constraints can be defined during table creation or added later using the ALTER TABLE statement.
--If existing data violates a new check constraint, the constraint cannot be applied until the data is corrected.
--Attempting to insert or update data that violates a check constraint results in an error and the operation fails.


