/* ## The MYSQL CASE Statement 
The CASE statement is used to define different results based on specified conditions in an SQL statement 

The CASE statement goes through the conditions and stops at first match (like an if-then-else statement). so, once a condition is true, it will stop processing and return the result. if no conditions are true , it returns the value in ELSE Clause. id there is no ELSE clause and no conditions are true , it returns NULL.

CASE SYNTAX 
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

MySQL CASE Example
Here we use the CASE estatement to categorize data(Price) and we create a new column(PriceCategory) that shows in which price category each product is:
*/
SELECT product_name, "UnitPrice",
CASE
    WHEN unit_price < 20 THEN 'Low cost'
    WHEN unit_price BETWEEN 20 AND 50 THEN 'Medium Cost'
    ELSE 'High Cost'
END AS PriceCategory
FROM "products";