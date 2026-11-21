/* 
Question: 595. Big Countries
Topic: Database
Difficulty: Easy
*/
--- Write your MySQL query statement below
SELECT name, population, area FROM World
WHERE area >= 3000000 OR population >= 25000000;