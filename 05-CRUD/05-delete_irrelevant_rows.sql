-- delete `accidents_by_state` rows related to years with data already in the `road_accidents` table
DELETE FROM accidents_by_state
WHERE Year != 2017;

-- visualize the result
SELECT *
FROM accidents_by_state;