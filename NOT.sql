--- Not in SQL
--- NOT operator is used in WHERE clause to return all records that do not match the specified criteria.
--- it reverses the result of the condition from true to False and vice-versa 
Select * from customers
where not country = 'spain';
--- In the example above, the NOT operator is used in combination with the = operator.
--- The NOT operator is also used in combination with other operators to exclude data, such as:
--- NOT LIKE
--- NOT BETWEEN
--- NOT IN
--- IS NOT NULL
--- NOT EXISTS
--- A percent sign % - represents zero, one, or multiple characters
--- A underscore sign _ - represents a single character
--- The following SQL selects all customers that do NOT start with the letter "A":
select * FROM customers
where name not like 'A%';

select * from customers
where name not like 'B_';
 -- NOt BETWEEN operator 
 -- gives the id's that are not in between the specified range 
 SELECT * from customers
 where id not between 10 and 30 ;
 -- The NOT BETWEEN operator can be used with numeric, text, or date values. 

-- NOT IN operator 
