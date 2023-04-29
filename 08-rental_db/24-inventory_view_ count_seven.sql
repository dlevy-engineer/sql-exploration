-- get # of copies in the inventory for all titles
-- use a subquery instead of a join
SELECT title AS "Title",
	(SELECT COUNT(inventory.film_id)
	 FROM inventory
	 WHERE film.film_id = inventory.film_id) AS "Number of Copies"
FROM film;

-- create a view named `title_count` from the above query
CREATE VIEW title_count AS
SELECT title AS "Title",
	(SELECT COUNT(inventory.film_id)
	 FROM inventory
	 WHERE film.film_id = inventory.film_id) AS "Number of Copies"
FROM film;

-- query the newly created view to find all the titles that have 7 copies
SELECT *
FROM title_count
WHERE "Number of Copies" = 7;