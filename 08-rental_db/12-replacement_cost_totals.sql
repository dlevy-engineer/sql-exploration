-- find the cost to replace all films in the database

-- counting films only once
SELECT SUM(replacement_cost) as "Aggregated Replacement Cost"
FROM film;

-- entire inventory across both stores
SELECT SUM(replacement_cost) AS "Total Replacement Cost"
FROM film
	INNER JOIN inventory ON film.film_id = inventory.film_id