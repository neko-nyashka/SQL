INSERT INTO person_order (id, person_id, menu_id, order_date)
SELECT
(SELECT MAX(po.id) FROM person_order po) + n as id, id as person_id,
(SELECT m.id FROM  menu m WHERE m.pizza_name = 'greek pizza') as menu_id,
'2022-02-25' as order_date
FROM person
INNER JOIN generate_series(1,(SELECT COUNT(*) FROM person)) as n
ON n = person.id