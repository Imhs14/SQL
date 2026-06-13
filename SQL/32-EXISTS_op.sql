/* The SQL EXISTS Operator

The EXISTS operator is used in a WHERE clause to check whether a subquery returns any rows.
The EXISTS operator evaluates to TRUE if the subquery returns at least one row, and FALSE otherwise.

EXISTS Syntax
SELECT column_name(s)
FROM table_name
WHERE EXISTS (subquery);    

SQL EXISTS Examples
The following SQL checks if any suppliers has a product with a price lower than 10. If the subquery evaluates to TRUE; list the suppliers with a product price less than 10:    */
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (
    SELECT ProductName
    FROM "Product"
    WHERE "Product"."SupplierID" = "Suppliers"."SupplierID" AND "UnitPrice" < 10 
);
/* Here is how the code breaks down step-by-step:
SELECT SupplierName FROM Suppliers
"Go to the Suppliers list and get ready to read me their names..."

WHERE EXISTS (
"...but wait, only read me their name if they pass the following test:"

SELECT ProductName FROM "Product"
"Go look at the Products list..."

WHERE "Product"."SupplierID" = "Suppliers"."SupplierID"
"...find the products that are supplied by the specific company we are currently checking..."

AND "UnitPrice" < 10 );
"...and see if any of those products have a price tag under $10."

If the database finds even one product under $10 for that supplier,
the EXISTS test passes, and the database prints out the supplier's name.
If all of their products are $10 or more, it skips them and moves to the next supplier!     */


--- The following SQL checks if any SUppliers has a product with a price equal to 22. if the subquery evaluetes to TRUE; list the suppliers with a product price equal to 22:
SELECT SupplierName 
FROM Suppliers
WHERE EXISTS (
    SELECT "ProductName"
    FROM "Product"
    WHERE Product."SupplierID" = "Suppliers"."SupplierID" AND "UnitPrice" = 22
);