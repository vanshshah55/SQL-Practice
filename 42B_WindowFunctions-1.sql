select * from students

--Row_Number -> In case of a tie row numbers are assigned randomly

select *, ROW_NUMBER() over (order by marks desc) as [Row Number]
from Students

select *, ROW_NUMBER() over (order by marks asc) as [Row Number]
from Students

--Rank -> if there's a tie next rank/ranks will be skipped
select *, rank() over (order by marks desc) as [Rank Function]
from students

select *, rank() over (order by marks ) as [Rank Function]
from students

--Dense_Rank -> if there's a tie ranks will not be skipped
select *,DENSE_RANK() over (order by marks desc) as [Dense Rank]
from students

select *,DENSE_RANK() over (order by marks) as [Dense Rank]
from students


--The ROW_NUMBER, RANK, and DENSE_RANK window functions are used to assign sequential numbers or ranks to rows based on specified ordering.
--ROW_NUMBER assigns unique numbers to each row, even if values are tied, while RANK assigns the same rank to tied values but skips subsequent ranks, and DENSE_RANK assigns the same rank to tied values without skipping ranks.
--The ORDER BY clause within the OVER clause determines the sorting for ranking; changing the order (ascending or descending) affects the assigned ranks or row numbers.
--In case of ties, ROW_NUMBER assigns numbers arbitrarily, RANK skips ranks, and DENSE_RANK does not skip any ranks.

