-- drop view
DROP VIEW sales_by_store;

-- create a view that monitors the total sales from each store
CREATE VIEW sales_by_store AS
SELECT s.store_id AS "Store ID",
	SUM(p.amount) AS Gross
FROM payment p
	JOIN rental r 
	ON p.rental_id = r.rental_id
		JOIN inventory i 
		ON r.inventory_id = i.inventory_id
			JOIN store s 
			ON i.store_id = s.store_id
GROUP BY s.store_id
ORDER BY s.store_id;

-- visualize the view
SELECT *
FROM sales_by_store;