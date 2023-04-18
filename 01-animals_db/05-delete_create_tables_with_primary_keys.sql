-- delete a table
DROP TABLE people;

-- recreate the `people` table, this time with a primary key `id`
CREATE TABLE people(
	id SERIAL PRIMARY KEY, -- sequential INTs automatically assigned by server when new row inserted
	name VARCHAR(30) NOT NULL,
	has_pet BOOLEAN DEFAULT false,
	pet_type VARCHAR(10) NOT NULL,
	pet_name VARCHAR(30),
	pet_age INT
);


-- repopulat the table
INSERT INTO people (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true, 'dog', 'Misty', 10),
  ('Ahmed', true, 'rock', 'Rockington', 100),
  ('Ahmed', true, 'rock', 'Rockington', 100),
  ('Peter', true, 'cat', 'Franklin', 2),
  ('Dave', true, 'dog', 'Queso', 1),
  ('Dave', true, 'dog', 'Pringles', 7);
  
 -- query the table for all records
 SELECT *
 FROM people;