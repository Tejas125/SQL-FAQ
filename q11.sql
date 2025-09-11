# Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest ID. Note that you are supposed to write a delete statement and not a select one.
DELETE FROM Person
WHERE id NOT IN (
    SELECT MIN(id)
    FROM Person
    GROUP BY email
);
After running your script, the answer shown is the person table. The driver will first compile and learn your piece of code and then show the person table. The final order of the person table does not matter.
-- No further code is needed; the DELETE statement above completes the task.