--Copying Data From existing table to the New table

--Case 1 : The New table simply doesn't exist

select * from dbo.Sales 

select * into New_Table_1 from dbo.Sales

--All columns were copied from existing table
--This statement will result in the creation of New_Table_1 which will be having structure & records both
--same as that of dbo.sales table

select * from New_Table_1
drop table New_Table_1

-------------------Certain Columns to be copied

select productid,quantity into new_table_1 from sales

select * from new_table_1


--Case 2: The New table structure/New Table exists

--This statement creates a new table named new_table2 with the same structure as DBO.sales
select top 0 * into new_table_2 from sales

select * from new_table_2

insert into new_table_2 select * from dbo.Sales 

-------------------Certain Columns to be copied

--This creates new_table3 with the same structure as DBO.sales but with no records.
select * into new_table_3 from sales
where 1 = 0

select * from new_table_3

insert into new_table_3 (ProductID,SaleDate) select productid,saledate from sales


--Data can be copied from one table to another in SQL using different approaches depending on whether the new table exists or not.
--The SELECT ... INTO statement creates a new table and copies data and structure from an existing table.
--To copy only specific columns, specify the column names in the SELECT statement.
--The INSERT INTO ... SELECT ... statement is used when the destination table already exists, allowing for copying all or selected columns.