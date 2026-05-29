/* The SQL LIKE Operator
The LIKE operator is used in a WHERE clause to search for a specified pattern within a column's text data.

There are two wildcards often used in conjunction with the LIKE operator:

A percent sign % - represents zero, one, or multiple characters
A underscore sign _ - represents a single character
The following SQL selects all customers that starts with the letter "a":

Select all customers that starts with the letter "a":   */
SELECT * FROM customers
WHERE CustomerName LIKE 'a%'; --- its a letter or phrase , use the % after the phrase eg: 'hg%'

/*  SELECT column1, column2, ...
    FROM table_name
    WHERE columnN LIKE pattern;     */

--- #------The % wildcard represents any number of characters, even zero characters.--------------------------------

SELECT * FROM customers
WHERE customerName LIKE '%on%'; --- for sequence matching we use doouble % at start and end of the str


---- #--------------The _ wildcard represents one single character. -----------------------------
--- #------------It can be any character or number, but each _ represents one, and only one, character.-----------------------
---- #-----------Return all customers from a City that starts with 'l' followed by one wildcard character, then 'nd' and then two wildcard characters:-------------------------
SELECT * FROM customers
WHERE City LIKE 'l_nd__';

--- #----------------Starts with---------------------------------------------------------------------------------------
---- # To return records that starts with a specific letter or phrase, add the % at the end of the letter or phrase.
SELECT * FROM customers
WHERE "City" LIKE 'Lo%'; --- you can either specify the city inside the quotes or without the quotes 

---- Tip: You can also combine any number of conditions using AND or OR operators.
SELECT * FROM customers
WHERE "CustomerName" LIKE 'a%' OR "CustomerName" LIKE 'b%'; --- here it doesn't care the upper or lower cases 

/* #--------------------------Ends With----------------------------------------------------------------------------------
To return records that ends with a specific letter or phrase, add the % at the beginning of the letter or phrase.
Return all customers that ends with 'a':    */
SELECT * FROM customers
WHERE "CustomerName" LIKE '%n'; -- name that ends with n

---- Tip: You can also combine "starts with" and "ends with":
--- Return all customers that starts with "b" and ends with "s":
SELECT * FROM customers
WHERE "CustomerName" LIKE 'b%s';

/* Contains
To return records that contains a specific letter or phrase, add the % both before and after the letter or phrase.
Return all customers that contains the phrase 'or'  */
select * from customers
where "ContactName" LIKE '%or%';

/* Combine Wildcards
Any wildcard, like % and _ , can be used in combination with other wildcards.


Return all customer that starts with "a" and are at least 3 characters in length */
SELECT * FROM customers 
WHERE "ContactName" LIKE 'a___%';

--- Return all customers that have "r" in the second position:
SELECT * FROM customers
WHERE "ContactName" LIKE '_r%'; 

/* Without Wildcards
If no wildcard is specified, the phrase has to have an exact match to return a result.  */
SELECT * FROM customers
WHERE "Country" LIKE 'spain'; 

