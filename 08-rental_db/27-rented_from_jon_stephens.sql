-- display all titles that employee 'Jon Stephens' rented to customers
SELECT title
FROM film
WHERE film_id IN
	(
		SELECT film_id
		FROM inventory
		WHERE inventory_id IN
			(
				SELECT inventory_id
				FROM rental
				WHERE staff_id IN
					(
						SELECT staff_id
						FROM staff
						WHERE first_name = 'Jon' 
							AND last_name = 'Stephens'
					)
			)
	);