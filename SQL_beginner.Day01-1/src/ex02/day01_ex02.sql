(SELECT pizza_name FROM menu UNION SELECT pizza_name FROM menu) UNION ALL (SELECT menu.pizza_name FROM person_order, menu WHERE person_order.menu_id=menu.id ORDER BY pizza_name DESC);
