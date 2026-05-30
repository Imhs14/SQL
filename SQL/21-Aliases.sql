/* SQL Aliases
An alias is created with the AS keyword, and is often used to make a column name more readable.
An alias only exists for the duration of that query.

Alias for Columns
The following SQL creates two aliases, one for the CustomerID column and one for the CustomerName column:

Alias For column 
SELECT column_name AS alias_name
FROM table_name;

Alias for table:

SELECT column_name(s)
FROM table_name AS alias_name;  */

SELECT CustomerID AS IDs, CustomerName AS Customer 
FROM customers;

/* Aliases with Spaces
If you want your alias to contain one or more spaces, like "My Great Products", surround the aliasname with square brackets or double quotes:   */
--- Using [square brackets] for aliases with space characters:
SELECT ContactName AS [The Boys]
FROM customers; 

---- OR 
--- Using "double quote" for aliases with space characters:
SELECT product_name AS "My Greatest Products"
FROM products;

/* Concatenate Columns
The following SQL creates an alias named "Address" that combine four columns (Address, PostalCode, City and Country):   */
SELECT CustomerName , CONCAT(Address ,', ' , PostalCode , ' ' , City , ', ' ,
Country) AS Address
FROM customers;

--- #------------------------------Alias For Tables--------------
---- the same rules applies when you want ot use an alias for a table.
--- refer to the custoers table as prson instead:
SELECT * FROM customers AS Persons;
/* It might seem useless to use aliases on tables, but when you are joining tables, it makes sense.

In the following example, c is the alias for customers and o is for orders, making the query shorter and easier to read:    */

SELECT c.CustomerName , o.OrderID
FROM customers AS c 
JOIN orders AS o ON c.CustomerID = o.CustomerID;

/* Aliases are useful when:

There are more than one table involved in a query
Functions are used in the query
Column names are long or not very readable
Two or more columns are combined together   */