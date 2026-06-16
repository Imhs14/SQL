/* The SQL ANY Operator 
The ANY operator is used to compare a value to every value returned by a subquery. 
The ANY operator evaluates to TRUE if at least one value in the subquery result-set meet the conditio. 

ANY syntax 
SELECT Column name(S)
From table name
WHERE column_name operator ANY (subquery); 

Note the operator must be a standard comparision operator (=, <>, !=, >, >=, <, <=). 

SQL ANY Examples 
The following SQL returns the ProductName if it finds ANY records in the "Order_Details" table that has Quantity equal to 10( This will return TRUE because the Quabtuty column has some values of 10): */

SELECT ProductName FROM Product 
WHERE ProductID = ANY (
    SELECT ProductID 
    FROM Order_details 
    WHERE Quantity > 99
);

/* The following SQL returns the ProductName if it finds ANY records in the "OrderDetails" table that has Quantity larger than 1000 (this will return FALSE because the Quantity column has no values larger than 1000):    */

--- The following SQL returns the ProductName if it finds ANY records in the "OrderDetails" table that has Quantity larger than 1000 (this will return FALSE because the Quantity column has no values larger than 1000):

SELECT ProductName FROM Products
WHERE ProductID = ANY (
	SELECT ProductID
    FROM OrderDetails
    WHERE Quantity > 1000 
);