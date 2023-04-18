-- create a query that collects all rows where the rater is within the 10-15 range.
SELECT *
FROM movie_words_comparison
WHERE 
	rater_id >= 10
	AND rater_id <= 15;