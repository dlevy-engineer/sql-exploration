-- find first and last names of customers in cities beginning with 'Q'
SELECT first_name, last_name
FROM customer
WHERE address_id IN (
	SELECT address_id
	FROM address
	WHERE city_id IN (
		SELECT city_id
		FROM city
		WHERE city LIKE 'Q%'
	)
);