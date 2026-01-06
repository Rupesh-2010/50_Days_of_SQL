/* You are given a table called Customer with columns id, name, and referee_id.
Each row shows a customer and the customer who referred them.
Write a SQL query to find the names of customers who were not referred by customer with id = 2,
or who were not referred by anyone at all (referee_id is NULL).
Return only the name column. The order of results does not matter.*/

# Write your MySQL query statement below

SELECT name
FROM Customer
WHERE referee_id IS NULL
   OR referee_id != 2;
