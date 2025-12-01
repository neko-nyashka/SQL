set enable_seqscan =off;
CREATE UNIQUE INDEX idx_person_order_order_date ON person_order(person_id, menu_id)
WHERE order_date = '2022-01-01';
EXPLAIN ANALYZE 
SELECT person_id, menu_id
FROM person_order
WHERE menu_id = 2 AND person_id = 1  AND order_date = '2022-01-01';