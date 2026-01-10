#Product Sales Analysis
#You are given two tables: Sales and Product.
#The Sales table contains information about each product sale, including the product ID, year, and price.
##The Product table stores the product names for each product ID.
#Write a SQL query to display the product_name, year, and price for every sale in the Sales table.
#The result can be returned in any order.


# Write your MySQL query statement below
SELECT p.product_name, s.year, s.price
FROM Sales s
JOIN Product p
    ON s.product_id = p.product_id;
