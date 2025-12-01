SELECT DISTINCT pizza_name, pi.name AS pizzeria_name 
FROM menu m
JOIN person_order po
ON m.id = po.menu_id
JOIN person p
ON p.id = po.person_id AND ( p.name = 'Denis' OR p.name = 'Anna' )
JOIN pizzeria pi
ON m.pizzeria_id = pi.id
ORDER BY m.pizza_name, pi.name

