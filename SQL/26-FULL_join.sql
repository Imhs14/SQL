/* SQL FULL JOIN 
The FULL JOIN returns all rows when there is a match in either the left or right table. 
If a row u the left table has no match in the right table, the result set includes the left row's data and NULL values for all columns of the right table. 
If a row in the right table has no match in the left table, the result set includes the right row's data and NULL values for all columns of the left table. 
The FULL JOIN and FULL OUTER JOIN keywords are equal - the OUTER keyword is optional. 

Note : FULL JION can potentially return very large result-sets! 

FULL JOIN syntax 
SELECT column_name(s)
FROM table 1 
FULL JOIN table 2 
ON table1.coulumn_name = table2.column_name
WHERE Condition; 

The following SQL statement select all customers, and all orders:   */
SELECT customers.customerName, orders."OrderID"
FROM customers 
FULL JOIN orders ON "Customers"."CustomerID" = orders."OrderID"; 
