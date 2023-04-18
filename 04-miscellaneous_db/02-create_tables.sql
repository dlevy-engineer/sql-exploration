-- drop `movie_words_comparison` table if it already exists
DROP TABLE IF EXISTS movie_words_comparison;

-- create the `movie_words_comparison` table
CREATE TABLE movie_words_comparison (
	rater_id INT,
	reference_title VARCHAR,
	soft_attribute VARCHAR,
	less_than VARCHAR,
	about_as VARCHAR,
	more_than VARCHAR
);

-- visualize columns and data types prior to import
SELECT *
FROM movie_words_comparison;