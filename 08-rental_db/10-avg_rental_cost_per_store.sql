-- find the average cost to rent a film in the stores
SELECT store_id as "Store",
	AVG(rental_rate * rental_duration) AS "Average Total Cost"
FROM inventory
	INNER JOIN film ON inventory.film_id = film.film_id
GROUP BY store_id;