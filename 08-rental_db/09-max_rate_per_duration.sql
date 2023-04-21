-- find rows with the maximum rental rate
SELECT rental_duration, MAX(rental_rate)
FROM film
GROUP BY rental_duration;