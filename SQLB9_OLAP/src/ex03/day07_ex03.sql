select coalesce(t1.n1, t2.n2) as name,
coalesce(t1.count2, 0) + coalesce(t2.count1, 0) as total_count
from(
	(select p.name as n1,  count(*) as count2
	from person_visits pv
	join pizzeria p
	on pv.pizzeria_id = p.id
	group by p.name) as t1
full join
	(select p.name as n2,  count(*) as count1
	from person_order po
	join menu m
	on po.menu_id = m.id
	join pizzeria p
	on p.id = m.pizzeria_id
	group by p.name) as t2
on t1.n1 = t2.n2
)
order by total_count desc, name asc

