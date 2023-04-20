-- perform an inner join on the `names` and `commodity` tables
-- select name from `names` and commod, commod_tp, commod_group from `commodity`
SELECT names.name, commodity.commod, commodity.commod_tp, commodity.commod_group
FROM names
INNER JOIN commodity ON
	names.dep_id = commodity.dep_id;