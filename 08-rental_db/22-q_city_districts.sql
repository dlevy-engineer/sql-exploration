-- display only districts in: `Qalyub`, `Qinhuangdao`, `Qomsheh`, `Quilmes`
-- use subqueries
SELECT district
FROM address
WHERE city_id IN (
	SELECT city_id
	FROM city c
	WHERE c.city IN (
		'Qalyub',
		'Qinhuangdao',
		'Qomsheh',
		'Quilmes'
	)
);