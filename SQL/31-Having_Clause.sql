/* The SQL HAVING Clause
The HAVING clause is used to filter the results of a GROUP BY query based on aggregate functions.

Unlike the WHERE clause, which filters individual rows before grouping, the HAVING clause filters groups after the aggregation has been performed.

HAVING Syntax
SELECT column1, aggregate_function(column2), column3, ...
FROM table_name
WHERE condition
GROUP BY column1, column3
HAVING condition -- The condition on grouped data
ORDER BY column_name;   

SQL HAVING Examples 
The Following SQL returns the Number of customers in each country - but only include countries with more tehan 5 customers:     */
SELECT Country, COUNT(CustomerId) AS [number of customers]
FROM customers
GROUP BY "Country"
HAVING COUNT(CustomerID) > 5;

SELECT Country, COUNT(CustomerID) AS [Number of customer]
FROM customers
GROUP BY "Country"
HAVING COUNT("CustomerID") > 5 
ORDER BY COUNT("CustomerID") DESC;

--- MORE HAVING Examples 
--- The Following SQL return the employees that  have registered more than 10 Orders: 
SELECT employees."LastName", COUNT(orders."OrderID") AS [Number of orders]
From orders
INNER JOIN employees 
ON orders."EmployeeID" = employees."EmployeeID"
GROUP BY "LastName" 
HAVING COUNT(orders."OrderID") > 10;

--- More HAVING Examples 
--- The following SQL returns if the employees "Davolio" or "Fuller" have registered more than 25 orders:

SELECT employees."LastName", COUNT(orders."OrderID") AS [numbers of orders]
FROM orders
INNER JOIN employees 
ON employees."EmployeeID" = orders."EmployeeID"
WHERE "LastName" = 'Davolio' OR "LastName" = 'Fuller'
GROUP BY "LastName"
HAVING COUNT("CustomerID") > 25;
