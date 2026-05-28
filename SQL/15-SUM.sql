/* The SQL SUM() Function
The SUM() function is used to calculate the total sum of values within a numeric column.
The SUM() function ignores NULL values in the column.
The following SQL returns the sum of the Quantity field in the "OrderDetails" table:
 */
SELECT sum(quantity)
FROM order_details; --- 12814 

/* SUM() Syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;    */

/* Add a WHERE Clause 
You can add a WHERE clause to specify conditions.
The following SQL returns the sum of the Quantity field for the product with ProductID = 11, in the "OrderDetails" table: */
SELECT sum(quantity)
FROM order_details
WHERE product_id = 11; --- 182 

--- Use Alias , give teh summarized column a name by using the AS keyword 
SELECT sum(quantity) AS total 
FROM order_details; --- 12814 

/* Use SUM() with GROUP BY
Here we use the SUM() function and the GROUP BY clause, to return the Quantity for EACH OrderID in the "OrderDetails" table:*/
SELECT sum(quantity) AS [Total quantity]
FROM order_details
GROUP BY order_id; 

/* SUM() With an Expression
The parameter inside the SUM() function can also be an expression.
If we assume that each product in the "OrderDetails" table costs 10 dollars, we can find the total earnings in dollars by multiply each quantity with 10:*/
SELECT sum(quantity * 10)
from order_details; ---- earings = 128140 

--- we can also join the "orderDetails" table with the ""products" table to find the actual price instead of assuming it is 10 dollars:
SELECT sum(unit_price * quantity)
from order_details
LEFT JOIN products ON order_details.product_id = products.product_id; --- 387763.63