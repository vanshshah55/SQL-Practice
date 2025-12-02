
--MY SOLUTION

select 'Low Salary' [category], count(account_id) AS accounts_count
FROM Accounts
WHERE income < 20000

UNION ALL

select 'Average Salary', count(account_id)
FROM Accounts
WHERE income between 20000 and 50000

UNION ALL

select 'High Salary', count(account_id)
FROM Accounts
WHERE income > 50000

------------------------------------------------------------------------------------------------------------------
--LEETCODE USER SOLUTION

 With flat_category AS (
 SELECT 
 	SUM(CASE WHEN income < 20000 then 1 else 0 end) as 'Low Salary', 
 	SUM(CASE WHEN income >= 20000 and income <= 50000 then 1 else 0 end) as 'Average Salary',
 	SUM(CASE WHEN income > 50000 then 1 else 0 end) as 'High Salary'
 FROM Accounts
 ) 

 SELECT category, accounts_count 
 from flat_category 
 UNPIVOT ( accounts_count  for category  in ([Low Salary], [Average Salary], [High Salary])) as Unpivoted


 /*
 QUESTION : -
 1907. Count Salary Categories

Medium
Topics

Table: Accounts

+-------------+------+
| Column Name | Type |
+-------------+------+
| account_id  | int  |
| income      | int  |
+-------------+------+
account_id is the primary key (column with unique values) for this table.
Each row contains information about the monthly income for one bank account.
 

Write a solution to calculate the number of bank accounts for each salary category. The salary categories are:

"Low Salary": All the salaries strictly less than $20000.
"Average Salary": All the salaries in the inclusive range [$20000, $50000].
"High Salary": All the salaries strictly greater than $50000.
The result table must contain all three categories. If there are no accounts in a category, return 0.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Accounts table:
+------------+--------+
| account_id | income |
+------------+--------+
| 3          | 108939 |
| 2          | 12747  |
| 8          | 87709  |
| 6          | 91796  |
+------------+--------+
Output: 
+----------------+----------------+
| category       | accounts_count |
+----------------+----------------+
| Low Salary     | 1              |
| Average Salary | 0              |
| High Salary    | 3              |
+----------------+----------------+
Explanation: 
Low Salary: Account 2.
Average Salary: No accounts.
High Salary: Accounts 3, 6, and 8.
 */