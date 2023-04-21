-- find rows with the minimum rental rate
SELECT rental_duration, MIN(rental_rate)
FROM film
GROUP BY rental_duration;