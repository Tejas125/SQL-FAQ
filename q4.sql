Write an SQL query to rank the scores. The ranking should be calculated according to the following rules.

-- The score should be ranked from the highest to the lowest. 
-- If there is a tie between two scores, both should have the same ranking. 
-- After a tie, the next ranking number should be next consecutive integer value in. 
-- In other words, there should be no holes between ranks.
SELECT
    score,
    RANK() OVER (ORDER BY score DESC) AS ranking
FROM
    scores_table;

    SELECT
        score,
        DENSE_RANK() OVER (ORDER BY score DESC) AS dense_ranking
    FROM
        scores_table;