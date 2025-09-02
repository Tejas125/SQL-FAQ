Write an SQL query to report all the duplicate emails. Note that its guaranteed that the email field is not null.

SELECT email
FROM users
GROUP BY email
HAVING COUNT(*) > 1;