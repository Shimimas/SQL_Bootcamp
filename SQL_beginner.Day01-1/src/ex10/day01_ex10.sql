SELECT
	p.name as person_name,
	m.pizza_name,
	z.name as pizzeria_name
FROM person_order po
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria z ON z.id = m.pizzeria_id
JOIN person p ON p.id = po.person_id
ORDER BY person_name, pizza_name, pizzeria_name;