comment on table person_discounts is 'a table for storing personal discounts of customers in specific pizzerias';
comment on column person_discounts.id is 'primary key';
comment on column person_discounts.pizzeria_id is 'foreign key on the pizzeria id';
comment on column person_discounts.person_id is 'foreign key on the person id';
comment on column person_discounts.discount is 'personal discount';