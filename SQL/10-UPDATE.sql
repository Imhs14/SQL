/*SQL UPDATE 
The SQL UPDATE statement is used to update or modify one or more records in a table 
UPDATE SYNTAX :

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

Note: Be careful when updating records in a table! Notice the WHERE clause in the UPDATE statement. 
The WHERE clause specifies which record(s) that should be updated.
If you omit the WHERE clause, all records in the table will be updated!
*/
--- Update Table 
--- The following SQL updates the record with customerID  = 1, with a new contact person AND a new city. 
update customersw3
set contactname = 'bruce', city = 'goutham'
where customerid = 1;

--- Update multiple records 
update customersw3
set contactname = 'steve Rogers'
where country = 'USA';

--- UPDATE Warning !
--- be careful when updating records. if you omit the WHERE clause, all records will be updated ! 
Update customersw3
set contactname = 'john goldberg'; ---  all the contact name changes to the john goldberg
SELECT *from customersw3;
