-- find average rental cost by film rating
-- on average, what film rating is the cheapest?
-- what rating is the most expensive?
SELECT rating AS "Rating",
	AVG(rental_rate) AS "Average Rental Cost"
FROM film
GROUP BY rating
ORDER BY AVG(rental_rate) DESC;