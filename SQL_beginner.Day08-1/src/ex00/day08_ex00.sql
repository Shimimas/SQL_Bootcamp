-- SESSION ONE
BEGIN;                                                    -- START OF THE SESSION
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';  -- ISOLATED UPDATE
select * from pizzeria where name  = 'Pizza Hut';         -- ISOLATED SELECT 5
COMMIT;                                                   -- COMMIT CHANGES

-- SESSION TWO
select * from pizzeria where name  = 'Pizza Hut';         -- 4.6
-- SESSION ONE COMMIT
select * from pizzeria where name  = 'Pizza Hut';         -- 5