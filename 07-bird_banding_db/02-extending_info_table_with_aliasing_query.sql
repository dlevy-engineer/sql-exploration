-- construct an extended information table where sex is not known with aliasing
SELECT bb.band,
	bb.event_date,
	bb.species_name,
	bt.band_type_description,
	bs.bird_status_description,
	a.age_description,
	s.sex_description
FROM bird_bands AS bb
	INNER JOIN band_type AS bt ON bb.band_type_code = bt.band_type_code
	INNER JOIN bird_status AS bs ON bb.bird_status = bs.bird_status
	INNER JOIN age AS a ON bb.age_code = a.age_code
	INNER JOIN sex AS s ON bb.sex_code = s.sex_code
WHERE sex_description != 'Unknown';