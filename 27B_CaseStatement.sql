select * from Products

--Example1 : Add a column to categorize each product into categories high, medium & low
select *,
case
	when Price > 500 then 'High'
	when Price <=500 and Price>=200 then 'Medium'
	else 'Low'
end as [High/Medium/low]
from products

-- NULL :::::::::::::: testing :::::::: without else ::::: still works
select *,
case
	when Price > 500 then 'High'
	when Price<=500 and Price>=200 then 'Medium'
end as [High/Medium/Low]
from products

--Example2 : Provide priority to each category & sort the data according to that priority
select * from products
order by
case
	when Category in ('Electronics') then 1
	when Category in ('Furniture') then 2
	else 3
end

select * from products
order by
case
	when Category in ('Electronics') then 1
	when Category in ('Furniture') then 2
	when Category = 'Accessories' then 3
end

--The CASE statement in SQL is used to categorize data based on specified conditions, similar to if-else logic.
--Including an ELSE clause in a CASE statement assigns a default value when none of the conditions are met; omitting ELSE results in NULL values for unmatched rows.
--CASE statements can be used both in SELECT and ORDER BY clauses to create new columns or to prioritize and sort data according to custom logic.
--The CASE statement syntax requires proper placement of WHEN, THEN, ELSE, and END keywords, and can be combined with column aliases for clarity.