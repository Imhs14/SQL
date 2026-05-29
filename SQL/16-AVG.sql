/* The SQL AVG() Function 
The AVG() function returns the average value of a numeric column
The AVG() function ignore NULL values in the column 
Find the average price of all products */
select avg(unit_price)
FROM products; --- 28.8663636363636
/* AVG() syntax 
SELECT AVG(column_name)
FROM table_name
WHERE condition; 

Add a WHERE clause 
you can add a WHERE clause to specify conditions: 
return the average rpice of products in category 1: */
SELECT avg(unit_price)
FROM products
WHERE category_id = 1; --- 37.9791666666667

--- Use an Alias , using AS keyword 
select avg(unit_price) AS averageprice --- or you can use [average price]
FROM products;

/* Higher than Average 
to list all records with a higher price then average , we can use the AVG() function in a sub query: 
returns all product with a higher price then the average price: */
SELECT * from products
WHERE unit_price > (select avg(unit_price) FROM products);

/* Use AVG() with GROUP BY
Here we use the AVG() function and the GROUP BY clause, to return the average price for EACH category in the "Products" table:*/ 
SELECT avg(unit_price) AS [Average Price], category_id
FROM products
GROUP BY category_id;

