-- SESSION ONE
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT SUM(rating) FROM pizzeria; -- 21.9
                                  -- SESSION TWO UPDATE AND COMMIT
SELECT SUM(rating) FROM pizzeria; -- 19.9
COMMIT;
SELECT SUM(rating) FROM pizzeria; -- 19.9

-- SESSION TWO
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
UPDATE pizzeria SET rating = 1.0 WHERE name = 'Pizza Hut';
COMMIT;
                                  -- SESSION ONE COMMIT
SELECT SUM(rating) FROM pizzeria; -- 19.9