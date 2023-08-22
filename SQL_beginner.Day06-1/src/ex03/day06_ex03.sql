CREATE UNIQUE INDEX IF NOT EXISTS idx_person_discounts_unique ON person_discounts(person_id, pizzeria_id);

SET LOCAL enable_seqscan = off;

EXPLAIN ANALYZE
	SELECT *
	FROM person_discounts as pd
	JOIN person as p ON p.id = pd.person_id
	JOIN pizzeria as z ON z.id = pd.pizzeria_id
	WHERE p.name = 'Peter' and z.name = 'Pizza Hut';
