((SELECT order_date AS action_date, foo.name FROM person_order, (SELECT person.name FROM person, person_order WHERE person.id=person_order.person_id) AS foo)
UNION
(SELECT order_date AS action_date, foo.name FROM person_order, (SELECT person.name FROM person, person_order WHERE person.id=person_order.person_id) AS foo))
UNION
((SELECT visit_date AS action_date, foo.name FROM person_visits, (SELECT person.name FROM person, person_visits WHERE person.id=person_visits.person_id) AS foo)
UNION
(SELECT visit_date AS action_date, foo.name FROM person_visits, (SELECT person.name FROM person, person_visits WHERE person.id=person_visits.person_id) AS foo))
ORDER BY action_date ASC, name DESC;