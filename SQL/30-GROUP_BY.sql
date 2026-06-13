/* The SQL GROUP BY Statement

The GROUP BY statement is used to group rows that have the same values into summary rows, like "Find the number of customers in each country".
The GROUP BY statement is almost always used in conjunction with aggregate functions, like COUNT(), MAX(), MIN(), SUM(), AVG(), to perform calculations on each group.

GROUP BY Syntax
SELECT column1, aggregate_function(column2), column3, ...
FROM table_name
WHERE condition
GROUP BY column1, column3
ORDER BY column_name; 

SQL GROUP BY Examples 
The Following sql returns the number of customers in each country */
SELECT Country, COUNT(CustomerID) AS [Number of Customers]
FROM customers
GROUP BY "Country"; ---  this will give you the number of customers in a each country, counts no. of customers and counts it then gives country name - number of customers

--- The following SQL returns the number of customers in each country, sorted from high to low: 
SELECT Country, COUNT(CustomerID) AS [Number of customers]
FROM customers
GROUP BY "Country"
ORDER BY COUNT("CustomerID") DESC; --- it is saying to order the table by number of customers from high to low

--- GROUP BY with JOIN Example 
--- The following SQL returns the number of orders sent by each shipper:
SELECT Shippers."ShipperName", COUNT(orders.OrderID) AS [Number of orders]
FROM orders 
LEFT JOIN Shippers
ON orders."ShipperID" = shippers."ShipperID"
GROUP BY "ShippersName";

