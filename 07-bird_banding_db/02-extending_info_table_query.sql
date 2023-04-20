-- construct an extended information table where sex is not known
SELECT bird_bands.band,
	bird_bands.event_date,
	bird_bands.species_name,
	band_type.band_type_description,
	bird_status.bird_status_description,
	age.age_description,
	sex.sex_description
FROM bird_bands
	INNER JOIN band_type ON bird_bands.band_type_code = band_type.band_type_code
	INNER JOIN bird_status ON bird_bands.bird_status = bird_status.bird_status
	INNER JOIN age ON bird_bands.age_code = age.age_code
	INNER JOIN sex ON bird_bands.sex_code = sex.sex_code
WHERE sex_description != 'Unknown';