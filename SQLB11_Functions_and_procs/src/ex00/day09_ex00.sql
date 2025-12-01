
create table person_audit
( 
	created timestamp with time zone not null default current_timestamp,
	type_event char(1) not null default 'I',
	row_id bigint not null,
	name varchar,
	age integer,
	gender varchar,
	address varchar
);

alter table person_audit add constraint ch_type_event check ( type_event in ('D','I', 'U') );

create or replace function fnc_trg_person_insert_audit() returns trigger AS $trg_person_insert_audit$
	begin
		insert into person_audit values (current_timestamp, 'I', new.id, new.name, new.age, new.gender, new.address);
		return null;
	end;
	
$trg_person_insert_audit$ language plpgsql;
create or replace trigger trg_person_insert_audit after insert on person
    for each row execute function fnc_trg_person_insert_audit();
	
INSERT INTO person(id, name, age, gender, address) VALUES (10,'Damir', 22, 'male', 'Irkutsk');
select * from person_audit;