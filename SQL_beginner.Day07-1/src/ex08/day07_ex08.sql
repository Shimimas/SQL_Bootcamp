WITH pizzeria_visits AS (
SELECT per.address, p.name, count(person_visits) AS count_of_orders
FROM person_visits
JOIN person per ON person_id = per.id
JOIN pizzeria p on p.id = person_visits.pizzeria_id
GROUP BY per.address, p.name
ORDER BY per.address, p.name)
SELECT *
FROM pizzeria_visits