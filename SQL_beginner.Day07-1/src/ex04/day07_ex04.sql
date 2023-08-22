SELECT person.name AS person_name, count(pv.visit_date) AS count_of_visits
FROM person
JOIN person_visits pv on person.id = pv.person_id
GROUP BY person_id, person.name
HAVING count(pv.visit_date) >= 4
ORDER BY count_of_visits DESC, person.name