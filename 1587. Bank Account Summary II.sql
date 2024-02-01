# Write your MySQL query statement below
SELECT u.name,COALESCE(SUM(t.amount),0) as balance
FROM Users u
INNER JOIN
Transactions t
ON u.account = t.account
GROUP BY t.account
HAVING balance > 10000

