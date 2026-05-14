/* This is used to insert new records into the table  
INSERT INTO can be in done in two ways i.e 
syntax 1 

specify the both column names and values to be inserted 

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

syntax 2

INSERT INTO table_name 
VALUES (value1, value2, value3)

 # INSERT INTO */
 --- INSERT INTO myowncsv (sno,model, company, horsepower, rating)
 --- VALUES ('3','sf90','ferrari','100','7'); this is how we insert 1 row of data 
 --- now let us insert multiple rows of the data
 insert into myowncsv (sno, model, company , horsepower, rating)
 VALUES 
 ('4', 'bronco','ford', '300', '9'),
 ('5','civic','honda',200,'8'),
 ('6','5 serise','BMW','250','8'),
 ('7','M 340i','BMW',345,10);
select *from myowncsv;