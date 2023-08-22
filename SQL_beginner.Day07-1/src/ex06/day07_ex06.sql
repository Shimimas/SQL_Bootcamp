WITH pizzeria_orders AS (SELECT name,
                                count(person_order) AS count_of_orders,
                                'order'             AS action_type,
                                ROUND(AVG(price), 2)::numeric AS average_price,
                                MAX(price)          AS max_price,
                                MIN(price)          AS min_price
                         FROM person_order
                                  JOIN menu m on m.id = person_order.menu_id
                                  JOIN pizzeria p2 on m.pizzeria_id = p2.id
                         GROUP BY name
                         ORDER BY count_of_orders DESC)
SELECT *
FROM pizzeria_orders
ORDER BY name