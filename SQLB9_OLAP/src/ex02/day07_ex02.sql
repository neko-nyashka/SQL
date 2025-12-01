(
select p.name,  count(*) as count, 'visit' as action_type
from person_visits pv
join pizzeria p
on pv.pizzeria_id = p.id
group by p.name
order by count desc
limit 3
)
union 
(
select p.name,  count(*) as count, 'order' as action_type
from person_order po
join menu m
on po.menu_id = m.id
join pizzeria p
on p.id = m.pizzeria_id
group by p.name
order by count desc
limit 3
)
order by action_type asc, count desc
