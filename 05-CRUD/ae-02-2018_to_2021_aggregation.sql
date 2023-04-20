-- sum of `road_crashes`, `road_deaths`, `serious_injury`, and `slight_injury`
SELECT Year,
	SUM(Road_Crashes) AS road_crashes,
	SUM(Road_Deaths) AS road_deaths,
	SUM(Serious_Injury) AS serious_injury,
	SUM(Slight_Injury) AS slight_injury
FROM accidents_by_state
WHERE Year > 2017
GROUP BY Year
ORDER BY Year;