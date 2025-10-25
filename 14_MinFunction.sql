select * from sales

select min(Quantity) [minimum quantity] from sales

select min (saledate) [minimum sales date] from sales

select min(paymentmethod) [min pay method] from sales

--show minimum total amount for each storeid
select storeid, min (totalamount) [min total amt] from sales
group by StoreID