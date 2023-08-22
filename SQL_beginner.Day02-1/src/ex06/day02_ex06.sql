WITH TABLE_PIZZAS (menu_id)
AS
(
    SELECT menu_id FROM person_order INNER JOIN person ON person.id=person_order.person_id AND (person.name='Denis' OR person.name='Anna')
),
TABLE_PIZZAS_2 (pizzeria_id, pizza_name)
AS
(
    SELECT pizzeria_id, pizza_name FROM menu INNER JOIN TABLE_PIZZAS ON TABLE_PIZZAS.menu_id=menu.id
),
RESULT (pizza_name, pizzeria_name)
AS
(
    SELECT pizza_name, name AS pizzeria_name FROM TABLE_PIZZAS_2 INNER JOIN pizzeria ON TABLE_PIZZAS_2.pizzeria_id=pizzeria.id
)
SELECT * FROM RESULT ORDER BY pizza_name, pizzeria_name;