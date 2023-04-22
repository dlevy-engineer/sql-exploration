-- select the average length of movies by rental rate
-- round the results to use only two decimal places
SELECT rental_rate as "Rental Rate", 
	ROUND(AVG(length), 2) AS "Average Length"
FROM film
GROUP BY rental_rate
ORDER BY "Average Length" DESC -- order by descending values
LIMIT 5; -- limit results to 5.