set enable_seqscan =off;

EXPLAIN ANALYZE 
SELECT m.pizza_name, pi.name AS pizzeria_name
FROM menu m
JOIN pizzeria pi ON m.pizzeria_id = pi.id;
