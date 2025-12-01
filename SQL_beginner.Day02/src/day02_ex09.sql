SELECT DISTINCT p.name
FROM person p
JOIN person_order po
ON p.id = po.person_id
JOIN menu m
ON m.id = po.menu_id
WHERE p.gender = 'female' AND m.pizza_name IN ('pepperoni pizza', 'cheese pizza')
GROUP BY p.name, p.id
HAVING COUNT(DISTINCT m.pizza_name) = 2
ORDER BY p.name;

SELECT DISTINCT p.name
FROM person p
JOIN person_order po
ON p.id = po.person_id
JOIN menu m
ON m.id = po.menu_id AND m.pizza_name = 'pepperoni pizza'
INTERSECT
SELECT DISTINCT p.name
FROM person p
JOIN person_order po
ON p.id = po.person_id
JOIN menu m
ON m.id = po.menu_id AND m.pizza_name = 'cheese pizza'
WHERE p.gender = 'female'
ORDER BY name;