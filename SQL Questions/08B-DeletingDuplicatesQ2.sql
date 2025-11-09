

select * from EmployeeRecords_1
order by EmployeeID,Email

---- creating backups
select distinct * into EmployeeRecords_2 from EmployeeRecords_1
select * into EmployeeRecords_3 from EmployeeRecords_1
----

-- To remove duplicates where the entire record is duplicated
select distinct * into #1 from EmployeeRecords_1

truncate table employeerecords_1

insert into EmployeeRecords_1 select * from #1

select * from EmployeeRecords_1 order by email
--

-- To remove duplicates where column-specific duplicates (email in this case) is duplicated.
-- Record with Lower Employee ID should remain
with cte as (
select *, DENSE_RANK() over (partition by email order by employeeid) [DR]
from EmployeeRecords_1
)
--select * from cte
delete from cte where dr = 2

select * from EmployeeRecords_1

--
select * from EmployeeRecords_2 order by Email

--Retail the record with higher Employee id
with cte as (
select *, DENSE_RANK() over (partition by email order by employeeid desc) [DR]
from EmployeeRecords_2
)
--select * from cte
delete from cte where dr = 2

-------------------------


select * from employeerecords_1 --Employeeid = 5 was retained

select * from employeerecords_2 --Employeeid = 6 was retained