/* SQL DELETE Statement 
The DELETE statement is used to delete existing records in a table 
DELETE SYNTAX :
DELETE FROM table_name WHERE condition; 
Note: Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement.
The WHERE clause specifies which record(s) should be deleted.
If you omit the WHERE clause, all records in the table will be deleted!
*/
delete from customersw3 where customername = 'Alfreds Futterkiste';

--- delete All Records 
--- it is possible to delete all records in a table , without delteting the table . 
--- this means that the table sturcture , attrributes and indexes will be intact. 
delete from demo; --- all the records are deleted but the columns remains intact. 

/* Delete a Table 
to delete the table completely, use the DROP TABLE statement: */
Drop table demo; --- this deletes the entire table , delte from table_name just deletes all the records but table stays 
--- drop table table_name will delete the entire table , it won't exists in DB 
