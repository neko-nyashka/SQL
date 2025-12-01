set enable_seqscan = off; 
create unique index idx_person_discounts_unique on person_discounts(person_id, pizzeria_id);
explain analyze select * from person_discounts d
where person_id = 1 and pizzeria_id = 2