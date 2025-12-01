create or replace function fnc_person_visits_and_eats_on_date(pperson varchar default 'Dmitriy', pprice numeric default 500, pdate date default '2022-01-08') returns table(name varchar) as $$
	begin
	return query
		select distinct pi.name
		from pizzeria pi
		join person_visits pv on pi.id = pv.pizzeria_id
		join person p on p.id = pv.person_id
		join menu m on m.pizzeria_id = pi.id
		where m.price < pprice and pv.visit_date = pdate and p.name = pperson;
	end;
	$$
	
language 'plpgsql';


select *  
from fnc_person_visits_and_eats_on_date(pprice := 800);
select *  
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');