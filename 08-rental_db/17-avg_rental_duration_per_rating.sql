-- average rental duration per rating rounded to two decimals in ascending order
SELECT rating AS "Rating",
	ROUND(AVG(rental_duration), 2) AS "Avg Rental Duration"
FROM film
GROUP BY rating
ORDER BY "Avg Rental Duration" ASC;