-- search for `artsy` and `heartfelt` in the `soft_attribute` column
SELECT *
FROM movie_words_comparison
WHERE 
	soft_attribute LIKE '%artsy%'
	OR soft_attribute LIKE '%heartfelt%';