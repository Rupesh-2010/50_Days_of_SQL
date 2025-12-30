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



