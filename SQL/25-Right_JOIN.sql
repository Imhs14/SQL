/* SQL Right JOIN 
The RIGHT JOIN returns all rows from the right table(table2), and onlly the matched rows from the left table(table1). 
If there is no match in the left table, the result from the columns from the left table will be NULL. 
The RIGHT JOIN and RIGHT OUTER JOIN. keywords are equal - the OUTER keyword is optional. 

RIGHT JOIN SYNTAX 
sSELECT column_name(s) 
FROM table1 
RIGHT JOIN table2 
ON table1.column_name = table2.column_name;     

Note: the syntac combines two tables based on a related column, and the ON keyword is used to specify the matching condition.   */
--- The following sql will return all employees, and any orders they might have placed: 
SELECT orders."OrderID", employees."LastName", employees."FirstName"
FROM orders
RIGHT JOIN employees ON orders."EmployeeID" = employees."EmployeeID"
ORDER BY orders."OrderID";
--- Note: The RIGHT JOIN keyword returns all records from the right table(Employees), even if there no matches in left table (orders). 