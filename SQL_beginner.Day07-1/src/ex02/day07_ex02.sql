WITH SEL(name, count, action_type)
AS
(
    SELECT pz.name, count(pz.name), 'visit' AS action_type 
    FROM person_visits pv
    JOIN pizzeria pz ON pz.id = pizzeria_id GROUP BY pz.name
    UNION ALL
    SELECT pz.name, count(pz.name), 'order' AS action_type
    FROM menu m JOIN person_order po ON m.id = po.menu_id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id GROUP BY pz.name
),
SEC(name, count)
AS
(
    SELECT name, sum(count) FROM SEL GROUP BY name ORDER BY 2 DESC LIMIT 3
)
SELECT f.name, f.count, f.action_type 
FROM SEC s JOIN SEL f ON s.name = f.name
ORDER BY 3, 2 DESC;