-- select records from raters 30-40 titled "Home Alone (1990)" with a soft attribute of "artsy"
SELECT *
FROM movie_words_comparison
WHERE
	rater_id >= 30
	AND rater_id <= 40
	AND reference_title = 'Home Alone (1990)'
	AND soft_attribute LIKE '%artsy%';