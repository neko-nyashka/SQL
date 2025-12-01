SELECT m.pizza_name, m.price, pi.name AS pizzeria_name, pv.visit_date
	FROM menu m
	JOIN pizzeria pi ON m.pizzeria_id = pi.id
	JOIN person_visits pv ON pi.id = pv.pizzeria_id
	JOIN person p ON p.id = pv.person_id
WHERE p.name = 'Kate' AND m.price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name
