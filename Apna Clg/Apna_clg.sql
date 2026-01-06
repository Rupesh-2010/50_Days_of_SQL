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

## Foreign key

CREATE TABLE Depta(
	id INT PRIMARY KEY,
    NAME VARCHAR(50)
);

CREATE TABLE Teacher(
	roll_num INT PRIMARY KEY,
    NAME VARCHAR(50),
    dept_id int,
    foreign key(dept_id) references Depta(roll_num)
    on update cascade #if changes in table it will automaticlly changes in another table.
    on delete cascade #if delete in table it will automaticlly delete in another table.
);

#############################Table related Queries- alter

SELECT * FROM student;

alter table student
add column Marks int;  # add column in a table

alter table student
drop column marks;		#delete the table.

alter table student
RENAME TO stud;			# Rename the table name.

alter table stud
RENAME TO student;		# Rename the table name.

alter table student
change column age Age int;			#Change the column name in the table. 

SELECT * FROM student;

alter table student
modify column Age varchar(2);		#CHANGEING THE CONSTRAINT.

insert into student
values(3,"AP",98); 

UPDATE student			#Update the age in the column. 
set Age = 98
WHERE id = 3;






