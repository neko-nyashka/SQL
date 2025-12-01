select p.name, m.pizza_name, m.price, round((1 - d.discount / 100) * m.price) as discount_price, pi.name as pizzeria_name
from pizzeria pi
join menu m
on m.pizzeria_id = pi.id
join person_discounts d
on d.pizzeria_id = pi.id
join person p
on p.id = d.person_id
order by p.name, m.pizza_name