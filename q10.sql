-- A company's executive are interested in seeing who has the most money in each of the company's department. 
-- A higher earner in the department is an employee who has a salary in the top three unique salaries for the department.

SELECT department_id, employee_id, salary
FROM (
    SELECT 
        department_id,
        employee_id,
        salary,
        DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS salary_rank
    FROM employees
) ranked
WHERE salary_rank <= 3
ORDER BY department_id, salary DESC;