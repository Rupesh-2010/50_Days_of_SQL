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

############################# Joints

# inner join.
# Retrun the records that have matching values in both tables.

create table Course(
	id int primary key,
    course varchar(40)
);

insert into Course
values (1, "Engllish"), (2, "Maths"), (3, "Sci");  #updated cousre id = 3 to 10.
insert into Course values (3, "CS");

update Course
SET id = 10			# update the course id 3 to 10
where id = 3;


select * from student;
select * from Course;


select *
from student
inner join Course
on student.id = Course.id;   #Inner joiin # now wee'll get only 2 id, coz 3rd id is 10 not 10
									# (we update the id above.)

			# Left Join.
		# it return all the Rows from left table and from right table only matching values are return 
        # if there no one is matching from right table than it return the NULL. 
	
select *
FROM student as S
LEFT JOIN course as C
ON S.id = C.id;

select *
FROM course as C
LEFT JOIN student as S		#         # if there no one is matching from right table than it return the NULL. 
ON C.id = S.id;

			# Right Join.
		# it return all the Rows from Right table and from left table only matching values are return 
        # if there no one is matching from left table than it return the NULL. 
	
select *
FROM student as S
RIGHT JOIN course as C
ON S.id = C.id;

			# FULL JOIN. 
            
SELECT * 
FROM student as S
LEFT JOIN course as C
ON S.id = C.id
union			#FOR FULLL JOIN. 
SELECT * 
FROM student as S
RIGHT JOIN course as C
ON S.id = C.id


2.53










