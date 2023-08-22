-- SESSION ONE
BEGIN;
UPDATE pizzeria SET rating = 4 WHERE id = 1;
UPDATE pizzeria SET rating = 4 WHERE id = 2;
        -- HANGS
        -- UNHANGS WHEN SESSION TWO OUTPUTS ERROR
COMMIT;

        -- SESSION TWO
BEGIN;
UPDATE pizzeria SET rating = 2 WHERE id = 2;
UPDATE pizzeria SET rating = 2 WHERE id = 1;
        -- HANGS BRIEFLY THEN OUTPUTS
        -- ERROR:  deadlock detected
        -- DETAIL:  Process 26265 waits for ShareLock on transaction 1368; blocked by process 30030.
        -- Process 30030 waits for ShareLock on transaction 1369; blocked by process 26265.
        -- HINT:  See server log for query details.
        -- CONTEXT:  while updating tuple (0,17) in relation "pizzeria"
COMMIT; -- ROLLBACK
