-- get country counts from `city` table
SELECT country.country, 
	COUNT(country.country) AS "Country Count"
FROM city
	INNER JOIN country ON city.country_id = country.country_id
GROUP BY country
ORDER BY "Country Count" DESC;