-- find relevant sums from 2017
SELECT SUM(Road_Crashes) AS Road_Crashes,
	SUM(Serious_Injury) AS Serious_Injury,
	SUM(Slight_Injury) AS Slight_Injury,
	SUM(Road_Deaths) AS Road_Deaths
FROM accidents_by_state;