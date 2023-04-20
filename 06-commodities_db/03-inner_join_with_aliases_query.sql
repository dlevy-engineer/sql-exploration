-- perform an inner join on the `names` and `commodity` tables
-- select name from `names` and commod, commod_tp, commod_group from `commodity`
SELECT n.name, c.commod, c.commod_tp, c.commod_group
FROM names AS n
INNER JOIN commodity AS c ON
	n.dep_id = c.dep_id;