-- top 10 average replacement costs for movies, grouped by length
SELECT length AS "Length",
	ROUND(AVG(replacement_cost)) AS "Avg Replacement Cost"
FROM film
	INNER JOIN inventory ON film.film_id = inventory.film_id
GROUP BY "Length"
ORDER BY "Avg Replacement Cost" DESC
LIMIT 10;