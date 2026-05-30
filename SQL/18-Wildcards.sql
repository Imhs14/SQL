/* SQL Wildcard Characters
A wildcard character is used to substitute one or more characters in a string.
Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

Eg : Return all customers that starts with the letter 'a':   

Wildcard Characters
Symbol	Description
%	    Represents zero or more characters
_	    Represents a single character
[]	    Represents any single character within the brackets *
^	    Represents any character not in the brackets *
-	    Represents any single character within the specified range *
{}	    Represents any escaped character **

*   Not supported in PostgreSQL and MySQL databases.
** Supported only in Oracle databases.  */

--- for %, _ technique refer the previous lesson of LIKE , here we will start with [] topic as the above 

/* Using the [] Wildcard
The [] wildcard returns a result if any of the characters inside gets a match.
Return all customers starting with either "b", "s", or "p":     */
SELECT * FROM customers
WHERE CustomerName REGEXP '^[bsp]';
 
--- # using [^....] negation i.e the str inside the [] should not be included, if sql sees it, it won't consider it 
SELECT * FROM customers
WHERE "CustomerName" REGEXP '^[^bsp]';

--- #--------------------using [-], here if we give '[a-e]%' then sql will search in the customer name if it starts with any of these a,b,c,d,e characters, i.e a-e is the range of str from a to e.
SELECT * FROM customers WHERE `ContactName` REGEXP '^[a-e]'; --- in mysql we use REGEXP instead of LIKE for these type of cases.