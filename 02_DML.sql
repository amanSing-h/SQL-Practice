use demonstration ;

create table transportation ( 
	shiop_mode varchar( 25 ),
    vechile_company varchar( 25 ),
    toll_required boolean
);

-- DML

-- Inserting the following records into the table
-- ( 'Delivery Truck', 'Ashok Leyland', false ) ;
-- ( 'Regular Air', 'Air India',false ) ;

insert into transportation value ( 'Delivery Truck', 'Ashok Leyland', false ) ;
insert into transportation value ( 'Regular Air', 'Air India',false ) ;

-- Showing the records
select * from transportation ;

-- Updating record based on some conditions
update transportation set toll_required = true ;
-- after running it will give error because we are in safe mode and we are not specifiying the row in which change to be made

-- after stopping safe mode if we execute this command then it will change all the toll_required to true for all the rows
-- updation and deletion in SQL executed in safe mode

-- updation for single row using WHERE
update transportation set toll_required = true where shiop_mode = 'Delivery Truck';
-- This will give error for safe mode too, so firstly we stop the safe mode'

-- for safe update error go to workbench preferences then go to  sql editor and then unchek the safe update and delete and then restart
-- after updation try to check the safe mode for security of your data from upation and deletion
-- this can be done by  sql command too

update transportation set toll_required = false;		-- it will change for all records

select * from transportation ;

update transportation set toll_required = true where shiop_mode = 'Delivery Truck';

select * from transportation ;


delete from transportation ; 		-- This will delete all the rows or records from the table

-- deleting a particular record from the table
delete from transportation where vechile_company = 'Air India' ; 		-- it will work if there is no records in the table also means doesn't give error

-- NOTE : Whenever we need to provide the string it has to be always inside a single quote, double quote is not allowed

-- Where command is use to filter out specific rows of a table

select * from transportation ;

-- Updating the value in a column

--  DDL query to add a new column
alter table transportation add column vechile_number varchar( 32 ) ;

-- describing the table
desc transportation ;

-- Updating the values
update transportation set vechile_number = 'MH-012345' ; -- this will update the same vechile number to all the records or rows

insert into transportation value ( 'Regular Air', 'Air India',false, 'BH-012345' ) ;

update transportation set vechile_number = 'JH-0345' where shiop_mode = 'Delivery Truck' ; -- this will update the particular row only

select * from transportation ;

insert into transportation value ( 'Delivery Truck', 'Ashok Leyland', false , 'JH' ) ; -- Now this will work too

update transportation set toll_required = true where shiop_mode = 'Delivery Truck' ;

select * from transportation ;



/*

The INSERT command was used for adding the following records to the table:
            ('DELIVERY TRUCK', 'Ashok Leyland', false)
            ('REGULAR AIR', ‘Air India', false)

The UPDATE command was used for modifying the ‘toll_required’ attribute to ‘True’ wherever ‘ship_mode’ contained the value ‘DELIVERY TRUCK’.
         Note: We have also used the WHERE command for this demonstration, which will be                    explained in detail in the next segment. The WHERE command is used to filter out specific           rows of a table.

The DELETE command was used for deleting all the rows where the ‘vehicle_company’ attribute had the value ‘AIR INDIA’.
          Note: Executing the same command without the WHERE clause will delete all the rows of             the table.

Using the ALTER command, we added a column named ‘vehicle_number’ and set its data type to varchar(32). Following this, the UPDATE command was used for updating all the records in this column to ‘MH-05-R1234’.
 

There can be additional subcategories besides DDL and DML.
 

Note: 

If you wish to view your table at any point in time, use this command:

SELECT * FROM table_name

The commands in SQL are not case-sensitive, i.e., you can use  upper case or lower case letters to write your SQL queries.



Ques: What is the difference between the ‘DROP’ and ‘TRUNCATE’ commands?

ANS: ‘DROP’ removes the table completely from the database, and you cannot retrieve the table. All the integrity constraint is removed.
On the other hand, ‘TRUNCATE’ only drops the table rows; it does not delete the schema of the table from the database.

*/

