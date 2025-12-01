--SESSION 1
--1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--3
select * from pizzeria where name  = 'Pizza Hut';
--5
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
--7
COMMIT;
--9
select * from pizzeria where name  = 'Pizza Hut';


--SESSION 2
--2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--4
select * from pizzeria where name  = 'Pizza Hut';
--6
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
--8
COMMIT;
--10
select * from pizzeria where name  = 'Pizza Hut';