-- update the `road_accidents` table with the newly acquired data
UPDATE Road_Accidents
SET Road_Crashes = 533875,
	Serious_Injury = 3310,
	Slight_Injury = 6539
WHERE Year = 2017;

-- visualize the `road_accidents` table to verify
SELECT *
FROM road_accidents;