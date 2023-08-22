SELECT p.name,
	m.pizza_name,
	m.price,
	(m.price - (pd.discount / 100 * m.price))::int as discount_price,
	z.name as pizzeria_name
FROM person_order as po
JOIN person as p ON p.id = po.person_id
JOIN menu as m ON m.id = po.menu_id
JOIN pizzeria as z ON m.pizzeria_id = z.id
JOIN person_discounts as pd ON p.id = pd.person_id AND pd.pizzeria_id = m.pizzeria_id
ORDER BY p.name, m.pizza_name;