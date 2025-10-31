select * from students

select *,ROW_NUMBER() over (partition by subject order by marks desc) [row num] 
from students

select *, ROW_NUMBER() over (partition by subject order by marks) [rown num asc]
from students

select *, ROW_NUMBER() over (partition by student_name order by marks desc) [rown num asc]
from students

select *, RANK() over (partition by student_name order by marks desc) [rank desc]
from students

select *, RANK() over (partition by subject order by marks desc) [rank desc]
from students

select *,DENSE_RANK() over (partition by subject order by marks desc) [dense rank]
from students

select *,DENSE_RANK() over (partition by student_name order by marks desc) [dense rank]
from students


--The ROW_NUMBER, RANK, and DENSE_RANK window functions can be used with the PARTITION BY clause to assign rankings within groups in SQL.
--Sorting order (ascending or descending) affects how row numbers and ranks are assigned to records.
--The difference between RANK and DENSE_RANK is that RANK skips ranks when there are ties, while DENSE_RANK does not.
--The PARTITION BY clause allows for flexible grouping, such as by subject or by student, to create separate windows for ranking.