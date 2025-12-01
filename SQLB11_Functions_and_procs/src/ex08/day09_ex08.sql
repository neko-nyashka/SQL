create or replace function fnc_fibonacci(pstop integer default 10) returns table(fibonacci integer) as $$
	declare 
		x int := 0;
		y int := 1;	
		temp int;

	begin
		while y <= pstop loop
			fibonacci := y;
			return next;
			temp := x + y;
			x := y;
			y := temp;
			
		end loop;
	end;
	$$
	
language 'plpgsql';
select * from fnc_fibonacci();



