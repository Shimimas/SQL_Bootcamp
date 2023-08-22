-- SESSION ONE
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from pizzeria where name  = 'Pizza Hut';           -- 3.6
SHOW TRANSACTION ISOLATION LEVEL;                           -- repeatable read
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
COMMIT;                                                     -- SESSION TWO UNHANGS AND OUTPUTS "ERROR:  could not serialize access due to concurrent update"
select * from pizzeria where name  = 'Pizza Hut';           -- 4

-- SESSION TWO
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
select * from pizzeria where name  = 'Pizza Hut';           -- 3.6
SHOW TRANSACTION ISOLATION LEVEL;                           -- repeatable read
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';  -- HANGS
COMMIT;                                                     -- ROLLBACK
select * from pizzeria where name  = 'Pizza Hut';           -- 4
