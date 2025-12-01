--SESSION 1
--1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
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
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
--4
INSERT INTO pizzeria (id, name, rating) VALUES (10, 'Kazan Pizza', 5);
--5
COMMIT;
--9
select sum(rating) from pizzeria;