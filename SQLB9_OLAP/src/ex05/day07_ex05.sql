select distinct p.name
from person_order po
join person p
on po.person_id = p.id
order by name