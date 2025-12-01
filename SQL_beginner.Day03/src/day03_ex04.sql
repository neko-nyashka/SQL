SELECT pi.name
FROM pizzeria pi
JOIN menu m
ON m.pizzeria_id = pi.id
JOIN person_order po
ON po.menu_id = m.id
JOIN person p
ON po.person_id = p.id
GROUP BY pi.name
HAVING (COUNT(*) FILTER (WHERE p.gender = 'female') = 0) OR (COUNT(*) FILTER (WHERE p.gender = 'male') = 0)
ORDER BY pi.name