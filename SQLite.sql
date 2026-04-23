--- The NOT operator is used in Where clause it returns 
--- it will remove the specified criteria and will return the rest 
--- basically it will make the TRUE to False and vise verca
select *from customers
where not country = 'USA'; --- in the country where there is USA in country that is removed 

/* SELECT column1, column2, ...
FROM table_name
WHERE NOT condition; */

--- Using NOT LIKE
/* NOT LIKE used to exclude the row that matches the specified character pattern 
there are 2 wild card conjunction used with not like operator 
% represents Zero, one or multiple characters 
_ and underscore sign represents a single character */

select * from bmw
where model not like 'X3%';

/* using the NOT BETWEEN operator in WHERE clause
To select rows where a value fails outside the specified inclusive range */
--- it selects all the customer id except from 2-8 
select * from customers
where id not between 2 and 8;

--- using NOT IN 
/* this will exclude the rows that match any value in a specified list or subquery result set */

select *from bmw
where region not in ('Europe', 'France');
--- it will not select the region i.e in the list above 

--- it will not select the year that is greater then 2020
select * from bmw
where not year > 2020 ;

--- it will 
select * from bmw
where not year < 2023;

