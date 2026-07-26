/* The SQL SELECT INTO Statement
The SELECT INTO statement is used to create a new table and fill it with data from an existing table.

The SELECT INTO statement is useful for creating backups or for creating a temporary table for analysis.

Note: The new table will be created with the same column names and data types as defined in the source table. However, primary keys, indexes, or NOT NULL constraints are not automatically transferred.

SELECT INTO Syntax
Copy entire table into a new table:

SELECT * INTO newtable [IN external_db]
FROM sourcetable
WHERE condition;    

Copy only some columns into a new table:

SELECT column1, column2, column3, ...
INTO newtable [IN external_db]
FROM sourcetable
WHERE condition;*/

---  The following SQL creates a backup copy of the "customers" table:
CREATE TABLE CustomersBackup2026 AS 
SELECT * FROM Customers;

