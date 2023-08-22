SELECT name, rating FROM (SELECT * FROM pizzeria LEFT JOIN person_visits
ON pizzeria.id=person_visits.pizzeria_id) as foo WHERE foo.pizzeria_id IS NULL;

SELECT p.name AS pizzeria_name, rating
FROM pizzeria p LEFT JOIN person_visits pv
ON p.id=pv.pizzeria_id
WHERE pv.id IS NULL;