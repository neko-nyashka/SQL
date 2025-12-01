SELECT pizza_name, price, pi.name as pizzeria_name 
FROM menu m
LEFT JOIN person_order po
ON m.id = po.menu_id
JOIN pizzeria pi
ON m.pizzeria_id = pi.id
WHERE po.menu_id IS NULL
ORDER BY pizza_name, price
