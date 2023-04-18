-- change HTML rating to 90
UPDATE programming_languages
SET rating = 90
WHERE language = 'HTML';

-- visualize all to verify change
SELECT *
FROM programming_languages;