SELECT DISTINCT name
FROM person
JOIN person_order po on person.id = po.person_id
WHERE person_id IS NOT NULL
ORDER BY name