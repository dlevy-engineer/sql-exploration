-- retrieves only records of cities in California with less than 100,000 residents
SELECT *
FROM cities
WHERE state = 'California'
AND population < 100000;