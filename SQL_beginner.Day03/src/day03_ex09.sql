INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES (
(SELECT MAX(pv.id) FROM person_visits pv) + 1,
(SELECT p.id FROM  person p WHERE p.name = 'Denis'),
(SELECT pi.id FROM  pizzeria pi WHERE pi.name = 'Dominos'),
'2022-02-24'
);
INSERT INTO person_visits (id, person_id, pizzeria_id, visit_date)
VALUES(
(SELECT MAX(pv.id) FROM person_visits pv) + 1,
(SELECT p.id FROM  person p WHERE p.name = 'Irina'),
(SELECT pi.id FROM  pizzeria pi WHERE pi.name = 'Dominos'),
'2022-02-24'
);