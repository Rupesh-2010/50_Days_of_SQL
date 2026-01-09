# Employee Unique ID Mapping

# You are given two tables: Employees and EmployeeUNI.
#The Employees table contains the list of all employees.
#The EmployeeUNI table contains the unique IDs for some employees.
#Write a SQL query to display each employee’s name along with their unique_id.
#If an employee does not have a unique ID, show NULL instead.
#The result can be returned in any order.

# Write your MySQL query statement below

SELECT eu.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eu
    ON e.id = eu.id;
