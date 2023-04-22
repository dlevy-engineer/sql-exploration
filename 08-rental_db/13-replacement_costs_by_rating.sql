-- find cost to replace all films in each ratings category

-- counting films only once
SELECT rating AS "Rating",
	SUM(replacement_cost) AS "Aggregated Replacement Cost"
FROM film
GROUP BY rating;

-- entire inventory across both stores
SELECT rating AS "Rating",
	SUM(replacement_cost) AS "Total Inventory Replacement Cost"
FROM film
	INNER JOIN inventory ON film.film_id = inventory.film_id
GROUP BY rating;