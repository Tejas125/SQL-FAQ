Write a SQL query for a report that provides the following information for each person in the person table, regardless if there is an address for each of those people.
```sql
SELECT
    (SELECT DISTINCT salary
     FROM employee
     ORDER BY salary DESC
     LIMIT 1 OFFSET 1) AS second_highest_salary;
```
