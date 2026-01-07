/*
Authors Who Viewed Their Own Articles
You are given a table called Views that stores information about article views.
Each row shows which viewer_id viewed an article written by author_id on a specific date.
Write a SQL query to find all authors who have viewed at least one of their own articles.
Return the result as a list of unique author IDs, rename the column to id, and
sort the output in ascending order.
*/


# Write your MySQL query statement below
#SELECT * FROM Views

SELECT DISTINCT author_id AS id
FROM Views
where author_id = viewer_id
order by id ASC;

