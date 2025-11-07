select * from ReportingStructure

--The requirement is to create a table with only two columns:

--The first column will tell us about the reportee.
--The second column will tell us about the manager of the reportee.
--Managers are also employees, so their names are present in the same table.


-- Course code
select b.EmployeeName [Reportee] ,a.EmployeeName [Manager] from ReportingStructure a inner join
ReportingStructure b on a.EmployeeID=b.ManagerID

union all

select employeename,null [Manager] from ReportingStructure
where ManagerID is null


-- MY Logic Code
select b.EmployeeName,a.EmployeeName from ReportingStructure a right join
ReportingStructure b on a.EmployeeID=b.ManagerID


--Null values in the manager ID column require special handling, as joins ignore nulls.
--The UNION ALL operator is used to include employees without managers in the final result.
--Aliases are used to differentiate between the two instances of the same table in a self-join.