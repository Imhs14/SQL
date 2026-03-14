-- where clause
-- The where clause is used to filter the records
-- The where clause is used to extract only those records that fulfill a specific condition
select * from bmw -- here no ; semi colon should be used 
where region = 'Europe';
-- where clause is not only used in select but it is also used in update, delete etc.. 
-- Text Feilds vs Numeric Fields
SELECT * from bmw
where year >2022;

-- operators in the where clause 
-- = , > , < ,<= ,>= , >< or != (depends what you use)its not equal 
-- BETWEEN 	(Between a certain range) , LIKE (search a pattern) , 
-- IN -> to specify multiple possible for a column

-- using BETWEEN 
select * from bmw
where year BETWEEN 2024 AND 2025;

-- using Like clause 
select * from bmw
where region LIKE 'e%';

-- Using IN clause 
select model, region from bmw
where model IN ('X3','X5');