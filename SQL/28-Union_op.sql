/* SQL UNION Operator
The SQL UNION Operator

The UNION Operator is used to combine the result-set of two or more SELECT statements. 
The UNION operator automatically removes duplicate rows from the result set.

Requirements For UNION:
every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types 
The columns in every SELECT statement must also be in the same order 

UNION Syntax 
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2; 

Note: The column names in the result-set are usually equal to the column names in the first SELECT statement.

Eg : The following SQL returns the unique (distinct) countries from both the "Customers" and the "Suppliers" table: */
SELECT Country FROM customers
UNION
SELECT "Country" FROM "Suppliers"
ORDER BY "Country";
--- Note: If some customers or suppliers have the same country, each country will only be listed once, because UNION selects only distinct values. Use UNION ALL to also select duplicate values! 

/* SQL UNION with WHERE 
Here we add a WHERE clause to only return the unique German cities from both the "customers" and the "suppliers" table: */
SELECT City, Country FROM customers
WHERE "Country" = "Germany"
UNION ALL 
SELECT City, Country FROM "Suppliers"
WHERE "Country" = "Germany"
ORDER BY "City";

--- Another UNION Examples 
--- The following SQL lists all customers a suppliers:
SELECT "Customer" AS Type, ContactName, City, Country
FROM customers
UNION
SELECT "Supplier", "ContactName", "City", "Country" ---  here no need to write AS Type bcs it will take the column name from the above so if we specify it again down here it will through an error 
FROM "Suppliers";

/*
Notice the "AS Type" above - it is an alias. Aliases are used to give a column a temporary name. So, here we have created a temporary column named "Type", that list whether the contact person is a "Customer" or a "Supplier".*/