-- group by rating and aggregate the film_id count
SELECT rating as "Rating",
	COUNT(film_id) AS "Total Film Count"
FROM film
GROUP BY rating;