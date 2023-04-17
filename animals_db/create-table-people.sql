-- the code below creates a new table called 'people'
CREATE TABLE people (
	-- note that this will be stored as a length prefix plus data
	name VARCHAR(30) NOT NULL,
	has_pet BOOLEAN DEFAULT false,
	-- the need to truncate insertion of values that exceed the specified size would throw an error
	pet_type VARCHAR(10) NOT NULL,
	pet_name VARCHAR(30) NOT NULL,
	pet_age INT 
);