/* 
Question: 584. Find Customer Referee
Topic: Database
Difficulty: Easy
*/
SELECT name FROM Customer
WHERE referee_id IS NULL OR referee_id <> 2;