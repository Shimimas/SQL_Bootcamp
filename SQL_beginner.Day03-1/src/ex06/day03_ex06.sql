SELECT m1.pizza_name, pz.name AS pizzeria_name_1, pz1.name AS pizzeria_name_2, m1.price
FROM menu AS m1 JOIN menu AS m2 ON m1.price=m2.price AND m1.pizza_name=m2.pizza_name AND m1.id > m2.id 
JOIN pizzeria pz ON m1.pizzeria_id=pz.id
JOIN pizzeria pz1 ON m2.pizzeria_id=pz1.id
ORDER BY 1;