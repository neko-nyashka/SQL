select p.address, pi.name, count(*)
from person_order po
join person p
on p.id = po.person_id
join menu m
on m.id = po.menu_id
join pizzeria pi 
on pi.id = m.pizzeria_id
group by p.address, pi.name
order by p.address, pi.name