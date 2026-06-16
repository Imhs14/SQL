--- The SQL ALL operator 
/* The ALL operator is used to compare a value to every value returned by suquery. 
The ALL operator evaluates to TRUE if every value in subquery result-set meet the condition. 
The ALL operator is typically used with WHERE and HAVING statements. 

ALL Syntax
SELECT column_name(s)
From table_name
WHERE column_name operator ALL (subquery);  

Note: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).     

--------------------------start--------------------
The following SQL returns the ProductName if ALL the records in the "OrderDetails" table has Quantity equal to 10. This will of course return FALSE because the Quantity column has many different values (not only the value of 10):
*/
SELECT ProductName FROM Product
WHERE ProductID = ALL (
    SELECT ProductID
    FROM Order_details
);