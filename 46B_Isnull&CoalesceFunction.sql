
select * from customers

--Isnull

--The ISNULL function checks if a value is NULL. If it is, it replaces it with a specified replacement value. The syntax is as follows:
--ISNULL(expression,replacement)

--In this example, since the first value is NULL, the output will be 'first value null'. If the first value is not NULL, ISNULL returns the original value.
select ISNULL(null,'1st value null')

select ISNULL('abx',null)
--Here, since the first value is not NULL, the output will be 'abx'. If both values are NULL, the result will also be NULL.
select ISNULL(null,null)


--The COALESCE function returns the first non-null value from a list of arguments. You can provide multiple values as arguments.

--In this example, 'A' is the first non-null value, so the output is 'A'. If the first value is NULL, COALESCE returns the next non-null value.
select coalesce ('A','B','C')

select coalesce (null,'B','C')

--If both the first and second values are NULL, the third value is returned.
select coalesce (null,null,'C')

---

select * from customers

select customerid,email,phonenumber from customers

-- Suppose you want to display the customer ID, email, and phone number. You can use ISNULL to handle NULL values in the email and phone number columns.
select customerid,isnull(email,'Email NA'),ISNULL(phonenumber,'phno NA')
from customers -- With this query, if the email or phone number is NULL, the specified text will be shown instead.

--If you want to return the email if available, otherwise the phone number, and if both are NULL, display 'contact not available', you can use COALESCE.
select customerid,coalesce(email,phonenumber,'Contact NA') [coalesce function]
from customers -- This query checks for email first. If email is NULL, it checks the phone number. If both are NULL, it displays 'contact not available'.



--The ISNULL function in SQL replaces NULL values with a specified replacement value.
--The COALESCE function returns the first non-null value from a list of arguments.
--Both functions are useful for handling NULL values in SQL queries, especially when displaying data to users.
