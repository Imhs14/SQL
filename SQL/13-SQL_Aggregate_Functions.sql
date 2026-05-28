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

