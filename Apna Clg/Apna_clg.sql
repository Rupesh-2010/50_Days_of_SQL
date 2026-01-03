create database Rupesh_SQL;		-- Creating the New DB

create database Temp1; 		-- Creating the New DB
drop database temp1;		-- Delete the DB

use Rupesh_SQL;

create table List(

	id int primary key,
    name varchar(50),
    age int not null
);

insert into student values (1, "Rupesh", 25);
insert into student values (2, "ABC", 5);

Select * from student;

SHOW DATABASES;
SHOW TABLES;

Create Table Emp (
	id int,
    salary int default 25000);
    
insert into Emp (id) values (101);
select * from Emp;

###################################3

INSERT INTO list
(id, name, age) 		-- parameters as decided. this is imp.
values
(101, "R",2),
(102, "D",9),
(103, "F",8);
select * from list;



#1.50



















