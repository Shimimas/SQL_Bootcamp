SELECT pizza_name, price, name AS pizzeria_name FROM (SELECT id FROM menu
EXCEPT
SELECT menu_id FROM person_order) AS s
JOIN menu m ON m.id=s.id
JOIN pizzeria pz ON pz.id=m.pizzeria_id
ORDER BY 1,2;