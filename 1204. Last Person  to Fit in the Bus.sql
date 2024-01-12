# Write your MySQL query statement below
WITH CTE(person_id,person_name,weight,turn,total_weight) AS
(
    SELECT person_id,person_name,weight,turn,Sum(weight) Over ( Order by turn ) AS total_weight
    FROM Queue
)
SELECT person_name
FROM CTE
WHERE total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1;
