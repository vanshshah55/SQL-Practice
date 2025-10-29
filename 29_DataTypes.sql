--SQL Data Types

--String Data
--char, varchar, nchar, nvarchar

--M or F, char(1)
--varchar(256)
--nchar(1), it supports unicode
--nvarchar(256), it supports unicode

/*
When creating columns to store string data, we can choose from various data types such as char, varchar, nchar, and nvarchar.
For example, consider a column named gender that can only have two values: 'm' for male and 'f' for female. Since the character length is fixed at one, we can use the char(1) data type. 
The number in parentheses specifies the maximum character length.
On the other hand, if we need to store student names, which can vary in length, we use varchar with a specified maximum length, such as varchar(256).

The nchar data type is similar to char but supports Unicode characters. 
Similarly, nvarchar is like varchar but supports Unicode. Depending on the requirement, we can choose between these data types to store string data appropriately.

*/


--Number Type
--int, bigint, tinyint, decimal(p,s),smallint

--Age of the students, tinyint
--Age of trees/buildings, smallint
--decimal(p,s) , p represents total digits, s refers to number of digits you may have after decimal
--999.99, decimal(5,2)
/*
When using the decimal data type, we must specify precision and scale.

For example, to store the age of students, since age generally does not exceed 255 years, 
we can use tinyint, which has a range from 0 to 255 and requires only one byte of storage. Although int could also be used, it requires four bytes, so using tinyint is more storage-efficient.

If the requirement changes to store the age of buildings or trees, which can be more than 255 years, we should choose data types with larger ranges such as smallint or int. We select the smallest data type that fulfills the requirement to optimize storage.

According to Microsoft documentation, tinyint requires 1 byte of storage, while int requires 4 bytes. Choosing the appropriate data type based on the expected range of values helps minimize storage space.

The decimal data type requires specifying two parameters: precision (p) and scale (s).
Precision (p) represents the total number of digits.
Scale (s) represents the number of digits after the decimal point.
For example, to store distances covered by students in a marathon, where the maximum value will not exceed 999.99, we can use decimal(5, 2). This allows up to five digits in total, with two digits after the decimal point.
*/



--Date data type, time data type, datetime data type
/*
To store date values, we use the Date data type. For time values, we use the Time data type. 
If we need to store both date and time, we can use the Datetime data type. The choice depends on the nature of the temporal data to be stored.
*/


--SQL data types including string types (char, varchar, nchar, nvarchar), numeric types (tinyint, smallint, int, decimal), 
--and temporal types (date, time, datetime). Selecting appropriate data types based on data characteristics and storage considerations is essential for efficient database design.