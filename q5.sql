-- Write an SQL query to find all numbers that appear at least three times consecutively. Return.

SELECT DISTINCT num
FROM (
    SELECT num,
           LAG(num, 1) OVER (ORDER BY id) AS prev1,
           LAG(num, 2) OVER (ORDER BY id) AS prev2
    FROM numbers
) t
WHERE num = prev1 AND num = prev2;