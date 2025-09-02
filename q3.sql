-- SQL query to find the Nth highest salary from the employees table
-- Replace N with the desired rank (e.g., 3 for 3rd highest salary)
SELECT 
    (
        SELECT DISTINCT salary
        FROM employees
        ORDER BY salary DESC
        LIMIT 1 OFFSET N-1
    ) AS Nth_highest_salary;
