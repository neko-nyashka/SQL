INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES (
(SELECT MAX(pv.id) FROM person_visits pv) + 1,
(SELECT p.id FROM  person p WHERE p.name = 'Dmitriy'),
(SELECT pizzeria_id FROM menu 
INNER JOIN pizzeria pi ON pi.id = menu.pizzeria_id 
WHERE menu.price < 800 AND pi.name != 'Papa Johns' LIMIT 1),
'2022-01-08'
);


REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;
SELECT * FROM mv_dmitriy_visits_and_eats;
