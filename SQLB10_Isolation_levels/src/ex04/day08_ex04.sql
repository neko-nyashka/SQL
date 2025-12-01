--SESSION 1
--1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--3
select * from pizzeria where name  = 'Pizza Hut';
--6
select * from pizzeria where name  = 'Pizza Hut';
--7
COMMIT;
--8
select * from pizzeria where name  = 'Pizza Hut';

--SESSION 2
--2
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--4
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
--5
COMMIT;
--9
select * from pizzeria where name  = 'Pizza Hut';