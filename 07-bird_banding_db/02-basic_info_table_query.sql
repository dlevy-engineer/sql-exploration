-- construct a basic information table
SELECT bird_bands.band, 
	bird_bands.event_date, 
	bird_bands.species_name,
	age.age_description,
	sex.sex_description
FROM bird_bands
	INNER JOIN age ON bird_bands.age_code = age.age_code
	INNER JOIN sex ON bird_bands.sex_code = sex.sex_code;