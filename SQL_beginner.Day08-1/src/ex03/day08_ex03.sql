-- SESSION ONE
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
SHOW TRANSACTION ISOLATION LEVEL; -- read committed
select * from pizzeria where name  = 'Pizza Hut'; -- 4
                                                  -- SESSION TWO UPDATE AND COMMIT
select * from pizzeria where name  = 'Pizza Hut'; -- 3.6
COMMIT;
select * from pizzeria where name  = 'Pizza Hut'; -- 3.6

-- SESSION TWO
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
SHOW TRANSACTION ISOLATION LEVEL; -- read committed
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
COMMIT;
select * from pizzeria where name  = 'Pizza Hut'; -- 3.6