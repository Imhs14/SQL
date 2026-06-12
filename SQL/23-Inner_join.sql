/* SQL INNER JOIN 
The INNER JOIN  returns only rows that have matching values in both tables. 
Tip: you can use just JOIN instead of INNER JOIN , as INNER is the default JOIN type. 

INNER JOIN Syntax
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
*/
--- Note : The Syntax combines two tables based on related column, and the ON keyword is used to specify the matching condition. 
/* Here we see that the related column between the two tables above, is the "CategoryID" column.
Now we create an INNER JOIN on the "Products" table and the "Categories" table, via the CategoryID field:   */
SELECT ProductID, ProductName, CategoryName
From "Product"
INNER JOIN "Categories" ON "Product"."CategoryID" = "Categories"."CategoryID"; "CategoryID";

/* Note: INNER JOIN returns only rows with a match in both tables. This means that if there is a product with no CategoryID, or with a CategoryID not present in the Categories table, that row will not be returned in the result. */

--- Naming The Columns
--- It is a good practice to also include the table name when specifying columns in SQL in SQL joins:
--- Add table name in front of column names: Product.ProductID like this we add the name of the table before the name of the column name 
SELECT "Product"."ProductName", "Product"."ProductID", "Categories"."Description", "Categories"."CategoryName"
FROM "Product"
INNER JOIN "Categories" ON "Product"."CategoryID" = "Categories"."CategoryID";

/* The example above works without specifying table names, because none of the specified column names are present in both tables. However, if you add the CategoryID column in the SELECT statement, an error occurs, if you do not specify the table name. This is because the CategoryID column is present in both tables.    */

--- JOIN or INNER JOIN 
/* JOIN and INNER JOIN will return the same result. 
INNER is the default join type for JOIN, so when you write JOIN the parser actually writes INNER JOIN.  */ 
SELECT Product."ProductID" , "Categories"."CategoryID", "Product"."ProductName", "Categories"."CategoryName"
FROM "Product"
JOIN "Categories" ON "Product"."CategoryID" = "Categories"."CategoryID";

---  JOIN Multiple Tables 
/* You can join more than two tables by adding multiple INNER JOIN clauses in your query. 
The following SQL selects all orders with customer and shipper information: */
SELECT orders."OrderID", customers."CustomerID", "Shippers"."ShipperName"
FROM orders
INNER JOIN customers ON orders."CustomerID" = customers."CustomerID"
INNER JOIN "Shippers" ON orders."ShipperID" = "Shippers"."ShipperID"; 
