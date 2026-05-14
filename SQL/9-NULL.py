/* What is a Null Value ?
if a field in a table is a optional , it is possible to insert or update that fiel without adding any value in it. 
in such cases we place NULL there indicating a unknown, missing or inapplicable data in a database field. 
it not a vlaue itself but it is a placeholder indicating absence  of data. */
--- How to test for NULL values? 
/* it is not posibble to test for Null values with comparsion operators, such as =,<,or <>
we have to use IS NULL and IS NOT NULL operators instead. 
SYNTAX : IS NULL
SELECT column_name
FROM table_name
WHERE column_name IS NULL;
SYNTAX : IS NOT NULL
SELECT column_name
FROM table_name
WHERE column_name IS NOT NULL;
*/

--- The IS NULL operator is used to test for empty values (NULL values).
select customername, contactname ,address
from customersw3
where address IS NULL ; --- Gives output when Null values are present 
--- always use IS NULL to check for null values 

--- THE IS NOT NULL operator 
--- IS NOT NULL  operator is used to test for non-empty values (NOT NULL VALUES)
select customername, contactname,address 
from customersw3
where address IS NOT NULL; --- return values that do not contain null values 
