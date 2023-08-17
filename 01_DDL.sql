-- DDL

-- Creating Database

create database demonstration ;

-- Using Database

use demonstration ;

-- Create table

create table Customers (

-- Each of the name should be followed by type and the constraint if applicable

	ID int not null ,		-- added a constraint not null
    NAME varchar(32) not null ,
    time timestamp default current_timestamp not null ,		-- It will automatically set the default time at which the record is added
    age int ,
    address varchar(32) ,
    salary int
) ;

desc Customers ;		-- describing the table

-- Alter table :

-- Add primary key
alter table Customers add constraint primary key ( ID ) ;

-- Suppose in the 'customers' table, you want to define the composite primary, which is comprised of the 'ID' and the 'NAME' columns
-- Type: DDL
alter table Customers add constraint primary key ( ID , NAME ) ; 

desc Customers ;

-- Add a new columns
alter table Customers add column Employer varchar( 32 ) ;

desc Customers;

-- Drop Commands :

-- Droping column
alter table Customers drop column Employer ;

desc Customers ;

-- Droppitng table
drop table Customers ;		-- Once it's done then this operation cannot be undone, once executed can't be reversed

-- Dropping the database
drop database demonstration ;



/*

We can add primary key like this at the time of creating the table

create table moblile_phone (
mobile_phone_Id int,
camera varchar(32),
ram int,
memory varchar(32),
Primary Key(mobile_phone_Id)
);

desc moblile_phone;

*/
