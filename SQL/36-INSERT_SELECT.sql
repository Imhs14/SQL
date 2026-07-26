--- The MySQL INSERT INTO SELECT statement 
/* The INSERT INTO SELECT statement is used to copy data from an existing table and insert it into another existing table. 

The INSERT INTO SELECT statement requires that the data types in source and target tables matches 

Note: The existing records in the target table are unaffested. 
# INSERT INTO SELECT Syntax
Copy all columns from onr table to another table:

SYNTAX:
INSERT INTO target_table
SELECT * FROM source_table
WHERE condition;

Note: if you omit the column names, the number and order od column in the source and target tables must be exactly the same !

Copy only some columns from one table to another table: 

SYNTAX : 
INSERT INTO target_table (column1, column2, column3...)
SELECT column1, column2, column3,.... 
FROM source_table
WHERE condition;

## My SQL INSERT INTO SELECT Examples
Ex: Copy "suppliers" into "customers" (the columns that are filled with data, will contain NULL):
*/
INSERT INTO customers ("CustomerName", "City","Country")
SELECT "SupplierName", "City", "Country" FROM "Suppliers";

SELECT CustomerName, City, Country FROM customers;

INSERT INTO customers
SELECT * FROM Suppliers; --- Here the columns in suppliers are more, than customers so it will raise the error

--- EX : copy only the German suppliers into "customers":
INSERT INTO customers ("CustomerName","City","Country")
SELECT "SupplierName","City","Country" FROM "Suppliers"
WHERE "Country" = 'Germany';