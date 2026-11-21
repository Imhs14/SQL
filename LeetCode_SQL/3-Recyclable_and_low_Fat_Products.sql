/* 
Question: 1757. Recyclable and Low Fat Products
Topic: Database
Difficulty: Easy
*/
--- Write your MySQL query statement below
SELECT product_id FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';