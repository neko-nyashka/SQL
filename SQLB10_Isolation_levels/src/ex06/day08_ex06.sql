--SESSION 1
--1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--3
select sum(rating) from pizzeria;
--6
select sum(rating) from pizzeria;
--7
COMMIT;
--8
select sum(rating) from pizzeria;

--SESSION 2
--2
BEGIN TRANSACTION ISOLATION LEVEL  REPEATABLE READ;
--4
INSERT INTO pizzeria (id, name, rating) VALUES (11, 'Kazan Pizza 2', 4);
--5
COMMIT;
--9
select sum(rating) from pizzeria;