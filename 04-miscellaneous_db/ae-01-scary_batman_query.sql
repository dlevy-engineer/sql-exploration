-- select records titled "Batman (1989)" with a soft attribute of "scary"
SELECT *
FROM movie_words_comparison
WHERE 
	reference_title = 'Batman (1989)'
	AND soft_attribute LIKE '%scary%';