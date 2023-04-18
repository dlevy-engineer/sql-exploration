-- change the name of the 'JS' language to 'JavaScript'
UPDATE programming_languages
SET language = 'JavaScript'
WHERE language = 'JS';

-- visualize all to verify the change
SELECT *
FROM programming_languages;