-- construct a basic information table with aliasing
SELECT bb.band,
	bb.event_date,
	bb.species_name,
	a.age_description,
	s.sex_description
FROM bird_bands AS bb
	INNER JOIN age AS a ON bb.age_code = a.age_code
	INNER JOIN sex AS s ON bb.sex_code = s.sex_code;