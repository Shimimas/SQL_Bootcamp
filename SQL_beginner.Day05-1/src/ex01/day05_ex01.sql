EXPLAIN ANALYZE
SELECT m.pizza_name, pz.name
FROM pizzeria pz JOIN menu m
ON m.pizzeria_id = pz.id;