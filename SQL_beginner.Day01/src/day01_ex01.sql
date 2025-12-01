SELECT object_name FROM(
	SELECT pizza_name AS object_name, 2 AS sort
	FROM menu
	UNION ALL
	SELECT name AS object_name, 1 AS sort
	FROM person) AS data_
ORDER BY data_.sort, data_.object_name