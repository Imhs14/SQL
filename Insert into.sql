/* INSERT INTO STATEMENT 
 the INSERT INTO is used to insert the new row or record in a table
 It is possible to write the the insert into statement in 2 ways

Syntax 1 
# you have to specify the both coloumn names and the values to be inserted
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

syntax 2 
if you insert values for all the coloumn of the tables you f=can omit eh coloumn names.
however , the order of the values must be in the same order as the coloumn in the order as the coloumn in the table
INSERT INTO table_name
VALUES (value1, value2, value3, ...);

*/
 --- insert into example
 Insert into customers
 values ('cardinal','tom','skoda','lion','up','2341','seven');
 