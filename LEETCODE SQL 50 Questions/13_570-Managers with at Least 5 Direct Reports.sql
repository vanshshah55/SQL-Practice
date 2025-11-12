
-- MY LOGIC CODE
with cte as(
select  e1.id [e1id], e1.name [e1name], e1.department [e1dep], e1.managerId [e1man],
e2.id [e2id],e2.name [e2name], e2.department [e2dep], e2.managerId [e2man] 
from employee e1
join employee e2
on e1.id = e2.managerid
)
select e1name [name] from cte
group by e1id,e1name
having count(e2man) >= 5

-- ENHANCED VERSION BY ME
SELECT e1.name
FROM Employee e1
JOIN Employee e2
ON e1.id = e2.managerID
GROUP BY e1.id, e1.name
HAVING count(e1.id) >= 5


/*
QUESTION : -
570. Managers with at Least 5 Direct Reports
Medium
Topics

Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the name of an employee, their department, and the id of their manager.
If managerId is null, then the employee does not have a manager.
No employee will be the manager of themself.
 

Write a solution to find managers with at least five direct reports.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Employee table:
+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+
Output: 
+------+
| name |
+------+
| John |
+------+
*/