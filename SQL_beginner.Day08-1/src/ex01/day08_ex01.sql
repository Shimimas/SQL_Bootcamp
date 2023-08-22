-- SESSION ONE
BEGIN;
select * from pizzeria where name  = 'Pizza Hut';           -- 5
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
COMMIT;                                                     -- SESSION TWO UNHANGS
select * from pizzeria where name  = 'Pizza Hut';           -- 3.6

-- SESSION TWO
BEGIN;
select * from pizzeria where name  = 'Pizza Hut';           -- 5
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';  -- HANGS
COMMIT;
select * from pizzeria where name  = 'Pizza Hut';           -- 3.6