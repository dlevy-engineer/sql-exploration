-- identify the `road_accidents` road with a `road_crashes` value of 0
SELECT Year, Road_Deaths, Road_Crashes, Serious_Injury 
FROM road_accidents
WHERE road_crashes = 0;