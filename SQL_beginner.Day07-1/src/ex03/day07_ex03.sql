WITH pizzeria_visits AS (
SELECT name, count(person_visits) AS count, 'visit' AS action_type
FROM person_visits
JOIN pizzeria p on p.id = person_visits.pizzeria_id
GROUP BY name
ORDER BY count DESC)
, pizzeria_orders AS (
SELECT name, count(person_order) AS count, 'order' AS action_type
FROM person_order
JOIN menu m on m.id = person_order.menu_id
JOIN pizzeria p2 on m.pizzeria_id = p2.id
GROUP BY name
ORDER BY count DESC)
SELECT po.name, po.count + pizzeria_visits.count AS total_count
FROM pizzeria_visits
JOIN pizzeria_orders po ON pizzeria_visits.name = po.name
ORDER BY total_count DESC, name