-- find the longest movie(s) in the database
SELECT title, length
FROM film
WHERE length = (SELECT MIN(length) FROM film);

-- find the shortest movie(s) in the database
SELECT title, length
FROM film
WHERE length = (SELECT MAX(length) FROM film);