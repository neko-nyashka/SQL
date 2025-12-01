SELECT person.name, pizza_name, pizzeria.name
FROM person
INNER JOIN person_order
ON person.id = person_order.person_id
INNER JOIN menu
ON menu.id = person_order.menu_id
INNER JOIN pizzeria
ON menu.pizzeria_id = pizzeria.id
ORDER BY person.name, pizza_name, pizzeria.name