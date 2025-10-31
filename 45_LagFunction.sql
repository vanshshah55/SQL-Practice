select * from ProfitData

-- To add a new column that shows previous months profit for each product
select *, lag(profit) over (partition by product order by monthnumber) [lag function]
from ProfitData

-- we dont want product column in the output but we want each months total
-- profit to be shown by monthnumber & month name, also a
-- new column should be added to show previous months total profit
select monthnumber,monthname, sum(profit) [total profit],
lag(sum(profit)) over (order by monthnumber) [prev month total profit]
from profitdata
group by monthnumber,monthname
order by monthnumber


--The lag function is used to display the previous month's profit for each product in a new column.
--The lag function requires partitioning by product and ordering by month number to ensure correct results.
--Null values appear in the lag column for the first month of each product, as there is no previous month data.
--The lag function can also be applied to aggregated data, such as total profit per month, to show the previous month's total profit.

