/*
The SQL UNION ALL Operator
The UNION ALL operator is used to combine the result-set of two or more SELECT statements.

The UNION ALL operator includes all rows from each statement, including any duplicates.

Requirements for UNION ALL: 

Every SELECT statement within UNION ALL must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order

UNION ALL Syntax
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;
*/ 
--- SQL UNION ALL WITH WHERE 
--- Here we add a WHERE clause to return all the German cities from both "Customers" and the "Suppliers" table: 

SELECT City, Country FROM customers
WHERE "Country" = 'Germany'
UNION ALL
SELECT City , Country FROM Suppliers
WHERE Country = 'Germany'
ORDER BY City;
