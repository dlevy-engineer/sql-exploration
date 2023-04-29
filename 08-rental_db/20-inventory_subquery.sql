-- take a look at the inventory of the film 'EARLY HOME'

-- first, without a subquery
-- grab the `film_id`
SELECT title, film_id
FROM film
WHERE title = 'EARLY HOME';

-- use the `film_id` to retrieve related info from
SELECT *
FROM inventory
WHERE inventory_id = 268;

-- perform a join to display the relevant information
SELECT i.inventory_id, i.film_id, i.store_id
FROM inventory i
JOIN film f
	ON i.film_id = f.film_id
WHERE f.title = 'EARLY HOME';


-- then with a subquery to simplify
-- we can perform all of the tasks in the three queries above in a single query
SELECT *
FROM inventory
WHERE film_id IN (
	SELECT film_id
	FROM film
	WHERE title = 'EARLY HOME'
)