/* SQL SELF JOIN 
A self Join is a regular Join, but the table is joined with itself 

SELF JOIN syntax 
SELECT coulumn_name(s) 
FROM Table1 T1, Table1 T2
WHERE condition; 

T1, T2 are the different table aliases for the same table. 

The following SQL statement matches customers that are from the same city: */

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM customers A, customers B 
WHERE A."CustomerID" <> B."CustomerID"
AND A."City" = B."City"
ORDER BY A.City;