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
Write a query to find pairs of different orders placed by the same customer.
Return CustomerID, OrderID as Order1, and the other OrderID as Order2
*/
SELECT A.CustomerID, A.OrderID AS Order1, B.OrderID AS Order2
FROM Orders A, Orders B
WHERE A.CustomerID = B.CustomerID AND A.OrderID < B.OrderID; --- when we compare two distinct ID's, one is guranteed to be mathematically smaller than other (1<2),
-- By enforcing hthe Order1 < order2 we instantly solve two problems we will not have (1,2) and (2,1) pairs here (2,1) is the duplicate we eliminate that one.
-- using distinct keyword won't do anything here (Issue: Since there is no filter preventing an order from matching with itself, every order pairs with itself (where A.OrderID = B.OrderID). Additionally, without a inequality condition, you will get duplicate swapped pairs (e.g., both (Order 1, Order 2) and (Order 2, Order 1)).
-- Fix: Use < to ensure distinct orders and eliminate reversed duplicates:)

/*
Question 2: Find Orders Placed on the Exact Same Date by Different Customers
Write a query to find all pairs of distinct orders that were placed on the exact same OrderDate, but by different customers.
Return OrderDate, OrderID (Order 1), and OrderID (Order 2).
*/
SELECT A.OrderDate, A.OrderID AS Order1, B.OrderID AS Order2
FROM Orders A, Orders B
WHERE A.OrderDate = B.OrderDate AND A.CustomerID <> B.CustomerID
AND A.OrderID < B.OrderID; --- Same logic as the above we've used 

/*
Question 3: Find Repeat Orders Within 7 Days
Write a query to find orders where a customer placed a subsequent order within 7 days of a previous order. 
Return CustomerID, FirstOrderID, FirstOrderDate, SecondOrderID, and SecondOrderDate.
*/

SELECT A.CustomerID, A.OrderID As FirstOrderID, A.Orderdate AS FirstOrderDate, B.OrderID AS SecondOrderID, B.Orderdate AS SecoundOrderDate
FROM Orders A, Orders B
WHERE A.CustomerID = B.CustomerID AND A.OrderDate > B.OrderDate
AND DATEDIFF(B.OrderDate,A.OrderDate) <= 7;

/*
Question 4: Find Orders Handled by Different Employees for the Same Customer
Write a query to find pairs of orders placed by the same customer but handled by different employees.
Exclude duplicate reversed pairs (so if Order 101 & 105 are matched, don't also list 105 & 101).
*/

SELECT A.CustomerID, A.OrderID AS Order1, B.OrderID AS Order2
FROM Orders A,Orders B
WHERE A.CustomerID = B.CustomerID
AND A.EmployeeID <> B.EmployeeID
AND A.OrderID < B.OrderID;

/*
Question 5: Find Consecutive Orders Handled by the Same Shipper
Write a query to find all pairs of orders handled by the same shipper (ShipperID) where Order B was placed after Order A. 
Ensure each pair is listed only once.
*/

SELECT A.ShipperID AS Shipper, A.OrderID AS Order1, B.OrderID AS ORder2
FROM Orders A, Orders B
WHERE A.ShipperID = B.ShipperID AND A.OrderDate < B.OrderDate AND A.OrderID < B.OrderID;

SELECT 
    A.ShipperID, 
    A.OrderID AS Order1, 
    A.OrderDate AS Order1Date,
    B.OrderID AS Order2,
    B.OrderDate AS Order2Date
FROM Orders A, Orders B
WHERE A.ShipperID = B.ShipperID
  AND (A.OrderDate < B.OrderDate 
        OR (A.OrderDate = B.OrderDate AND A.OrderID < B.OrderID));