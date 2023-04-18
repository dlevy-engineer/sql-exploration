-- query with a filter of `pet_type` is dog and `pet_age` is under 5 years
-- only retrieve pet detail columns
SELECT pet_type, pet_name, pet_age
FROM people
	WHERE pet_type = 'dog'
	AND pet_age < 5;