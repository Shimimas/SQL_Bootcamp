-- SESSION ONE
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SELECT SUM(rating) FROM pizzeria; -- 19.9
                                  -- SESSION TWO UPDATE AND COMMIT
SELECT SUM(rating) FROM pizzeria; -- 19.9
COMMIT;
SELECT SUM(rating) FROM pizzeria; -- 23.9

-- SESSION TWO
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
UPDATE pizzeria SET rating = 5.0 WHERE name = 'Pizza Hut';
COMMIT;
                                  -- SESSION ONE COMMIT
SELECT SUM(rating) FROM pizzeria; -- 23.9