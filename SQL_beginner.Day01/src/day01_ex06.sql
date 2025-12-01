SELECT action_date, person.name 
FROM(
	SELECT order_date AS action_date,
	person_id
	FROM person_order
	INTERSECT 
	SELECT visit_date  AS action_date, person_id 
	FROM person_visits) AS foo

INNER JOIN person 
ON person.id = foo.person_id 
ORDER BY action_date ASC, person.name DESC

