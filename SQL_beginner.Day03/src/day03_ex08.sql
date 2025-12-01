INSERT INTO menu (id, pizzeria_id, pizza_name, price)
SELECT MAX(menu.id) + 1, 
		(SELECT pi.id FROM  pizzeria pi WHERE pi.name = 'Dominos'),
		'sicilian pizza', 900 FROM menu