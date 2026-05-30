/* The SQL IN Operator
The IN operator is used in the WHERE clause to check if a specified column's value matches any value within a provided list.
The IN operator functions as a shorthand for multiple OR conditions, making queries shorter and more readable.
The following SQL uses the IN operator to select all customers from Germany, France, or UK:     */
SELECT * FROM customers
WHERE "Country" IN ('Germany', 'France', 'UK');

