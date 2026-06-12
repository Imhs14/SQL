/* SQL LEFT JOIN 
The LEFT JOIN returns all rows from the left table(table1), and ont he matched rows from the right table(table2)

If there is no match in teh right table, the result for the column from the right tabe will be NULL. 

The LEFT JOIN and LEFT OUTER JOIN keywords are equal-  the OUTER keyword is optional 

SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;     
Note: The syntax combines two tables based on a related column, and the ON keyword is used to specify the matching condition. */

SELECT customers."CustomerName", orders."OrderID"
FROM customers
LEFT JOIN orders on customers."CustomerID" = orders."CustomerID"
ORDER BY customers."CustomerName"; 

--- Tip: to Find only the customers who have not placed any order, add WHERE clause to filter for NULL values on the right table: 
SELECT customers.CustomerName, orders."OrderID"
FROM customers
LEFT JOIN orders ON customers."CustomerID" = orders."CustomerID"
WHERE orders."CustomerID" IS NULL;