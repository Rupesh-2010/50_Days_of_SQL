-- Customers With No Transactions
-- You are given two tables: Visits and Transactions.
-- Each row in Visits shows when a customer visited the mall.
-- Each row in Transactions shows a transaction made during a visit.
-- Write a SQL query to find each customer_id and how many times that customer visited the
-- mall without making any transaction.
-- Return the result as two columns: customer_id and count_no_trans.
-- The order of the output does not matter.

# Write your MySQL query statement below

SELECT v.customer_id,
       COUNT(v.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
       ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;
