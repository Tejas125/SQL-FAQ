Write an SQL query to find employees who have the highest salary in each of the departments.
SELECT department_id, employee_id, salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees e2
    WHERE e2.department_id = employees.department_id
);