INSERT INTO person_discounts (id, person_id, pizzeria_id, discount)
SELECT ROW_NUMBER() OVER (order by person_id, pizzeria_id ) AS id , person_id, pizzeria_id,
case when count (person_id) = 1 then 10.5
	when count (person_id) = 2 then 22
	else 30
end as discount
from person_order po
join menu m on m.id = po.menu_id
group by (person_id, pizzeria_id)
