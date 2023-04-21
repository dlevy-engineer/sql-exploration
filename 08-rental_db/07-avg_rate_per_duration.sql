-- group by rental duration and find the average rental rate
-- use aliases
SELECT rental_duration AS "Rental Duration",
	AVG(rental_rate) AS "Avg Rental Rate"
FROM film
GROUP BY rental_duration;