/* SQL SELECT TOP, LIMIT and FETCH FIRST 
The SQL SELECT TOP Clause 
The SELECT TOP clause is used to limit the number of records to return
The SELECT TOP clause is useful on large tables with thousands of records.
Returning a large number of records can impact performance.
The following SQL selects only the first 3 records of the "Customers" table     */
SELECT * FROM customers
WHERE Country = 'Germany'
LIMIT 3 ;

--- SELECT TOP AND ORDER BY
--- add the ORDER BY keyword when you want to sort the result , and reutrn the first 3 records of the sorted result. 
SELECT * FROM customers
ORDER BY CustomerName DESC
LIMIT 3;
