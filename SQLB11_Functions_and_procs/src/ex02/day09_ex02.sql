create function fnc_trg_person_delete_audit() returns trigger AS $trg_person_delete_audit$
	begin
		insert into person_audit values (current_timestamp, 'D', old.id, old.name, old.age, old.gender, old.address);
		return null;
	end;
	
$trg_person_delete_audit$ language plpgsql;
create trigger trg_person_delete_audit after delete on person
    for each row execute function fnc_trg_person_delete_audit();


DELETE FROM person WHERE id = 10;
