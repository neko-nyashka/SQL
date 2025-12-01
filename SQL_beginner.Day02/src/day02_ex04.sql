SELECT pizza_name, pizzeria_name, price
FROM menu
INNER JOIN (SELECT name as pizzeria_name,id FROM pizzeria) as p
ON menu.pizzeria_id = p.id
WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, pizzeria_name
