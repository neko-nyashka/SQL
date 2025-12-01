create function fnc_trg_person_update_audit() returns trigger AS $trg_person_update_audit$
	begin
		insert into person_audit values (current_timestamp, 'U', old.id, old.name, old.age, old.gender, old.address);
		return null;
	end;
	
$trg_person_update_audit$ language plpgsql;
create trigger trg_person_update_audit after update on person
    for each row execute function fnc_trg_person_update_audit();
	
UPDATE person SET name = 'Bulat' WHERE id = 10; 
UPDATE person SET name = 'Damir' WHERE id = 10;


