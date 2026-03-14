-- Sql select distinct statements
-- it is used to return only distinct values
-- in table , a column may contain many duplicates values and sometimes you only want to list the distinct values
select DISTINCT year from bmw;
SELECT DISTINCT region from bmw;
-- 2018 to 2025
-- europe , china, USA, restofworld got printed
SELECT region from bmw;
-- the data returns all the regions its not distinct 
-- count distinct values
-- by using COUNT() function with the distinct key, we can count the number of unique countries
select count(DISTINCT region)from bmw;
-- 4
