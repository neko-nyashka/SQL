SELECT DISTINCT pi.name AS pizzeria_name
FROM pizzeria pi
JOIN person_visits pv
ON pv.pizzeria_id = pi.id
JOIN person p
ON p.id = pv.person_id
LEFT JOIN person_order po ON po.person_id = p.id 
    AND po.order_date = pv.visit_date
LEFT JOIN menu m ON po.menu_id = m.id 
    AND m.pizzeria_id = pv.pizzeria_id
WHERE p.name = 'Andrey'
GROUP BY pi.name
HAVING COUNT(po.id) = 0
ORDER BY pi.name