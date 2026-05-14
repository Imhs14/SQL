--- The where clause can contain 1 or more OR operators. 
--- OR operator is used to filter based on 1 or more conditions
/* Note: The OR operator displays a record if any of the conditions are TRUE */
--- the following code selects all the customers from germany or spain:
select *from customersw3
where country = 'Germany' or country  = 'Spain' ; --- we got the data that contains both G and S 

/* the LIKE "G%" means that the string starts with G */
---  At least one condition must be true in OR 
select *from customersw3
where country = 'Germany' AND customername Like 'G%' Or country = 'Spain';

/* AND vs OR 
The  AND operator displays a record if all the conditions are TRUE 
The OR operator displays a record if any one of the conditions are TRUE */
--- Combining AND and OR 
/* in the following sql all custiomers from spain that starts with 'G' or 'R'
( very imp : Make sure to use parenthesis to get the correct result
in the below case you'll get customer from spain that starts with G plus all the customers that starts with R regardless of the country value */
select *from customersw3
where country = 'Spain' and (customername like 'G%' or customername like 'R%');

--- this is what happens when you do not use the parenthesis 
select *from customersw3
where country = 'Spain' ANd customername like 'G%' OR customername like 'R%';