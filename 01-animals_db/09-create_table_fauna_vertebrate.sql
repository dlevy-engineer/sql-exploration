-- drop the `fauna_vertebrate` table if it exists
DROP TABLE IF EXISTS fauna_vertebrate;

-- create the `fauna_vertebrate` table
CREATE TABLE fauna_vertebrate (
	longitude DEC,
	latitude DEC,
	OBJECTID INT,
	suburb VARCHAR,
	property_name VARCHAR,
	GI_class VARCHAR,
	GI_type VARCHAR,
	group_ VARCHAR,
	family VARCHAR,
	family_common_name VARCHAR,
	scientific_name VARCHAR,
	genus VARCHAR,
	species VARCHAR,
	common_name VARCHAR,
	fauna_status VARCHAR
);

-- visualize table columns and data types
SELECT *
FROM fauna_vertebrate