/* An aggregate function is a function that performs a calculation on a set of values , and returns a single value 
Aggreagate Fucntions are often used with the GROUP BY clause of teh SELECT statement.
The GROUP BY clause splits the result-set into groups of values and the aggreate function can be used to return a single value for each group.

The most commonly used SQL aggregate functions are:
MIN() - returns the smallest value of a column
MAX() - returns the largest value of a column
COUNT() - returns the number of rows in a set
SUM() - returns the sum of a numerical column
AVG() - returns the average value of a numerical column
Aggregate functions ignore null values (except for COUNT(*)).
We will go through the aggregate functions above in the next chapters.
*/
/* SQL MIN() Function 
The MIN() function returns the smallest value of the selected coloumn
The MIN() Function works with numeric, string, and data data types. */ 
--- return the lowest price in the price column, in the "product" table:
SELECT MIN(unit_price)
FROM products;

/* MIN() SYNTAX 
SELECT MIN(column_name)
FROM table_name
WHERE condition;
*/

--- Set column Name (Alias)
/* When using MIN(), the returned Column will not have a name.
Use the AS keyword to give the column a descriptive name:*/
SELECT min(unit_price) AS smallestPrice 
FROM products;

--- USe MIN() with Date Column 
--- The following SQL returns the earliest Birthdate column , in the Employees Table:
SELECT min(BirthDate) AS EarliestBirthdate
FROM employees;

/* Use MIN() with GROUP BY
Here we use the MIN() function and the GROUP BY clause, to return the smallest price for each category in the Products table:   */
select min(unit_price) as smallestprice, category_id
from products
GROUP BY category_id

--- MAX()
/* The SQL MAX() Function
The MAX() function returns the largest value of the selected column.
The MAX() function works with numeric, string, and date data types
Return the highest price in the price column, in the "products" table   */
SELECT max(unit_price)
from products; --- 263.5 

/* SELECT MAX(column_name)
FROM table_name
WHERE condition;    */

--- set column Name (Alias)
/* When you use MAX() , the returned column will not have a name. 
Use the AS keyword , to give the column a descriptive name */
select max(unit_price) AS highestprice
from products;

/* Use MAX() with Date column 
The following SQK returns the Birthdate in the Birthdate column, in the Employees Table:    */
select max(BirthDate) AS lastestbirthdate
from employees; --- 1969-07-02 

/* Use MAX() with GROUP BY 
here we use the MAX() function and the GROUP BY clause , to return the highest price for each category in the products table:   */
select max(unit_price) AS highestprice, category_id
FROM products
GROUP BY category_id;

