
create database Test_index

use Test_index

drop table if exists students

create table Students ( id int, name nvarchar(50), age int, gender varchar(20))

insert into Students values
(1,'Raj',23,'M'),
(4,'Nitin',25,'M'),
(3,'Priya',21,'F'),
(2,'Nikita',20,'F'),
(5,'Monica',20,'F')

------

select * from Students

create clustered index ix_1 on students (id)

select * from Students

create clustered index ix_2 on students (id desc) -- will not work
--Since a clustered index determines the physical order of data, only one clustered index can exist on a given table. Attempting to create another clustered index without dropping the existing one will result in an error.

drop index ix_1 on students

create clustered index ix_2 on students (id desc)

select * from Students

drop index ix_2 on students

-- Clustered indexes can also be created using multiple columns, known as composite clustered indexes. Although only one clustered index can exist per table, it can consist of multiple columns.
create clustered index ix_3 on students (gender desc, age asc)

select * from Students

drop index ix_3 on students


--A clustered index determines the physical order of data in a table, and only one clustered index can exist per table.
--Clustered indexes can be created on one or multiple columns, known as composite clustered indexes.
--Creating a clustered index sorts the data physically according to the specified column(s) and order (ascending or descending).
--To create a new clustered index, the existing one must be dropped first, as only one clustered index is allowed per table.
