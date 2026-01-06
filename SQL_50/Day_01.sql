/* You are given a table named Products that contains product information.
Each product has a product_id, a flag showing whether it is low fat, 
and a flag showing whether it is recyclable. Both flags contain either 'Y' or 'N'.
Write a SQL query to find the product_id of all products that are both low fat and recyclable.
Return only the product_id column. The order of the result does not matter. */

# Write your MySQL query statement below

SELECT product_id
FROM Products
WHERE low_fats = 'Y' 
  AND recyclable = 'Y';
