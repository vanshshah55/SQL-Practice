
--MY Logic
----------------------------------------------------------------------------------------------------
with cte1 as
(
select c1.user_id, count(c1.action) [totalconfirmed] from confirmations c1
where c1.action = 'confirmed'
group by c1.user_id
), 
cte2 as
(
select c2.user_id, count(c2.action) [totaltodivide] from confirmations c2
group by c2.user_id),
cte3 as(
select cte1.user_id,
ROUND(CAST(COALESCE(cte1.totalconfirmed, 0) AS decimal) / CAST(cte2.totaltodivide AS decimal),2) 
AS [confirmation_rate]
from cte1
join cte2
on cte1.user_id = cte2.user_id
group by 
cte1.user_id,cte1.totalconfirmed,cte2.totaltodivide
) 

select distinct(s.user_id), COALESCE(confirmation_rate,0) [confirmation_rate] from signups s
left join
cte3
on s.user_id = cte3.user_id
----------------------------------------------------------------------------------------------------

--LeetCode User Solution
SELECT s.user_id, 
  ROUND(AVG(IIF(c.action='confirmed',1.00,0.00)),2) as confirmation_rate 
FROM Signups s
LEFT JOIN Confirmations c on s.user_id = c.user_id
GROUP BY s.user_id


/*
QUESTION : -
1934. Confirmation Rate
Medium
Topics

Table: Signups

+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| user_id        | int      |
| time_stamp     | datetime |
+----------------+----------+
user_id is the column of unique values for this table.
Each row contains information about the signup time for the user with ID user_id.
 

Table: Confirmations

+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| user_id        | int      |
| time_stamp     | datetime |
| action         | ENUM     |
+----------------+----------+
(user_id, time_stamp) is the primary key (combination of columns with unique values) for this table.
user_id is a foreign key (reference column) to the Signups table.
action is an ENUM (category) of the type ('confirmed', 'timeout')
Each row of this table indicates that the user with ID user_id requested a confirmation message at time_stamp and that confirmation message was either confirmed ('confirmed') or expired without confirming ('timeout').
 

The confirmation rate of a user is the number of 'confirmed' messages divided by the total number of requested confirmation messages. The confirmation rate of a user that did not request any confirmation messages is 0. Round the confirmation rate to two decimal places.

Write a solution to find the confirmation rate of each user.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Signups table:
+---------+---------------------+
| user_id | time_stamp          |
+---------+---------------------+
| 3       | 2020-03-21 10:16:13 |
| 7       | 2020-01-04 13:57:59 |
| 2       | 2020-07-29 23:09:44 |
| 6       | 2020-12-09 10:39:37 |
+---------+---------------------+
Confirmations table:
+---------+---------------------+-----------+
| user_id | time_stamp          | action    |
+---------+---------------------+-----------+
| 3       | 2021-01-06 03:30:46 | timeout   |
| 3       | 2021-07-14 14:00:00 | timeout   |
| 7       | 2021-06-12 11:57:29 | confirmed |
| 7       | 2021-06-13 12:58:28 | confirmed |
| 7       | 2021-06-14 13:59:27 | confirmed |
| 2       | 2021-01-22 00:00:00 | confirmed |
| 2       | 2021-02-28 23:59:59 | timeout   |
+---------+---------------------+-----------+
Output: 
+---------+-------------------+
| user_id | confirmation_rate |
+---------+-------------------+
| 6       | 0.00              |
| 3       | 0.00              |
| 7       | 1.00              |
| 2       | 0.50              |
+---------+-------------------+
Explanation: 
User 6 did not request any confirmation messages. The confirmation rate is 0.
User 3 made 2 requests and both timed out. The confirmation rate is 0.
User 7 made 3 requests and all were confirmed. The confirmation rate is 1.
User 2 made 2 requests where one was confirmed and the other timed out. The confirmation rate is 1 / 2 = 0.5.
*/
