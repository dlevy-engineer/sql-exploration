-- insert aggregated data into `road_accidents` table
INSERT INTO road_accidents (_id, 
							Year, 
							Road_Crashes, 
							Road_Deaths, 
							Serious_Injury, 
							Slight_Injury)
VALUES (22, 2018, 548598, 6284, 2964, 5377),
	(23, 2019, 567516, 6167, 3022, 5855),
	(24, 2020, 418237, 4634, 2840, 9762),
	(25, 2021, 204653, 2598, 1630, 5575);


-- visualize `road_accidents` to verify
SELECT *
FROM road_accidents;