/* Big Countries
You are given a table called World that stores information about countries,
including their name, continent, area, population, and GDP.
A country is considered big if:
its area is at least 3,000,000, or
its population is at least 25,000,000.
Write a SQL query to return the name, population, and area of all big countries.
The result can be returned in any order. */

# Write your MySQL query statement below
select name, population, area
from World
WHERE area >= 3000000 or population >= 25000000;