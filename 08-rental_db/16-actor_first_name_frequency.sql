-- Determine actor first name count in descending order
SELECT first_name AS "First Name", 
	COUNT(*) AS "Frequency Count"
FROM actor
GROUP BY first_name
ORDER BY "Frequency Count" DESC;