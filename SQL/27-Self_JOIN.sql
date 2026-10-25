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

SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;

-- Practice 
/*
Question 1: Find Orders Placed by the Same Customer
Write a query to find pairs of different orders placed by the same customer. Return CustomerID, OrderID as Order1, and the other OrderID as Order2
*/
SELECT A.CustomerID, A.OrderID AS Order1, B.OrderID AS Order2
FROM Orders A, Orders B
WHERE A.CustomerID = B.CustomerID AND A.OrderID < B.OrderID;

SELECT A.OrderDate, A.OrderID AS Order1, B.OrderID AS Order2
FROM Orders A, Orders B
WHERE A.OrderDate = B.OrderDate AND A.CustomerID <> B.CustomerID
AND A.ORderID < B.OrderID;

SELECT A.CustomerID, A.OrderID As FirstOrderID, A.Orderdate AS FirstOrderDate, B.OrderID AS SecondOrderID, B.Orderdate AS SecoundOrderDate
FROM Orders A, Orders B
WHERE A.CustomerID = B.CustomerID AND A.OrderDate > B.OrderDate;