SELECT DISTINCT m1.pizza_name, 
pi1.name AS pizzeria_name_1, pi2.name AS pizzeria_name_2, m1.price 
FROM menu m1
INNER JOIN menu m2
ON m2.price = m1.price AND m1.pizza_name = m2.pizza_name
INNER JOIN pizzeria pi1
ON m1.pizzeria_id = pi1.id
INNER JOIN pizzeria pi2
ON m2.pizzeria_id = pi2.id AND pi1.id > pi2.id 
ORDER BY pizza_name
