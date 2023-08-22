SELECT COALESCE(person_name, '-'), visit_date, COALESCE(name, '-') AS pizzeria_name
FROM (
    SELECT name AS person_name, pizzeria_id, visit_date FROM person 
    FULL JOIN 
    (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS person_visits 
    ON person.id = person_visits.person_id) AS foo
FULL JOIN 
pizzeria ON foo.pizzeria_id=pizzeria.id ORDER BY person_name, visit_date, pizzeria_name;