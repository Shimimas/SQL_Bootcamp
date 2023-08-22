SELECT z.name
FROM pizzeria z
WHERE z.id NOT IN (SELECT DISTINCT pizzeria_id FROM person_visits);

SELECT z.name
FROM pizzeria z
WHERE NOT EXISTS (
	SELECT DISTINCT pv.pizzeria_id
	FROM person_visits pv
	WHERE pv.pizzeria_id = z.id
);