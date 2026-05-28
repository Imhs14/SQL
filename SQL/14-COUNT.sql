/* The SQL COUNT() Function 
The COUNT() function returns the number of rows that matched a specified criterion 
SELECT COUNT([DISTINCT] column_name | *)
FROM table_name
WHERE condition; 

The behavior of COUNT() depends on the argument used within the parentheses:

COUNT(*) - Counts the total number of rows in a table (including NULL values).
COUNT(columnname) - Counts all non-null values in the column.
COUNT(DISTINCT columnname) - Counts only the unique, non-null values in the column.

Using COUNT(*)
The following SQL uses COUNT(*), and counts the total number of rows in the "Products" table (will include NULL values):    */
select count(*)
FROM products; --- 77

--- Using COUNT(Column_name)
--- The COUNT(Column_name) counts all non-null values in the specified column 
--- The following SQL counts all non- null vlaues of teh "productName " column:
SELECT count(product_name)
FROM products; --- 77 

/* Using COUNT(DISTINCT column_name)
You can ignore duplicates by using the DISTINCT keyword.

The COUNT(DISTINCT column_name) counts only the unique, non-null values in the column.
If DISTINCT is specified, rows with the same value for the specified column will be counted as one.
The following SQL counts the unique, non-null values of the "Price" column:     */

select count(DISTINCT unit_price)
FROM products; --- 62 

--- Add a WHERE Clause 
--- You can add a WHERE Clause to specify conditions:
--- count the number of products where price is higher then 20:
SELECT count(product_id)
FROM products
WHERE unit_price > 20; ---- 37

/* Use an Alias 
When using COUNT() , the returned column will not have a name. Use the AS keyword to give the column a descriptive name.    */
--- Name the "count" column "Number of records: "
select count(*) AS [Number OF records]
FROM products; --- 77

/* Use COUNT() with GROUP BY 
Here we use the COUNT() function and the GROUP BY clause, to return the number of records for EACH category in the "Products" table:    */
SELECT count(*) AS [Number OF records], category_id
FROM products
GROUP BY category_id; 
