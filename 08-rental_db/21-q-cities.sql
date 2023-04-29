-- list names and ID numbers from: `Qalyub`, `Qinhuangdao`, `Qomsheh`, `Quilmes`
-- use subqueries
SELECT city, city_id
FROM city
WHERE city IN (
	'Qalyub',
	'Qinhuangdao',
	'Qomsheh',
	'Quilmes'
);