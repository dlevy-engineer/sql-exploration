-- drop a single duplicate record based on UID
DELETE FROM people
WHERE id = 3;

-- visualize query results to confirm
SELECT *
FROM people