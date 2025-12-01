--SESSION 1
BEGIN;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
select * from pizzeria where name  = 'Pizza Hut';
COMMIT;

--SESSION 2
BEGIN;
select * from pizzeria where name  = 'Pizza Hut';
-- before COMMIT output: 4.2
select * from pizzeria where name  = 'Pizza Hut';
-- after COMMIT output: 5