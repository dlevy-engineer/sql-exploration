-- create a query that collects all rows where `Home Alone (1990)` is in the `reference_title` column.
SELECT *
FROM movie_words_comparison
WHERE reference_title = 'Home Alone (1990)';