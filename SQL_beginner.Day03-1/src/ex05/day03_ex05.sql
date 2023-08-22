WITH ANDREY_INVITE(pizzeria_name)
AS
(
    SELECT pz.name AS pizzeria_name
    FROM person p JOIN person_visits pv 
    ON p.id=pv.person_id AND p.name='Andrey'
    JOIN pizzeria pz ON pz.id=pv.pizzeria_id
),
ANDREY_ORDERS(pizzeria_name)
AS
(
    SELECT pz.name pizzeria_name
    FROM person p JOIN person_order po
    ON p.id=po.person_id AND p.name='Andrey'
    JOIN menu m ON m.id=po.menu_id
    JOIN pizzeria pz ON pz.id=m.pizzeria_id
)
SELECT * FROM ANDREY_INVITE EXCEPT SELECT * FROM ANDREY_ORDERS
ORDER BY 1;