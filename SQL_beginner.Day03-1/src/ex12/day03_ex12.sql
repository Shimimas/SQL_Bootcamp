INSERT INTO person_order
SELECT f AS id, f - 22 AS person_id, (SELECT id FROM menu WHERE pizza_name='greek pizza') AS menu_id, '2022-02-25' AS date 
FROM generate_series((SELECT MAX(id) + 1 FROM person_order), (SELECT MAX(id) FROM person_order) + (SELECT MAX(id) FROM person), 1) AS f;