-- update a single record
UPDATE people
SET has_pet = true, pet_name = 'Shadowfax', pet_age = 8
WHERE id = 6;

-- examine query results to confirm
SELECT *
FROM people;