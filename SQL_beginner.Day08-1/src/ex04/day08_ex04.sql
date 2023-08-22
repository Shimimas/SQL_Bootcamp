-- SESSION ONE
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
select * from pizzeria where name  = 'Pizza Hut'; -- 3.6
                                                  -- SESSION TWO UPDATE AND COMMIT
select * from pizzeria where name  = 'Pizza Hut'; -- 3.6
COMMIT;
select * from pizzeria where name  = 'Pizza Hut'; -- 3.0

-- SESSION TWO
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
COMMIT;
select * from pizzeria where name  = 'Pizza Hut'; -- 3.0