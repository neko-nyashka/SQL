drop function cur_in_usd;
create or replace function cur_in_usd(money numeric, currency_id numeric,  b_updated timestamp) returns  numeric as $$
	declare
	    t1 interval;
	    t2 interval;
		results numeric;
	begin
		t1:= 0;
		t2:= 0;

		select (b_updated - c.updated) into t1 from currency c 
		where currency_id = c.id and b_updated >= c.updated
		order by (b_updated - c.updated) limit 1;
		
		select (c.updated - b_updated) into t2 from currency c  
		where currency_id = c.id and b_updated < c.updated
		order by (c.updated - b_updated) limit 1;
		
		if  t1 is not null then
			select c.rate_to_usd into results from currency c
			where c.id = currency_id and (b_updated - c.updated) = t1 
			limit 1;
		else
			select c.rate_to_usd into results from currency c
			where c.id = currency_id and (c.updated - b_updated) = t2 
			limit 1;
		end if;
		return (results * money);
	
		
	end;
	$$
	
language 'plpgsql';

select 
	coalesce(u.name, 'not defined') as name,
	coalesce(u.lastname, 'not defined') as lastname,
	c.name as currency_name,
	cur_in_usd( b.money, b.currency_id, b.updated) as currency_in_usd 
	from balance b 
	left join public.user u on u.id = b.user_id  
	join (select distinct id, name from currency) c on c.id = b.currency_id
order by name desc, lastname asc, currency_name asc
