SELECT person_order.order_date, (p.name || ' (age:'|| p.age||')') as person_information
FROM person_order
NATURAL JOIN (SELECT id AS person_id,name,age FROM person) as p
ORDER BY order_date, person_information