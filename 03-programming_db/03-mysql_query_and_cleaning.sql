-- query `programming_languages` to return the rows containing 'MySQL'
SELECT *
FROM programming_languages
WHERE language = 'MySQL';

-- delete duplicates
DELETE FROM programming_languages
WHERE id = 4;

-- repeat the query to verify deletion
SELECT *
FROM programming_languages
WHERE language = 'MySQL';