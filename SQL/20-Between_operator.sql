/* The SQL BETWEEN Operator
The BETWEEN operator is used in the WHERE clause to select values within a specified range.
The range is inclusive - the beginning and end values of the range are included in the results.
The values can be numbers, text, or dates.

Select all products with a price between 10 and 20:*/
SELECT * FROM products
WHERE unit_price BETWEEN 10 and 20; --- 10 and 20 are included

/* Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;    

--------------------------NOT BETWEEN--------------------
The NOT BETWEEN operator is used in the WHERE clause to select values outside a specified range.
The following SQL returns all products with a price NOT between 10 and 20:  */
SELECT * FROM products
WHERE unit_price NOT BETWEEN 10 and 20;

/* BETWEEN with IN
The following SQL returns all products with a price between 10 and 20. In addition, the CategoryID must be either 1, 2 or 3:
*/
SELECT * FROM products
WHERE unit_price BETWEEN 10 and 20
AND category_id IN (1,2,3)

/* Between Text Values The Following SQL selects all products with a productname alphabetically between 'Geitost' and 'Louisiana' Hot Spiced Okra':     */
SELECT * FROM products
WHERE product_name BETWEEN 'Geitost' AND 'Louisiana Hot Spiced Okra'
ORDER BY product_name;

/* NOT BETWEEN Text Values
The following SQL selects all products with a ProductName NOT between 'Geitost' and 'Louisiana Hot Spiced Okra': */
SELECT * FROM products
WHERE product_name  NOT BETWEEN 'Geitost' AND 'Louisiana Hot Spiced Okra'
ORDER BY product_name;

/* BETWEEN Dates
The BETWEEN operator is useful for filtering records within a specific date or time period. Ensure the date format matches the database (e.g. 'YYYY-MM-DD').
The following SQL selects all orders placed in July, 1996:  */
SELECT * FROM orders
WHERE "OrderDate" BETWEEN '1996-07-01' AND '1996-07-31';