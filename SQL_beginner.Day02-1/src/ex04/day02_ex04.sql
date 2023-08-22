WITH TABLE_PIZZAS (pizzeria_id, pizza_name, price)
AS
(
    SELECT pizzeria_id, pizza_name, price FROM menu WHERE pizza_name='mushroom pizza' OR pizza_name='pepperoni pizza'
)
SELECT pizza_name, name AS pizzeria_name, price FROM TABLE_PIZZAS INNER JOIN pizzeria ON TABLE_PIZZAS.pizzeria_id=pizzeria.id
ORDER BY pizza_name, pizzeria_name;