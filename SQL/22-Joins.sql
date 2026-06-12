/* The SQL JOIN Clause 
The JOIN clause is used to combine rows from two or more tables, based on a related column between them 
Here are the different types of JOINs in SQL:

(INNER) JOIN: Returns only rows that have matching values in both tables
LEFT (OUTER) JOIN: Returns all rows from the left table, and only the matched rows from the right table
RIGHT (OUTER) JOIN: Returns all rows from the right table, and only the matched rows from the left table
FULL (OUTER) JOIN: Returns all rows when there is a match in either the left or right table     


Quick Summary Cheat Sheet
INNER JOIN: Only the overlap (Matches only).

LEFT JOIN: Everything on the left + matching right details.

RIGHT JOIN: Everything on the right + matching left details.

FULL JOIN: Absolutely everything from both sides.  */

---  Syntax for join 
/* SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;*/

/* Here we see that the "CustomerID" column in the "Orders" table refers to the "CustomerID" in the "Customers" table. The relationship between the two tables above is the "CustomerID" column.
Then, we can create the following SQL statement (that contains an INNER JOIN), that selects records that have matching values in both tables:   */
SELECT orders."OrderID", customers."ContactName", orders."OrderDate"
FROM orders
INNER JOIN customers ON orders."CustomerID" = customers."CustomerID";
