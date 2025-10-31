select * from ProfitData

-- To add a new column that shows next months profit for each product
select *, LEAD(profit) 
over (partition by product order by monthnumber) [Next months profit]
from ProfitData

-- We dont want product column in the output but we want each months total profit
-- to be shown by monthnumber & monthname, also a
-- new column should be added to show next months total profit
select monthnumber,monthname,sum(profit) [total profit],
lead(sum(profit)) over (order by monthnumber) [next months total profit]
from profitdata
group by monthnumber,monthname
order by MonthNumber


--The LEAD function in SQL is used to access data from the next row in a result set, which is useful for comparing values across rows.
--To use the LEAD function for next month's profit, partition the data by product and order by month number.
--Aggregating data by month and using LEAD allows for calculation of next month's total profit, even when the original table does not contain this summary.
--Null values appear in the next month's profit column when there is no data available for the subsequent month.