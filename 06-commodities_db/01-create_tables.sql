-- drop tables if they exist
DROP TABLE IF EXISTS names;
DROP TABLE IF EXISTS commodity;

-- create tables
CREATE TABLE names (
	i INT PRIMARY KEY,
	dep_id INT,
	line INT,
	name VARCHAR,
	status VARCHAR,
	inserted_by VARCHAR,
	insert_date DATE,
	updated_by VARCHAR,
	update_date DATE
);

CREATE TABLE commodity (
	i INT PRIMARY KEY,
	dep_id INT,
	line INT,
	commod VARCHAR,
	code VARCHAR,
	commod_tp VARCHAR,
	commod_group VARCHAR,
	import VARCHAR,
	inserted_by VARCHAR,
	insert_date DATE,
	updated_by VARCHAR,
	update_date DATE
);

-- import data