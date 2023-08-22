SELECT pizza_name, price, pz.name, visit_date FROM person p JOIN person_visits pv
ON p.id=pv.person_id AND p.name='Kate'
JOIN menu m ON pv.pizzeria_id=m.pizzeria_id AND m.price BETWEEN 800 AND 1000
JOIN pizzeria pz ON pz.id=pv.pizzeria_id
ORDER BY 1,2,3;