--SESSION 1
--1
BEGIN;
--3
UPDATE pizzeria SET rating = 1 WHERE id = 1;
--5
UPDATE pizzeria SET rating = 3 WHERE id = 2;
--7
COMMIT;


--SESSION 2
--2
BEGIN;
--4
UPDATE pizzeria SET rating = 2 WHERE id = 2;
--6
UPDATE pizzeria SET rating = 4 WHERE id = 1;
--deadlock detected
--8
COMMIT;